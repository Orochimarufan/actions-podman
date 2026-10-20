ARG AIO_TAG=latest
FROM quay.io/containers/aio:${AIO_TAG}

# JavaScript-based GitHub Actions require Node.js, and actions/checkout needs
# Git. The base image provides the container build and publishing tools.
RUN dnf install -y nodejs git \
    && dnf clean all \
    && rm -rf /var/cache/dnf
