# [thespad/dive](https://github.com/thespad/docker-dive)

[![GitHub Release](https://img.shields.io/github/release/thespad/docker-dive.svg?color=26689A&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github)](https://github.com/thespad/docker-dive/releases)
![Commits](https://img.shields.io/github/commits-since/thespad/docker-dive/latest?color=26689A&include_prereleases&logo=github&style=for-the-badge)
![Image Size](https://img.shields.io/docker/image-size/thespad/dive/latest?color=26689A&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=Size)
[![Docker Pulls](https://img.shields.io/docker/pulls/thespad/dive.svg?color=26689A&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=pulls&logo=docker)](https://hub.docker.com/r/thespad/dive)
[![GitHub Stars](https://img.shields.io/github/stars/thespad/docker-dive.svg?color=26689A&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github)](https://github.com/thespad/docker-dive)
[![Docker Stars](https://img.shields.io/docker/stars/thespad/dive.svg?color=26689A&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=stars&logo=docker)](https://hub.docker.com/r/thespad/dive)

[![ci](https://img.shields.io/github/actions/workflow/status/thespad/docker-dive/call-check-and-release.yml?branch=main&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github&label=Check%20For%20Upstream%20Updates)](https://github.com/thespad/docker-dive/actions/workflows/call-check-and-release.yml)
[![ci](https://img.shields.io/github/actions/workflow/status/thespad/docker-dive/call-baseimage-update.yml?branch=main&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github&label=Check%20For%20Baseimage%20Updates)](https://github.com/thespad/docker-dive/actions/workflows/call-baseimage-update.yml)
[![ci](https://img.shields.io/github/actions/workflow/status/thespad/docker-dive/call-build-image.yml?labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github&label=Build%20Image)](https://github.com/thespad/docker-dive/actions/workflows/call-build-image.yml)

[dive](https://github.com/wagoodman/dive) is a tool for exploring a docker image, layer contents, and discovering ways to shrink the size of your Docker/OCI image.

## Supported Architectures

Our images support multiple architectures such as `x86-64`, `arm64` and `armhf`.

Simply pulling `ghcr.io/thespad/dive` should retrieve the correct image for your arch.

The architectures supported by this image are:

| Architecture | Available | Tag |
| :----: | :----: | ---- |
| x86-64 | ✅ | latest |
| arm64 | ✅ | latest |
| armhf | ✅ | latest |

## Versions

* **28.11.22:** - Use scratch image for run stage, update dive deps to resolve security vulns.
* **24.09.22:** - Rebase to Alpine 3.16
* **06.12.21:** - Rebase to Alpine 3.15
* **17.08.21:** - Initial Release.
