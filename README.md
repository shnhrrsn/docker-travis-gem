# Travis gem in Docker

Travis gem in Docker

## Usage

### Setting up an alias

```
alias travis='docker run --rm zburgermeiszter/docker-travis-gem:1.0.0'
```

### Generate Travis secrets in Docker

```
travis encrypt -r vendor/repo 'GIT_NAME="username" GIT_EMAIL="user@host.com" GH_TOKEN=s3cret70k3n'
```