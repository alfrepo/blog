---
title: The Hello world1 article
time: 2023-05-07 20:00:00
description: Authorisation options, when using signed URLs with S3.
tags:
  - aws
  - s3
  - onepager
  - s3_signed_url
---


## Intro

On `AWS S3` the **just knowing** a presigned URLs can authenticate to

- download an existing S3-object
- securely upload new S3-object into a predefined bucket

## Requirements

- The bucket **CAN enable "block all public access"**  and presigned URL still would work.

## Download authorization an existing S3-object, by knowing the presigned URL

To generate a download-link which will immediately work.\
E.g. to return a download-link via a REST-API.

The following **tools** can be used:

- via AWS-CLI
- via AWS-SDK

And one can authorize the download

| enforcement      | Description                          |
| ----------- | ------------------------------------ |
| `limiting the download to one file`       |  enable a user knowing the link to a file on S3, a to download the file. |
| `limiting the download to one file, if conditions are met in policy`  | enforce conditions in policy to be met |

### limiting the download to one file

#### Generating presigned URL via AWS-CLI

``` shell
aws s3 presign s3://poc-presignedurl-alf/folder1/subfolder2/bakabakabu.txt \
    --expires-in 240
```

The output will be:

``` shell
https://DOC-EXAMPLE-BUCKET.s3.us-west-2.amazonaws.com/key?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAEXAMPLE123456789%2F20210621%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20210621T041609Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=EXAMBLE1234494d5fba3fed607f98018e1dfc62e2529ae96d844123456
```

### limiting the download to one file, if conditions are met in policy.

TODO: Here one must use CloudFront?

Generate the S3 URL, which will enforce a policy.

policy

``` json
{
  "Statement": {
    "Resource": "<Optional but recommended: URL of the file>",
    "Condition": {
      "DateLessThan": {
        "AWS:EpochTime": <Required: ending date and time in Unix time format and UTC>
      },
      "DateGreaterThan": {
        "AWS:EpochTime": <Optional: beginning date and time in Unix time format and UTC>
      },
      "IpAddress": {
        "AWS:SourceIp": "<Optional: IP address>"
      }
    }
  }
}
```

generate-code as in [https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CFPrivateDistJavaDevelopment.html](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CFPrivateDistJavaDevelopment.html)

``` java
// Signed URLs for a private distribution
// Note that Java only supports SSL certificates in DER format, 
// so you will need to convert your PEM-formatted file to DER format. 
// To do this, you can use openssl:
// openssl pkcs8 -topk8 -nocrypt -in origin.pem -inform PEM -out new.der 
//    -outform DER 
// So the encoder works correctly, you should also add the bouncy castle jar
// to your project and then add the provider.

Security.addProvider(new org.bouncycastle.jce.provider.BouncyCastleProvider());

String distributionDomain = "a1b2c3d4e5f6g7.cloudfront.net";
String privateKeyFilePath = "/path/to/rsa-private-key.der";
String s3ObjectKey = "s3/object/key.txt";
String policyResourcePath = "https://" + distributionDomain + "/" + s3ObjectKey;

// Convert your DER file into a byte array.

byte[] derPrivateKey = ServiceUtils.readInputStreamToBytes(new
    FileInputStream(privateKeyFilePath));

// Generate a "canned" signed URL to allow access to a 
// specific distribution and file

String signedUrlCanned = CloudFrontService.signUrlCanned(
    "https://" + distributionDomain + "/" + s3ObjectKey, // Resource URL or Path
    keyPairId,     // Certificate identifier, 
                   // an active trusted signer for the distribution
    derPrivateKey, // DER Private key data
    ServiceUtils.parseIso8601Date("2011-11-14T22:20:00.000Z") // DateLessThan
    );
System.out.println(signedUrlCanned);

// Build a policy document to define custom restrictions for a signed URL.

String policy = CloudFrontService.buildPolicyForSignedUrl(
    // Resource path (optional, can include '*' and '?' wildcards)
    policyResourcePath, 
    // DateLessThan
    ServiceUtils.parseIso8601Date("2011-11-14T22:20:00.000Z"), 
    // CIDR IP address restriction (optional, 0.0.0.0/0 means everyone)
    "0.0.0.0/0", 
    // DateGreaterThan (optional)
    ServiceUtils.parseIso8601Date("2011-10-16T06:31:56.000Z")
    );

// Generate a signed URL using a custom policy document.

String signedUrl = CloudFrontService.signUrl(
    // Resource URL or Path
    "https://" + distributionDomain + "/" + s3ObjectKey, 
    // Certificate identifier, an active trusted signer for the distribution
    keyPairId,     
    // DER Private key data
    derPrivateKey, 
    // Access control policy
    policy 
    );
System.out.println(signedUrl);
```

### Links download authorization

