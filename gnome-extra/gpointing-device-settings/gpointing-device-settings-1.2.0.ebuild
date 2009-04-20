# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v3
# $Header$
EAPI=2

inherit eutils gnome2

DESCRIPTION="GPointingDeviceSettings is a GUI tool for setting pointing device such as TrackPoint or Touchpad."
HOMEPAGE="http://live.gnome.org/GPointingDeviceSettings"
SRC_URI="mirror://sourceforge.jp/gsynaptics/38319/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-libs/glib-2.10
	>=x11-base/xorg-server-1.6.0
	>=x11-libs/gtk+-2.14.0
	>=gnome-base/gconf-2.24.0
	>=x11-libs/libXi-1.2.0"
DEPEND="${DEPEND}
	>=dev-util/pkgconfig-0.19
	app-text/gnome-doc-utils
	sys-devel/gettext
	test? ( ~app-text/docbook-xml-dtd-4.1.2 )"

DOCS="MAINTAINERS NEWS COPYING TODO"

src_install() {
	gnome2_src_install
}

pkg_postinst() {
	gnome2_pkg_postinst
}
