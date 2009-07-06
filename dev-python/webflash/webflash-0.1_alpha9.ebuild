# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

NEED_PYTHON=2.4

inherit distutils

DESCRIPTION="WebFlash is a library to display \"flash\" messages in python web applications."
HOMEPAGE="http://python-rum.org/wiki/WebFlash"

MY_PN=WebFlash
MY_P=${MY_PN}-0.1a9
SRC_URI="http://pypi.python.org/packages/source/W/${MY_PN}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE="test"

RDEPEND="dev-python/simplejson"
DEPEND="virtual/python
		dev-python/setuptools"

S="${WORKDIR}/${MY_P}"

src_test() {
	PYTHONPATH=. "${python}" setup.py test || die "tests failed"
}
