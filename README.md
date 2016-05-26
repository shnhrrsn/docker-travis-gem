# Travis gem in Docker

Travis gem in Docker

## Usage

### Generate Travis secrets in Docker

```
docker run --rm travis encrypt -r vendor/repo 'GIT_NAME="username" GIT_EMAIL="user@host.com" GH_TOKEN=s3cret70k3n'
```