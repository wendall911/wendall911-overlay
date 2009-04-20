# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit gnome2 eutils

DESCRIPTION="Dates is a small, lightweight calendar for GNOME"
HOMEPAGE="http://pimlico-project.org/dates.html"
SRC_URI="http://pimlico-project.org/sources/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc x86"
IUSE=""

RDEPEND=">=gnome-extra/evolution-data-server-1.8
		>=x11-libs/gtk+-2.6"

DEPEND="${RDEPEND}
		sys-devel/gettext
		>=dev-util/intltool-0.35.0
		>=dev-util/pkgconfig-0.9
		dev-perl/XML-Parser"

src_unpack() {
	gnome2_src_unpack
}
