# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

NEED_PYTHON=2.4

inherit distutils

DESCRIPTION="Provides group and permission adapters that enable you to store your groups and permissions in databases, as well as a module with some utilities to get started with repoze.who and repoze.what very quickly."
HOMEPAGE="http://what.repoze.org/docs/1.x/Manual/Plugins/index.html"

MY_PN=repoze.what.plugins.sql
MY_P=${MY_PN}-${PV/_/}
SRC_URI="http://pypi.python.org/packages/source/r/${MY_PN}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE="test"

DEPEND="virtual/python
		dev-python/setuptools
		>=dev-python/repoze.what-1.0.3
		>=dev-python/sqlalchemy-0.5.0"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${MY_P}"

src_test() {
	PYTHONPATH=. "${python}" setup.py test || die "tests failed"
}
