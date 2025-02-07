#!/bin/sh

echo "Running migration for 1.0.0"

pkg install mono

echo "Update CA certs and resync"
pkg install -y ca_root_nss
./usr/local/migration/remove_lets_encrypt_ca.sh
cert-sync /usr/local/share/certs/ca-root-nss.crt
