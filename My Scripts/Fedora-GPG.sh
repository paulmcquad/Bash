#!/bin/bash

# Security Website 
# https://fedoraproject.org/security/

# Download Public Key
curl -O https://fedoraproject.org/fedora.gpg

# Import GPG Keys
gpg --import fedora.gpg

# Inspect the details of Fedora's OpenPGP certificates.
gpg --with-fingerprint --show-keys --keyid-format long fedora.gpg

# Check GPG Public Key and SHA256
for file in *-CHECKSUM; do
  gpgv --keyring ./fedora.gpg --output - \
    "$file" \
    | sha256sum -c --ignore-missing
done


