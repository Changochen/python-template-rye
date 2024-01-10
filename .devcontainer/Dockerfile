from mcr.microsoft.com/devcontainers/base:jammy
MAINTAINER Yongeheng Chen

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends curl

USER vscode
RUN curl -sSf https://rye-up.com/get | RYE_INSTALL_OPTION="--yes" bash
RUN echo 'source "$HOME/.rye/env"' >> ~/.zshrc
RUN wget -qO - 'https://proget.makedeb.org/debian-feeds/prebuilt-mpr.pub' | gpg --dearmor | sudo tee /usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg 1> /dev/null
echo "deb [arch=all,$(dpkg --print-architecture) signed-by=/usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg] https://proget.makedeb.org prebuilt-mpr $(lsb_release -cs)" | sudo tee /etc/apt/sources.list.d/prebuilt-mpr.list
RUN sudo apt update
RUN sudo apt install -y just
#ENV ZSH_CUSTOM=~/custom
#RUN mkdir $ZSH_CUSTOM/plugins/rye
#RUN rye self completion -s zsh > $ZSH_CUSTOM/plugins/rye/_rye