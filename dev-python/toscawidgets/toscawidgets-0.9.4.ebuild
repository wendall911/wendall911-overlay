# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

NEED_PYTHON=2.4

inherit distutils

DESCRIPTION="ToscaWidgets is a framework for building reusable web components."
HOMEPAGE="http://toscawidgets.org/"

MY_PN=ToscaWidgets
MY_P=${MY_PN}-${PV}
SRC_URI="http://pypi.python.org/packages/source/T/${MY_PN}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE="test"

RDEPEND="dev-python/webob
		dev-python/simplejson"
DEPEND="virtual/python
		dev-python/setuptools
		dev-python/pudge"

S="${WORKDIR}/${MY_P}"

src_test() {
	PYTHONPATH=. "${python}" setup.py test || die "tests failed"
}
