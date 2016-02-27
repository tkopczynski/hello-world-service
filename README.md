# hello-world-service

Simple HTTP service written in Go which does nothing more than respond with the same message on every request. 

More interestingly, it is packaged as a container with a statically linked go binary, resulting in an extremely lightweight container.

In order to use it:

1. Run `build_binary.sh`. It will build a binary file called `hello-world-service` using the `golang` Docker image, so that the binary will be linux-compatible, no matter which OS it is built on (as long as it's supported by Docker).

2. Run `build_image.sh`. It will build a Docker image with `hello-world-service` binary inside. Note that this image is built `FROM scratch` (zero-sized image), so it doesn't carry anything else apart from the binary file. This image size is about 6.5MB (!).

3. Run `run.sh`. This will just run a container with the binary file built before.
