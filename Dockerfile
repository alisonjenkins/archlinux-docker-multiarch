FROM alanjjenkins/archlinux:2022-09-04 as linux-amd64
FROM alanjjenkins/archlinux:2022-09-04 as linux-arm64

FROM $TARGETOS-$TARGETARCH$TARGETVARIANT
RUN pacman -Syy --noconfirm && \
  pacman -S archlinux-keyring --noconfirm && \
  pacman -Syu --noconfirm && \
  rm -Rf /var/cache/pacman/pkg/
