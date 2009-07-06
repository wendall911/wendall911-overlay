# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

NEED_PYTHON=2.4

inherit distutils

DESCRIPTION="Crud Controller Extension for TG2"
HOMEPAGE="http://code.google.com/p/tgtools/"

MY_PN=tgext.crud
MY_P=${MY_PN}-${PV}
SRC_URI="http://pypi.python.org/packages/source/t/${MY_PN}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

RDEPEND=">=dev-python/sprox-0.5.4.1
	>=dev-python/tw.forms-0.9"
DEPEND="virtual/python
		dev-python/setuptools"

S="${WORKDIR}/${MY_P}"
