---
title:  single codebase that runs across multiple platforms
time: 2025-06-09 20:00:00
description: >
   single codebase that runs across multiple platforms

authors:
    - Alexander Friesen
tags:
  - web app
  - mobile app


---

## Intro

Frameworks and paths with single codebase that runs across multiple platforms

Non functionals :

 Requirement1: usabiltiy

 Requirement2: speed of development
  
 Requirement3: support GPS / geo location
 
 Requirement4: support push notifications

 Requirement5: reduced operations effort

 Requirement6: native look and feel

 Requirement7: utilize current technology-radar 


## Priority


### Priority1:  Requirement5: reduced operations effort" over "Requirement6:  native look and feel"

 In the ever-evolving landscape of mobile applications, a critical debate often arises: should development prioritize a "native look and feel" or "reduced operations effort"? 
 
 While a native-like experience on iOS and Android devices has its merits, a compelling argument can be made that for many businesses, the benefits of reduced operational efforts associated with mobile web applications are of greater strategic importance. 



## Context

#### TechRadar:  Angular is in use
Currently the web-frontends are implemented in "Angular framework".


#### TechRadar: PrimeNG framework is in use
Currently the web-frontends are implemented using "PrimeNG" UI widgets


#### TechRadar: Java backends
Currently the backends are mainly in Java
  


## Problem

Find the setup
 - delivering the features
 - reducing operations effort
 - 



## Solutions Space


### App package format

#### Option1: Progressive Web App PWA

Cross-Platform Compatibility at a Lower Cost: A single PWA codebase can run on any platform with a modern web browser, including Android, iOS, Windows, and macOS. This significantly reduces development time and cost compared to building and maintaining separate native applications for each operating system.

- Improved User Engagement: Features like push notifications and the ability to be "installed" on a user's home screen lead to higher engagement and retention rates, bridging the gap between a website and a dedicated app.

- Offline Functionality: Through the use of service workers, PWAs can offer reliable offline access to content and functionality, a critical feature for users with intermittent internet connectivity.

- No App Store Barrier: PWAs can be "installed" directly from the web, bypassing the often lengthy and restrictive approval processes of app stores. This also means developers are not subject to app store commissions.


 ![assetManagementSymanticWeb](https://s3.eu-central-1.amazonaws.com/alf-digital-wiki-pics/sharex/oeO7x9IIWa.png)


 - https://en.wikipedia.org/wiki/Progressive_web_app
 - https://web.dev/articles/drive-business-success
 - https://www.youtube.com/watch?v=0EYGkXswYYM


![assetManagementSymanticWeb](https://s3.eu-central-1.amazonaws.com/alf-digital-wiki-pics/sharex/RAkxg09sTL.png)

 - https://www.youtube.com/watch?v=3ODP6tTpjqA 


![assetManagementSymanticWeb](https://s3.eu-central-1.amazonaws.com/alf-digital-wiki-pics/sharex/R1gSSftalv.png)
 

 Top popular PWA apps : 
 - <https://onilab.com/blog/20-progressive-web-apps-examples>




##### Requirement1: usabiltiy
Web - very high

Mobile - sufficient

##### Requirement2: speed of development
Very high
  
##### Requirement3: support GPS / geo location

 
#####  Requirement4: support push notifications
Using VAPID keys.
And "web-push"

<https://blog.angular-university.io/angular-push-notifications/>

<https://www.youtube.com/watch?v=M5sbGvW3S4I>



##### Requirement5: reduced operations effort



##### Requirement6: native look and feel



##### Requirement7: utilize current technology-radar 




#### Option2: Flutter App










Options 


 - https://capacitorjs.com/
 - https://cordova.apache.org/

Apache Cordova is a community project, letting you build mobile apps for various mobile platforms with one unique code base, as you develop your app with web technologies (HTML5, Javascript and CSS3) instead of relying on platform-specific (native) APIs like those of Android, iOS, or Windows Phone.

 - https://flutter.dev/
 - https://angular.dev/
 - https://primeng.org/
 - https://ionicframework.com/
 Ionic Framework is a set of css classes and a library of Javascript directives and modules, built on top of Cordova, with AngularJS.
