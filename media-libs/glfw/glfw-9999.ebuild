# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit eutils cmake-utils git-2

DESCRIPTION="The Portable OpenGL FrameWork"
HOMEPAGE="http://www.glfw.org/"

EGIT_REPO_URI="https://github.com/glfw/glfw.git"

LICENSE="ZLIB"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="x11-libs/libXrandr
	virtual/glu
	virtual/opengl"
RDEPEND="${DEPEND}"

src_configure() {
	local mycmakeargs="-DBUILD_SHARED_LIBS=on"

	cmake-utils_src_configure
}
