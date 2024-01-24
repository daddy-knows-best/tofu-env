FROM ghcr.io/daddy-knows-best/dev-env:latest 
ARG USERNAME=ubuntu
ARG USER_UID=1000
ARG USER_GID=1000
ENV WORKDIR=/dev-env

LABEL "maintainer"="Daddy Knows Best"
LABEL org.opencontainers.image.source=https://github.com/daddy-knows-best/tofu-env
LABEL org.opencontainers.image.description="Daddy's tofu env"

ENV TZ America/Central

ARG DEBIAN_FRONTEND=noninteractive

# set environmental variables
USER $USERNAME
ENV HOME "/home/${USERNAME}"
ENV LC_ALL "C.UTF-8"
ENV LANG "en_US.UTF-8"

#RUN rm -rf /var/lib/apt/lists/*
#RUN apt clean

# tofuenv
RUN set -ex && \
  cd ${HOME} && \
  git clone --depth=1 https://github.com/tofuutils/tofuenv.git ~/.tofuenv && \
  echo 'export PATH="$HOME/.tofuenv/bin:$PATH"' >> ~/.bashrc
ENV PATH "${HOME}/.tofuenv/bin:${PATH}"

# tofu 1.6.0
RUN set -ex && \
  tofuenv install 1.6.0 && \
  tofuenv use 1.6.0

WORKDIR ${WORKDIR}
