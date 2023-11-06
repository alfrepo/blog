# URL

https://alfrepo.github.io/blog/

## TODO

- custom template: Design the list of articles - as a less bloaghted, one liners

## Commands

``` shell
mkdocs new [dir-name] - Create a new project.
mkdocs serve - Start the live-reloading docs server.
mkdocs build - Build the documentation site.
mkdocs -h - Print help message and exit.
```

## Local development

``` shell
# Start the live-reloading docs server.
mkdocs serve --config-file ./content/mkdocs.yml --dev-addr 0.0.0.0:8080

```

## CI CD

GitHub actions config file under ``   .github\workflows\deploy-github-pages.yml``

``` shell
# uses shell\installmkdocs.sh

```

## Ideas

### Event Sourcing

- how do services communicate?
  - how to make sure, that the services scale separately?
  - how to document event-driven instrfaces?
    - async API
    - schemas
  - how to communicate with apps synchronously?
    - how to document sync apis?
  - ownership: how to implement ownership of components?
  - how to apply DDD to define service boundaries?
  - how to authorize? authenticate?

### Software development in an organization

- Architecture?
- Who tracks quality?
- Wwho expresses what is needed?
- Who makes sure the solutions do fit together in an enterprise
- and why S.A.F.E. is good for enterprises

### IAM solutions in the cloud. Comparison.

- different IAM solutions in cloud: AD, LDAP, 
- how to enforce?
- how to maintain?
- which model to follow?
- custom or off the shelf?

### Deployment

- Kubernetes - Kubernitis
- Containers
- Serverless


