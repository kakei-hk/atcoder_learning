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
4. Download problem.
   ```
   $ cd atcoder/<language>
   # ex. <problem> = abc100
   $ acc new <problem>
   ```
5. Solve the downloaded problem. You can test your code by sample test cases as follows.
   ```
   $ cd <problem_directory>
   # ex. <command> = "python main.py" (default: "./a.out")
   $ oj t -c <command> -d tests
   ```
6. Submit your code with the following command.
   The option number (described as <language_number> below) depends on the selected language and atcoder environment.
   ```
   # ex. <language_number> = 5055 (Python (CPython 3.11.4))
   $ acc submit <your_code_file> -- -l <language_number>
   ```
   If successfully processed, a link to the submission result will appear in the log as follows.
   You can check the result from the link.
   ```
   [SUCCESS] result: <link_to_the_result>
   ```