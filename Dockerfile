FROM debian:bookworm-slim AS debian

ARG username=vortex
ARG skipExtras=false

RUN \
  apt-get update &&\
  apt-get -y upgrade &&\
  apt-get clean &&\
  apt-get install -y --no-install-recommends\
    build-essential\
    curl\
    git\
    gnupg\
    sudo\
    zsh\
    fonts-powerline\
    fonts-jetbrains-mono\
    git-extras\
    git-quick-stats\
    neofetch\
    python3\
    python3-pip\
    golang &&\
  curl --proto '=https' -fsSL https://deb.nodesource.com/setup_22.x -o nodesource_setup.sh | sh - &&\
  apt-get install -y nodejs npm &&\
  rm -rf /var/lib/apt/lists/*

RUN \
  useradd -ms /usr/bin/zsh $username &&\
  echo "$username ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$username &&\
  chmod 0440 /etc/sudoers.d/$username &&\
  chown -R $username:$username /home/$username &&\
  rm -rf /etc/profile.d

USER $username
WORKDIR /home/$username/

RUN curl --proto '=https' --tlsv1.2 -fsLS https://sh.rustup.rs | sh -s -- -y --no-modify-path --profile minimal
ENV PATH="/home/$username/.cargo/bin:${PATH}"
ENV DRY_RUN="$skipExtras"

COPY --chown=$username:$username . .dotfiles

RUN ./.dotfiles/install.sh

ENTRYPOINT ["/bin/zsh"]

CMD ["-l"]
