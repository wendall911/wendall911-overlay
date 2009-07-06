# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

NEED_PYTHON=2.4

inherit distutils

DESCRIPTION="An extension to PEAK-Rules to prioritize methods in order to to avoid AmbiguousMethods situations"
HOMEPAGE="//pypi.python.org/pypi/prioritized_methods/"

MY_PN=prioritized_methods
MY_P=${MY_PN}-${PV}
SRC_URI="http://pypi.python.org/packages/source/p/${MY_PN}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

RDEPEND=">=dev-python/peak-rules-0.5_pre2562"
DEPEND="virtual/python
		dev-python/setuptools"

S="${WORKDIR}/${MY_P}"
