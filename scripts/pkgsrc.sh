#!/bin/bash

if [ ! -d /opt/pkg ]; then
  #
  # Copy and paste the lines below to install the Big Sur on Intel set.
  #
  # These packages are suitable for anyone running Big Sur (11.0.x) or newer on
  # Intel CPUs, and are updated from pkgsrc trunk every few days.
  #
  BOOTSTRAP_TAR="bootstrap-macos12.3-trunk-arm64-20240426.tar.gz"
  BOOTSTRAP_SHA="97cbb189458ff2765dbacbbaa691460a1d658e7c"

  # Download the bootstrap kit to the current directory.
  curl -O https://pkgsrc.smartos.org/packages/Darwin/bootstrap/${BOOTSTRAP_TAR}

  # Verify the SHA1 checksum.
  echo "${BOOTSTRAP_SHA}  ${BOOTSTRAP_TAR}" | shasum -c-

  # Verify PGP signature.  This step is optional, and requires gpg.
  curl -O https://pkgsrc.smartos.org/packages/Darwin/bootstrap/${BOOTSTRAP_TAR}.asc
  curl -sS https://pkgsrc.smartos.org/pgp/ED09C4B0.asc | gpg2 --import
  gpg2 --verify ${BOOTSTRAP_TAR}{.asc,}

  # Install bootstrap kit to /opt/pkg
  sudo tar -zxpf ${BOOTSTRAP_TAR} -C /

  # Reload PATH/MANPATH (pkgsrc installs /etc/paths.d/10-pkgsrc for new sessions)
  eval $(/usr/libexec/path_helper)

  rm ${BOOTSTRAP_TAR}{.asc,}
else
  echo "pkgsrc already installed"
fi
