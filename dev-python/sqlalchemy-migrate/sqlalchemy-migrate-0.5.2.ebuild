# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

NEED_PYTHON=2.4

inherit distutils

DESCRIPTION="Database schema migration for SQLAlchemy"
HOMEPAGE="http://code.google.com/p/sqlalchemy-migrate/"

MY_PN=sqlalchemy-migrate
MY_P=${MY_PN}-${PV}
SRC_URI="http://pypi.python.org/packages/source/s/${MY_PN}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

RDEPEND=">=dev-python/sqlalchemy-0.5"
DEPEND="virtual/python
		dev-python/setuptools"

S="${WORKDIR}/${MY_P}"
