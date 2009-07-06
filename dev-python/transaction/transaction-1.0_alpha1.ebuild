# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

NEED_PYTHON=2.4

inherit distutils

DESCRIPTION="Transaction management for Python"
HOMEPAGE="http://www.zope.org/Products/ZODB"

MY_PN=transaction
MY_P=${MY_PN}-1.0a1
SRC_URI="http://pypi.python.org/packages/source/t/${MY_PN}/${MY_P}.tar.gz"

LICENSE="ZPL-2.1"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

RDEPEND="net-zope/zopeinterface"
DEPEND="virtual/python
		dev-python/setuptools"

S="${WORKDIR}/${MY_P}"
