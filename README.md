# AtCoder Learning


## Overview

This is a project for learning AtCoder.

## Tested Environment
This project has been tested in the following environments.

- Windows + WSL2 (Ubuntu 20.04)

## Preparation for a Docker Image
Execute the following command to build an image.
```
$ ./docker/docker_build.sh
```
If you are a VScode user, you can use devcontainer using the built image.
Select "Dev Containers: Rebuild and Reopen Container" to build an image and
launch a container.


## How to Use
1. Launch a container with the following command.
If you want to use devcontainer, select "Dev Containers: Reopen in Container"
to launch a container.
```
$ ./docker/docker_run.sh
```
2. Login to Atcoder. You will be asked for your user name and password.
```
$ acc login
$ oj login https://atcoder.jp
```
3. Choose a language you want to use in Atcoder (only Python and C++ are supported now),
and set template files with the following command.
```
$ ./set_template <language>
```