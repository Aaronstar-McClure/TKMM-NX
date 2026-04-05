# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2022-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="dotnet-runtime-9"
PKG_VERSION="9.0.14"
PKG_LICENSE="MIT"
PKG_SITE="https://dotnet.microsoft.com/"
PKG_LONGDESC=".NET Runtime is a set of libraries to run .NET applications."
PKG_TOOLCHAIN="manual"
PKG_AUTORECONF="no"
PKG_SHA256="5eaa0c28521259ffd5ab254f806af3e53bd01fa06b82f248e71649cdba00ecea"
PKG_URL="https://builds.dotnet.microsoft.com/dotnet/Runtime/${PKG_VERSION}/dotnet-runtime-${PKG_VERSION}-linux-arm64.tar.gz"
PKG_SOURCE_NAME="${PKG_NAME}-${PKG_VERSION}-${ARCH}.tar.gz"

makeinstall_target() {
        mkdir -p ${INSTALL}/usr/local/share/dotnet && cp -R ${PKG_BUILD}/* ${INSTALL}/usr/local/share/dotnet/
}
