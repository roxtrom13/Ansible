FROM archlinux:base-devel
ARG TAGS
WORKDIR /usr/local/bin
ARG ARCH_FRONTEND=noninteractive
RUN pacman -Syu --noconfirm && pacman -S --noconfirm ansible git cmake unzip
COPY . .
CMD ["sh", "-c", "ansible-playbook $TAGS local.yml"]
