# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

NEED_PYTHON=2.4

inherit distutils

DESCRIPTION="repoze.who-friendlyform is a repoze.who plugin which provides a collection of developer-friendly form plugins, although for the time being such a collection has only one item."
HOMEPAGE="http://code.gustavonarea.net/repoze.who-friendlyform/"

MY_PN=repoze.who-friendlyform
MY_P=${MY_PN}-1.0b3
SRC_URI="http://pypi.python.org/packages/source/r/${MY_PN}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE="test"

DEPEND="virtual/python
		dev-python/setuptools
		>=dev-python/repoze.who-1.0
		net-zope/zopeinterface"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${MY_P}"

src_test() {
	PYTHONPATH=. "${python}" setup.py test || die "tests failed"
}
