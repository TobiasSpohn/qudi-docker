FROM --platform=linux/amd64 python:3.10

# set working directory
WORKDIR /qudi

# install libraries
RUN apt-get update && apt-get install libgl1 git -y
#ffmpeg libsm6 libxext6 -y

# clone Qudi Repos
RUN git clone --depth=1 https://github.com/Ulm-IQO/qudi-core.git /qudi/qudi-core
RUN git clone --depth=1 https://github.com/Ulm-IQO/qudi-iqo-modules.git /qudi/qudi-iqo-modules

# Install dependencies
RUN pip install --upgrade pip
RUN python -m pip install -e qudi-core/.
RUN python -m pip install -e qudi-iqo-modules/.

# Install Qudi Kernel
RUN qudi-install-kernel

# Run qudi in headless mode
ENTRYPOINT /bin/bash
