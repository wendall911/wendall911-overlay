# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

NEED_PYTHON=2.4

inherit distutils

DESCRIPTION="tw.forms is a library of widgets for building HTML forms. It enables the rapid creation of forms, with server-side validation that returns clear error messages to users."
HOMEPAGE="http://toscawidgets.org/"

MY_PN=tw.forms
MY_P=${MY_PN}-${PV}
SRC_URI="http://pypi.python.org/packages/source/t/${MY_PN}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE="test"

DEPEND="virtual/python
		dev-python/setuptools
		dev-python/pudge
		>=dev-python/formencode-1.1
		=dev-python/toscawidgets-0.9.3"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${MY_P}"

src_test() {
	PYTHONPATH=. "${python}" setup.py test || die "tests failed"
}
