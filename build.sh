#!/usr/bin/env bash

source ./env

flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak-builder $BUILD_DIR org.decred.dcrdex.yml \
    -v \
    --force-clean \
    --user \
    --install \
    --install-deps-from=flathub 
    #--no-debuginfo \