- [AWS CLI presign command](https://docs.aws.amazon.com/cli/latest/reference/s3/presign.html)
- [Sharing objects using presigned URLs](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ShareObjectPreSignedURL.html)
- [https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-overview.html](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-overview.html)

## Upload authorization for a new S3-object, by knowing the presigned URL

To generate an upload-link which will immediately work.\
E.g. to return an upload-link via a REST-API.\
You can generate a presigned URL.

The following **tools** can be used:

- ~~via AWS-CLI~~ (via CLI one can not generate upload URLs)
- via AWS-SDK, programatically

The interesting part is, **what** one can **enforce upon uploading**.

| enforcement      | Description                          |
| ----------- | ------------------------------------ |
| `limiting by S3-path and object-name`       |  enforce the upload of a file, with a **predefined S3-path** and  **predefined object-name**. |
| `limiting by conditions`       | enforce the upload by what condition allows |

### upload limiting by S3-path and object-name

??? note
  Generating `upload presigned URLs` can only generated programmatically

The following script generates a presigned URL

install requirements

``` python
pip install boto3
pip install requests
python3 generate.py
```

`generate.py`

``` javascript

import argparse
import logging
import boto3
from botocore.exceptions import ClientError
import requests
import sys

logger = logging.getLogger(__name__)
logging.basicConfig(stream=sys.stdout, level=logging.INFO)


def generate():

    s3 = boto3.client('s3')

    bucket_name='poc-presignedurl-alf'
    path='folder1/subfolder2/'
    object_key = 'bakabakabu2.txt'

    response = s3.generate_presigned_post(
        Bucket=bucket_name,
        Key=path+''+object_key
    )
    logger.info("Got presigned POST URL: %s", response['url'])

    # formulate a CURL command now

    response['fields']['file'] = '@{key}'.format(key=object_key)

    form_values = "\n    ".join(["-F {key}={value} \\".format(key=key, value=value)
                            for key, value in response['fields'].items()])

    print('curl command: \n')

    # the -L argument allows redirection. Avoids 307 error. Especially if the bucket is in non us-region
    print('curl -L -v {form_values} \n    {url}'.format(form_values=form_values, url=response['url']))

    print('-'*88)



if __name__ == '__main__':
    generate()

```

The upper `generate.py` script - generates a `curl` command to upload the local file "bakabakabu2.txt" into the predefined S3 path.

``` shell
curl -L -v -F key=folder1/subfolder2/bakabakabu2.txt \
    -F x-amz-algorithm=AWS4-HMAC-SHA256 \
    -F x-amz-credential=ASIAVJED7X57U7JWEP67/20230604/eu-central-1/s3/aws4_request \
    -F x-amz-date=20230604T215724Z \
    -F x-amz-security-token=IQoJb3JpZ2luX2VjENb//////////wEaDGV1LWNlbnRyYWwtMSJGMEQCIEeTc0qUKWWURkFsy/mdRUuCPrLddwJahdmIoe2mtxhOAiA9IrwrcfX0l1P3Ns+hiv9871Bb6zpwTZy7P/cEmXa4JirkAggfEAQaDDM2MzIwMTU0NDA2MyIM4ZFi83SJXErS/SdUKsECFS1+ceOa3SguK+cxs4lzeyP0KydsD4WbEBKE4/cpdtBUGyhs6u+6p17lXvsqnRDJWJG62cRrzQc7QEzSrpUo/4SvZ6ac3Wol8HambjwFKQm98ZNj+WsyTsSQaqflUY3LlUVKccYb3w1WEEZWdlo9vA8/Hs5v86k6KI/ngJpUq0p4q6PxQzPbuYkSjollC8lrOT4KZio7kTsfD9V9DIlsIsRsC1LTjZKu6nrphcpyiy0fllt/PRgsmXGfUPNwuhwYSIC9WFQb74UJzaJ/RTmUddSwo1neWKPcRK0nDcG7IRbmjmAMD+hEuuNqhc5gnzwnG/PDr+YCo/nPorLNOeOr5AXU27/WDWslk6RfTwYb3g8WjU68Dz/Ke4C8TuSxG4LsbexpgLY/OyHPaX9htJMCXVqayoEoSNFcpFoffJWrz/klMMSR9KMGOqgBx+8NMu1vLoQ3TwaYu2tE1ph1Ek4hhRApg5BMvtp7esswR8eCrb47aduziExBi5BCZP3eAvkXS3AJ7r45zrtfGY/7f1PsR9PY7kycXNk+hNVqZGJv7IgKFkzE6RGadGw8xgUSqdmzhhOUHCUlxgx9rcJLnw9fRfd3oZH3qfDxcnXeFfvwYmaLnUJYb64o+537e/zGdVZ4hOCaZ7s62pUpX9+XgLHJk3+k \
    -F policy=eyJleHBpcmF0aW9uIjogIjIwMjMtMDYtMDRUMjI6NTc6MjNaIiwgImNvbmRpdGlvbnMiOiBbeyJidWNrZXQiOiAicG9jLXByZXNpZ25lZHVybC1hbGYifSwgeyJrZXkiOiAiZm9sZGVyMS9zdWJmb2xkZXIyL2Jha2FiYWthYnUyLnR4dCJ9LCB7IngtYW16LWFsZ29yaXRobSI6ICJBV1M0LUhNQUMtU0hBMjU2In0sIHsieC1hbXotY3JlZGVudGlhbCI6ICJBU0lBVkpFRDdYNTdVN0pXRVA2Ny8yMDIzMDYwNC9ldS1jZW50cmFsLTEvczMvYXdzNF9yZXF1ZXN0In0sIHsieC1hbXotZGF0ZSI6ICIyMDIzMDYwNFQyMTU3MjRaIn0sIHsieC1hbXotc2VjdXJpdHktdG9rZW4iOiAiSVFvSmIzSnBaMmx1WDJWakVOYi8vLy8vLy8vLy93RWFER1YxTFdObGJuUnlZV3d0TVNKR01FUUNJRWVUYzBxVUtXV1VSa0ZzeS9tZFJVdUNQckxkZHdKYWhkbUlvZTJtdHhoT0FpQTlJcndyY2ZYMGwxUDNOcytoaXY5ODcxQmI2enB3VFp5N1AvY0VtWGE0Smlya0FnZ2ZFQVFhRERNMk16SXdNVFUwTkRBMk15SU00WkZpODNTSlhFclMvU2RVS3NFQ0ZTMStjZU9hM1NndUsrY3hzNGx6ZXlQMEt5ZHNENFdiRUJLRTQvY3BkdEJVR3loczZ1KzZwMTdsWHZzcW5SREpXSkc2MmNScnpRYzdRRXpTcnBVby80U3ZaNmFjM1dvbDhIYW1iandGS1FtOThaTmorV3N5VHNTUWFxZmxVWTNMbFVWS2NjWWIzdzFXRUVaV2Rsbzl2QTgvSHM1djg2azZLSS9uZ0pwVXEwcDRxNlB4UXpQYnVZa1Nqb2xsQzhsck9UNEtaaW83a1RzZkQ5VjlESWxzSXNSc0MxTFRqWkt1Nm5ycGhjcHlpeTBmbGx0L1BSZ3NtWEdmVVBOd3Vod1lTSUM5V0ZRYjc0VUp6YUovUlRtVWRkU3dvMW5lV0tQY1JLMG5EY0c3SVJibWptQU1EK2hFdXVOcWhjNWduenduRy9QRHIrWUNvL25Qb3JMTk9lT3I1QVhVMjcvV0RXc2xrNlJmVHdZYjNnOFdqVTY4RHovS2U0QzhUdVN4RzRMc2JleHBnTFkvT3lIUGFYOWh0Sk1DWFZxYXlvRW9TTkZjcEZvZmZKV3J6L2tsTU1TUjlLTUdPcWdCeCs4Tk11MXZMb1EzVHdhWXUydEUxcGgxRWs0aGhSQXBnNUJNdnRwN2Vzc3dSOGVDcmI0N2FkdXppRXhCaTVCQ1pQM2VBdmtYUzNBSjdyNDV6cnRmR1kvN2YxUHNSOVBZN2t5Y1hOaytoTlZxWkdKdjdJZ0tGa3pFNlJHYWRHdzh4Z1VTcWRtemhoT1VIQ1VseGd4OXJjSkxudzlmUmZkM29aSDNxZkR4Y25YZUZmdndZbWFMblVKWWI2NG8rNTM3ZS96R2RWWjRoT0NhWjdzNjJwVXBYOStYZ0xISmszK2sifV19 \
    -F x-amz-signature=273fbbc6cf9e1118ac703757578cec51c57261a0106e7895a5b4690ade9e17cc \
    -F file=@bakabakabu2.txt \
    https://poc-presignedurl-alf.s3.amazonaws.com/
```

### upload limiting by conditions

As above script, but adding a condition.

``` shell
    response = s3.generate_presigned_post(
        "BUCKET_NAME",
        "uploads/${filename}",
        Fields=None,
        Conditions=[["starts-with", "$key", "uploads/"]],
        ExpiresIn=(10 * 60),
    )

```

### Links upload authorization

- [Generating a presigned URL to upload an object](https://docs.aws.amazon.com/AmazonS3/latest/userguide/PresignedUrlUploadObject.html)
- [boto3 generate_presigned_post](https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/s3/client/generate_presigned_post.html)
- [You must use conditions when generating a presigned URL, specifically starts-with.](https://stackoverflow.com/questions/36344194/pre-signed-url-for-multiple-files/67830706#67830706)
- [Condition Matching](https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-HTTPPOSTConstructPolicy.html#sigv4-ConditionMatching)
