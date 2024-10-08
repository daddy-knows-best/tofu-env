FROM ghcr.io/daddy-knows-best/dev-env:latest
ARG USERNAME=ubuntu
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

# tfenv
RUN set -ex && \
  git clone https://github.com/tfutils/tfenv.git ~/.tfenv && \
  echo 'export PATH=$HOME/.tfenv/bin:$PATH' >> ~/.bashrc
ENV PATH=${HOME}/.tfenv/bin:$PATH

# terraform 1.6.6
RUN set -ex && \
  tfenv install 1.6.6 && \
  tfenv use 1.6.6

# tgenv
RUN set -ex && \
  git clone --depth 1 --branch main https://github.com/tgenv/tgenv.git ~/.tgenv && \
  echo 'export PATH="$HOME/.tgenv/bin:$PATH"' >> ~/.bashrc
ENV PATH=${HOME}/.tgenv/bin:$PATH

# terragrunt & set the default as tofu
RUN set -ex && \
  tgenv install latest && \
  tgenv use latest && \
  echo 'export TERRAGRUNT_TFPATH=tofu' >> ~/.bashrc
ENV TERRAGRUNT_TFPATH=tofu

# terraform-docs
RUN set -ex && \
  cd ${HOME} && \
  curl -sSLo ./terraform-docs.tar.gz https://terraform-docs.io/dl/v0.17.0/terraform-docs-v0.17.0-$(uname)-amd64.tar.gz && \
  tar -xzf terraform-docs.tar.gz && \
  chmod +x terraform-docs && \
  sudo mv terraform-docs /usr/local/bin/terraform-docs

WORKDIR ${WORKDIR}
