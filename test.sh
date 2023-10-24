#!/usr/bin/env bash

source ./env



flatpak build-export $REPO_DIR $BUILD_DIR
flatpak remote-add --user --if-not-exists --no-gpg-verify test-repo $REPO_DIR
flatpak install -y --reinstall --user test-repo org.decred.dcrdex
flatpak run --user org.decred.dcrdex "$@"
