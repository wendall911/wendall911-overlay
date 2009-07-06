# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

NEED_PYTHON=2.4

inherit distutils

DESCRIPTION="A package for creation of web widgets directly from database schema."
HOMEPAGE="http://www.sprox.org/"

MY_PN=sprox
MY_P=${MY_PN}-${PV}
SRC_URI="http://pypi.python.org/packages/source/s/${MY_PN}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

RDEPEND=">=dev-python/sqlalchemy-0.5
	>=dev-python/tw.forms-0.9.7.2"
DEPEND="virtual/python
	dev-python/setuptools"

S="${WORKDIR}/${MY_P}"

src_unpack() {
	unpack ${A}
	rm -r "${S}/tests"
}
