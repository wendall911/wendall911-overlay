# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

NEED_PYTHON=2.4

inherit distutils

DESCRIPTION="repoze.tm2 is WSGI middleware which uses the ZODB package's transaction manager to wrap a call to its pipeline children inside a transaction."
HOMEPAGE="http://docs.repoze.org/tm2/"

MY_PN=repoze.tm2
MY_P=${MY_PN}-1.0a4
SRC_URI="http://pypi.python.org/packages/source/r/${MY_PN}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE="test"

RDEPEND=">=dev-python/repoze.who-1.0
		net-zope/zopeinterface"
DEPEND="virtual/python
		dev-python/setuptools"

S="${WORKDIR}/${MY_P}"

src_test() {
	PYTHONPATH=. "${python}" setup.py test || die "tests failed"
}
