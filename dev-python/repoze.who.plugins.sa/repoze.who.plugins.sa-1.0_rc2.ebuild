# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

NEED_PYTHON=2.4

inherit distutils

DESCRIPTION="The repoze.who SQLAlchemy plugin provides an authenticator and a metadata provider plugins for SQLAlchemy or Elixir-based models."
HOMEPAGE="http://code.gustavonarea.net/repoze.who.plugins.sa/"

MY_PN=repoze.who.plugins.sa
MY_P=${MY_PN}-${PV/_/}
SRC_URI="http://pypi.python.org/packages/source/r/${MY_PN}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE="test"

DEPEND="virtual/python
		dev-python/setuptools
		>=dev-python/repoze.who-1.0.14
		>=dev-python/sqlalchemy-0.5.0"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${MY_P}"

src_test() {
	PYTHONPATH=. "${python}" setup.py test || die "tests failed"
}
