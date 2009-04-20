# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-laptop/configure-thinkpad/configure-thinkpad-0.8.ebuild,v 1.1 2005/01/08 21:41:55 brix Exp $

inherit gnome2

DESCRIPTION="Thinkpad GNOME configuration utility for trackpoint"

HOMEPAGE="http://tpctl.sourceforge.net/configure-trackpoint.html"
SRC_URI="mirror://sourceforge/tpctl/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86"

RDEPEND=">=gnome-base/libglade-2.6.2
>=sys-devel/gettext-0.17"

DEPEND="${RDEPEND}
dev-util/pkgconfig"

src_unpack() {
	gnome2_src_unpack
	chmod 0755 "${D}"/etc/init.d/trackpoint
}

pkg_postinst() {
	echo
	einfo "Please start the trackpoint service /etc/init.d/trackpoint start"
	einfo "Add it to your default startup group rc-update add trackpoint default"
	echo
}
