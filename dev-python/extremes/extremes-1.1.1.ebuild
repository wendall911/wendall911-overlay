# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

NEED_PYTHON=2.3

inherit distutils

MY_PN=Extremes
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Production-quality 'Min' and 'Max' objects (adapted from PEP 326)"
HOMEPAGE="http://pypi.python.org/pypi/Extremes"
SRC_URI="http://pypi.python.org/packages/source/E/${MY_PN}/${MY_P}.zip"

LICENSE="|| ( PSF-2.4 ZPL )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="app-arch/unzip
	>=dev-python/setuptools-0.6_rc6"

S="${WORKDIR}/${MY_P}"
