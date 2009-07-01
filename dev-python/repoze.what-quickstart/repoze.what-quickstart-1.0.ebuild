# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

NEED_PYTHON=2.4

inherit distutils

DESCRIPTION="Configures repoze.who and repoze.what in one go so that you can
have an authentication and authorization system working quickly - hence the
name."
HOMEPAGE="http://code.gustavonarea.net/repoze.what-quickstart/"

MY_PN=repoze.what-quickstart
MY_P=${MY_PN}-${PV}
SRC_URI="http://pypi.python.org/packages/source/r/${MY_PN}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE="test"

DEPEND="virtual/python
		dev-python/setuptools
		>=dev-python/repoze.what-1.0.3
		>=dev-python/repoze.who.plugins.sa-1.0_rc2
		dev-python/repoze.what.plugins.sql
		dev-python/repoze.who-friendlyform"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${MY_P}"

src_test() {
	PYTHONPATH=. "${python}" setup.py test || die "tests failed"
}
