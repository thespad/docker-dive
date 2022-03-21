# [thespad/dive](https://github.com/thespad/docker-dive)

[![GitHub Release](https://img.shields.io/github/release/thespad/docker-dive.svg?color=26689A&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github)](https://github.com/thespad/docker-dive/releases)
![Commits](https://img.shields.io/github/commits-since/thespad/docker-dive/latest?color=26689A&include_prereleases&logo=github&style=for-the-badge)
![Image Size](https://img.shields.io/docker/image-size/thespad/dive/latest?color=26689A&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=Size)
[![Docker Pulls](https://img.shields.io/docker/pulls/thespad/dive.svg?color=26689A&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=pulls&logo=docker)](https://hub.docker.com/r/thespad/dive)
[![GitHub Stars](https://img.shields.io/github/stars/thespad/docker-dive.svg?color=26689A&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github)](https://github.com/thespad/docker-dive)
[![Docker Stars](https://img.shields.io/docker/stars/thespad/dive.svg?color=26689A&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=stars&logo=docker)](https://hub.docker.com/r/thespad/dive)

[![ci](https://img.shields.io/github/workflow/status/thespad/docker-dive/Check%20for%20update%20and%20release.svg?labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github&label=Check%20For%20Upstream%20Updates)](https://github.com/thespad/docker-dive/actions/workflows/called-ci.yml)
[![ci](https://img.shields.io/github/workflow/status/thespad/docker-dive/Check%20for%20base%20image%20updates.svg?labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github&label=Check%20For%20Baseimage%20Updates)](https://github.com/thespad/docker-dive/actions/workflows/called-baseimage-update.yml)
[![ci](https://img.shields.io/github/workflow/status/thespad/docker-dive/Build%20Image%20On%20Release.svg?labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github&label=Build%20Image)](https://github.com/thespad/docker-dive/actions/workflows/called-bakebuild.yml)

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

* **06.12.21:** - Rebase to Alpine 3.15
* **17.08.21:** - Initial Release.
