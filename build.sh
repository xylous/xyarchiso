#!/usr/bin/env bash

workdir="$(mktemp --directory --dry-run)"

sudo mkarchiso -v -w "${workdir}" -o "$(pwd)" "./profile"

sudo rm -rf "${workdir}"
