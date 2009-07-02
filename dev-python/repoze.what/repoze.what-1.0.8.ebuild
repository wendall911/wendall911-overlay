# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

NEED_PYTHON=2.4

inherit distutils

DESCRIPTION="repoze.what is an authorization framework for WSGI applications, based on repoze.who"
HOMEPAGE="http://what.repoze.org/docs/1.x/index.html#module-repoze.what"

MY_PN=repoze.what
MY_P=${MY_PN}-${PV}
SRC_URI="http://pypi.python.org/packages/source/r/${MY_PN}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE="test"

DEPEND="virtual/python
		dev-python/setuptools
		>=dev-python/repoze.who-1.0"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${MY_P}"

src_test() {
	PYTHONPATH=. "${python}" setup.py test || die "tests failed"
}
