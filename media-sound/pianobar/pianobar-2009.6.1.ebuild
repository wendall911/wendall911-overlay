# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:$

EAPI="2"

inherit git

DESCRIPTION="pianobar is a free/open-source, console-based replacement for pandora's flash player."
HOMEPAGE="http://uint16.ath.cx/software/pandora_client.en.html"
SRC_URI=""
EGIT_REPO_URI="git://github.com/PromyLOPh/pianobar.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="x86"
IUSE="alsa esd network oss pulseaudio"

DEPEND="dev-util/cmake
  media-libs/libao
  media-libs/faad2
  media-libs/libmad
  dev-libs/libxml2"

RDEPEND="alsa? ( media-libs/alsa-lib )
	esd? ( media-sound/esound )
	pulseaudio? ( media-sound/pulseaudio )"

src_compile() {
	cmake \
	  -DCMAKE_INSTALL_PREFIX=/usr \
	  . || die "cmake failed"
	  emake || die "emake failed."
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed."
	dodoc AUTHORS README COPYING
}
