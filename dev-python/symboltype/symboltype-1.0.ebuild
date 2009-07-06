# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

NEED_PYTHON=2.3

inherit distutils

KEYWORDS="~x86 ~amd64"

MY_PN=SymbolType
MY_P=${MY_PN}-${PV}

DESCRIPTION="Simple \"symbol\" type, useful for enumerations or sentinels"
HOMEPAGE="http://peak.telecommunity.com/DevCenter/SymbolType"
SRC_URI="http://pypi.python.org/packages/source/S/${MY_PN}/${MY_P}.zip"
LICENSE="|| ( PSF-2.4 ZPL )"
SLOT="0"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	app-arch/unzip
	>=dev-python/setuptools-0.6_rc9"

S="${WORKDIR}/${MY_P}"
