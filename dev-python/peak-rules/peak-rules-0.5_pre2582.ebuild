# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

NEED_PYTHON=2.3

inherit distutils

KEYWORDS="~x86 ~amd64"

MY_PN=PEAK-Rules
MY_P=${MY_PN}-0.5a1.dev-r2582

DESCRIPTION="PEAK-Rules is a highly-extensible framework for creating and using generic functions, from the very simple to the very complex"
HOMEPAGE="http://pypi.python.org/pypi/PEAK-Rules"
SRC_URI="http://peak.telecommunity.com/snapshots/${MY_P}.tar.gz"
LICENSE="|| ( PSF-2.4 ZPL )"
SLOT="0"
IUSE=""

RDEPEND=">=dev-python/bytecodeassembler-0.3
	>=dev-python/decoratortools-1.7_pre2450
	>=dev-python/peak-addons-0.6
	>=dev-python/extremes-1.1"
DEPEND="${RDEPEND}
	>=dev-python/setuptools-0.6_rc9"

S="${WORKDIR}/${MY_P}"
