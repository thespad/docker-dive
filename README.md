# [thespad/dive](https://github.com/thespad/docker-dive)

[![GitHub Release](https://img.shields.io/github/release/thespad/docker-dive.svg?color=26689A&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github)](https://github.com/thespad/docker-dive/releases)
![Commits](https://img.shields.io/github/commits-since/thespad/docker-dive/latest?color=26689A&include_prereleases&logo=github&style=for-the-badge)
![Image Size](https://img.shields.io/docker/image-size/thespad/dive/latest?color=26689A&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=Size)
[![Docker Pulls](https://img.shields.io/docker/pulls/thespad/dive.svg?color=26689A&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=pulls&logo=docker)](https://hub.docker.com/r/thespad/dive)
[![GitHub Stars](https://img.shields.io/github/stars/thespad/docker-dive.svg?color=26689A&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github)](https://github.com/thespad/docker-dive)
[![Docker Stars](https://img.shields.io/docker/stars/thespad/dive.svg?color=26689A&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=stars&logo=docker)](https://hub.docker.com/r/thespad/dive)

[![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/thespad/docker-dive/call-check-and-release.yml?branch=main&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github&label=Check%20For%20Upstream%20Updates)](https://github.com/thespad/docker-dive/actions/workflows/call-check-and-release.yml)
[![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/thespad/docker-dive/call-baseimage-update.yml?branch=main&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github&label=Check%20For%20Baseimage%20Updates)](https://github.com/thespad/docker-dive/actions/workflows/call-baseimage-update.yml)
[![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/thespad/docker-dive/call-build-image.yml?labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github&label=Build%20Image)](https://github.com/thespad/docker-dive/actions/workflows/call-build-image.yml)

[dive](https://github.com/wagoodman/dive) is a tool for exploring a docker image, layer contents, and discovering ways to shrink the size of your Docker/OCI image.

## Supported Architectures

Our images support multiple architectures and simply pulling `ghcr.io/thespad/dive:latest` should retrieve the correct image for your arch.

The architectures supported by this image are:

| Architecture | Available | Tag |
| :----: | :----: | ---- |
| amd64 | ✅ | latest |
| arm64 | ✅ | latest |

## Application Setup

The entrypoint for the image is the dive executable, arguments can be passed directly as a command. Pass `--help` for a full list of options.

## Read-Only Operation

This image can be run with a read-only container filesystem.

## Usage

Here are some example snippets to help you get started creating a container.

### docker cli

```shell
docker run -it \
  --rm \
  --name=dive \
  -v /var/run/docker.sock:/var/run/docker.sock:ro \
  ghcr.io/thespad/dive:latest \
  imagename:tag
```

## Parameters

Container images are configured using parameters passed at runtime (such as those above). These parameters are separated by a colon and indicate `<external>:<internal>` respectively. For example, `-p 8080:80` would expose port `80` from inside the container to be accessible from the host's IP on port `8080` outside the container.

| Parameter | Function |
| :----: | --- |
| `-v /var/run/docker.sock:/var/run/docker.sock` | Docker socket mount for access to images |

## Building locally

If you want to make local modifications to these images for development purposes or just to customize the logic:

```shell
git clone https://github.com/thespad/docker-dive.git
cd docker-dive
docker build \
  --no-cache \
  --pull \
  -t ghcr.io/thespad/dive:latest .
```

The arm variants can be built on x86_64 hardware and vice versa using `lscr.io/linuxserver/qemu-static`

```bash
docker run --rm --privileged lscr.io/linuxserver/qemu-static --reset
```

## Versions

* **21.03.25:** - Rebase build stage to Alpine Edge, remove patches.
* **02.02.25:** - Rebase build stage to Alpine 3.21.
* **30.12.23:** - Rebase build stage to Alpine 3.19.
* **08.07.23:** - Revert to using upstream deps.
* **14.05.23:** - Rebase build stage to Alpine 3.18. Drop armhf support.
* **21.12.22:** - Rebase build stage to Alpine 3.17.
* **28.11.22:** - Use scratch image for run stage, update dive deps to resolve security vulns.
* **24.09.22:** - Rebase to Alpine 3.16
* **06.12.21:** - Rebase to Alpine 3.15
* **17.08.21:** - Initial Release.
