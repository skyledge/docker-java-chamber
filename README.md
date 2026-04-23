# docker-java-chamber

A Docker image combining [Eclipse Temurin JDK 25](https://hub.docker.com/_/eclipse-temurin) with [Chamber](https://github.com/segmentio/chamber) for AWS SSM Parameter Store secret injection. Built for `linux/amd64` and `linux/arm64`.

## Registries

| Registry | Image |
|---|---|
| Docker Hub | `skyledge/java-chamber` |

## CI / Publishing

The GitHub Actions workflow builds and pushes a multi-arch image automatically.

### On any tag

Tag the commit and push the tag:

```sh
git tag 25
git push origin 25
```

The git tag is used directly as the Docker image tag:

- `skyledge/java-chamber:25`
- `skyledge/java-chamber:latest`

### Required secrets

Add these in **GitHub → Settings → Secrets and variables → Actions**:

| Secret | Value |
|---|---|
| `DOCKERHUB_USERNAME` | Your Docker Hub username (e.g. `skyledge`) |
| `DOCKERHUB_TOKEN` | A Docker Hub [access token](https://hub.docker.com/settings/security) |

`GITHUB_TOKEN` is provided automatically by GitHub Actions and requires no setup.
