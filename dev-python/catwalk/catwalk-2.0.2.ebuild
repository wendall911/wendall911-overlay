# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

NEED_PYTHON=2.4

inherit distutils

DESCRIPTION="A way to view your models using TurboGears"
HOMEPAGE="http://code.google.com/p/tgtools/wiki/Catwalk"

MY_PN=Catwalk
MY_P=${MY_PN}-${PV}
SRC_URI="http://pypi.python.org/packages/source/C/${MY_PN}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

RDEPEND="dev-python/sprox
		dev-python/tgext.admin"
DEPEND="virtual/python
		dev-python/setuptools"

S="${WORKDIR}/${MY_P}"
