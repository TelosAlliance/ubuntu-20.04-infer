# Ubuntu 20.04 + Facebook Infer

Docker container for Facebook's Infer, based on our own Ubuntu 20.04 build container.

Links:

- [Base Image (DockerHub)](https://hub.docker.com/repository/docker/telosalliance/ubuntu-20.04)
- [This Image (DockerHub)](https://hub.docker.com/repository/docker/telosalliance/ubuntu-20.04-infer)

## Environment Variables

This container can be used in many different ways by adjusting the environment variables and mounts.
It can be configured using the following environment variables, all of which are optional:

| Variable     | Description |
| ------------ | ----------- |
| `LINUX_USER` | Username inside container |
| `LINUX_UID`  | UID for `LINUX_USER` |
| `LINUX_GROUP`| Default group inside container |
| `LINUX_GID`  | GID for `LINUX_GROUP` |
| `LINUX_DIR`  | Directory to start in |

## Shell Script

Use the shell script `infer` from this repository to launch the container with proper user ID and mounts, and forward arguments to Infer.

