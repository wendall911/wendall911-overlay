# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

NEED_PYTHON=2.4

inherit distutils

DESCRIPTION="repoze.who is an identification and authentication framework for arbitrary WSGI applications. It acts as WSGI middleware."
HOMEPAGE="http://static.repoze.org/whodocs/index.html#module-repoze.who"

MY_PN=repoze.who
MY_P=${MY_PN}-${PV}
SRC_URI="http://pypi.python.org/packages/source/r/${MY_PN}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE="test"

DEPEND="virtual/python
		dev-python/setuptools
		>dev-python/paste-1.7"
RDEPEND="${DEPEND}"
PDEPEND=">=dev-python/repoze.who-testutil-1.0.2"

S="${WORKDIR}/${MY_P}"

src_test() {
	PYTHONPATH=. "${python}" setup.py test || die "tests failed"
}
