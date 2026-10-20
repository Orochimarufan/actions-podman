# Actions container image

A small base image for running GitHub Actions-style jobs that build and publish
container images with the `redhat-actions` actions, without depending on the
GitHub-hosted runner environment.

The image is based on [`quay.io/containers/aio`](https://quay.io/repository/containers/aio)
and adds only:

- Node.js, required by JavaScript-based actions
- Git, required by `actions/checkout` and other source-control actions

The base image supplies the container tooling used to build and publish images.

Build against the current `latest` base tag with Podman:

```sh
podman build -t actions-podman -f Containerfile .
```

To choose a specific `aio` tag, pass it as `AIO_TAG` (for example, a dated
tag):

```sh
podman build --build-arg AIO_TAG=v2026.10.19 -t actions-podman -f Containerfile .
```
