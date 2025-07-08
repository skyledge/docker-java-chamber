ARG TARGETPLATFORM  # auto-filled by Buildx
FROM eclipse-temurin:24-jdk

ENV CHAMBER_VERSION=v3.0.0

# Choose the right Chamber binary for the platform -----------------------------
ARG TARGETPLATFORM
RUN bash -c 'set -eux; \
    apt-get update -y; \
    apt-get install -y --no-install-recommends curl ca-certificates; \
    arch="${TARGETPLATFORM##*/}"; \
    case "$arch" in \
        amd64|arm64) CH_ARCH="$arch" ;; \
        *) echo "Unsupported arch: $arch" && exit 1 ;; \
    esac; \
    curl -fsSL -o /usr/local/bin/chamber "https://github.com/segmentio/chamber/releases/download/${CHAMBER_VERSION}/chamber-${CHAMBER_VERSION}-linux-${CH_ARCH}"; \
    chmod 755 /usr/local/bin/chamber; \
    apt-get clean; rm -rf /var/lib/apt/lists/*'


