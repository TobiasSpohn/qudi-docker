# qudi-docker
Docker implementation of [`qudi-core`](https://github.com/Ulm-IQO/qudi-core) and [`qudi-iqo-modules`](https://github.com/Ulm-IQO/qudi-iqo-modules).

# Installation and Usage

Tested with ` Docker v4.30.0 `.

Clone this repository into your current (empty) working directory
```bash
git clone https://github.com/TobiasSpohn/qudi-docker.git .
```

Run
```bash
docker build -t qudi-docker-test-image .
```
to build the image and 
```bash
docker run -dit --name qudi-docker-test-container qudi-docker-test-image
```
to start the container.

To access the commandline of the container run

```bash
docker attach qudi-docker-test-container
```
Here you can run
```bash
qudi -g -d
```
to start qudi in headless and debug mode.

***Note*** Currently only headless mode is supported.
