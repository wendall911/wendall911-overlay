# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2


DESCRIPTION="GTK+/GNOME color customization tool."
HOMEPAGE="http://gnomecc.sourceforge.net/"
SRC_URI="mirror://sourceforge/gnomecc/${P}.tar.bz2"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"

DEPEND="sys-devel/gettext
	>=dev-cpp/libglademm-2.6.0
	>=dev-cpp/gtkmm-2.8.0
	>=gnome-base/libgnome-2.16.0
	>=gnome-base/libgnomeui-2.14.0
	>=dev-libs/libxml2-2.6.0"

RDEPEND="${DEPEND}"

src_unpack() {
	if [ "${A}" != "" ]; then
		unpack ${A}
	fi
}

src_compile() {
	if [ -x ./configure ]; then
		econf --prefix=/usr
	fi
	if [ -f Makefile ] || [ -f GNUmakefile ] || [ -f makefile ]; then
		emake || die "emake failed"
	fi
}

src_install() {
	emake DESTDIR="${D}" install || die "Install failed"
	dodoc README || die
}

pkg_postinst() {
	einfo "To use gnome-color-chooser themes you may need to add:"
	einfo "      include \".gtkrc-2.0-gnome-color-chooser\""
	einfo "to ~/.gtkrc-2.0 for each user, otherwise themes may not be applied."
}
