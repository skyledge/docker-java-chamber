# docker-java-chamber

A Docker image combining [Eclipse Temurin JDK 25](https://hub.docker.com/_/eclipse-temurin) with [Chamber](https://github.com/segmentio/chamber) for AWS SSM Parameter Store secret injection. Built for `linux/amd64` and `linux/arm64`.

## Registries

| Registry | Image |
|---|---|
| Docker Hub | `skyledge/java-chamber` |
| GitHub Container Registry | `ghcr.io/skyledge/docker-java-chamber` |

## CI / Publishing

The GitHub Actions workflow builds and pushes a multi-arch image automatically.

### On push to `master`

Pushes to **GHCR only**:

- `ghcr.io/skyledge/docker-java-chamber:latest`
- `ghcr.io/skyledge/docker-java-chamber:master`
- `ghcr.io/skyledge/docker-java-chamber:<git-sha>`

### On a version tag (`v*`)

Tag the commit and push the tag:

```sh
git tag v25
git push origin v25
```

This pushes to **both registries**, stripping the leading `v` for the Docker tag:

| Registry | Tags pushed |
|---|---|
| Docker Hub | `skyledge/java-chamber:25`, `skyledge/java-chamber:latest` |
| GHCR | `ghcr.io/skyledge/docker-java-chamber:25`, `ghcr.io/skyledge/docker-java-chamber:<git-sha>` |

### Required secrets

Add these in **GitHub → Settings → Secrets and variables → Actions**:

| Secret | Value |
|---|---|
| `DOCKERHUB_USERNAME` | Your Docker Hub username (e.g. `skyledge`) |
| `DOCKERHUB_TOKEN` | A Docker Hub [access token](https://hub.docker.com/settings/security) |

`GITHUB_TOKEN` is provided automatically by GitHub Actions and requires no setup.
