# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

NEED_PYTHON=2.3

inherit distutils

KEYWORDS="~x86 ~amd64"

MY_PN=BytecodeAssembler
MY_P=${MY_PN}-${PV}

DESCRIPTION="peak.util.assembler is a simple bytecode assembler module that handles most low-level bytecode generation details like jump offsets, stack size tracking, line number table generation, constant and variable name index tracking, etc."
HOMEPAGE="http://pypi.python.org/pypi/BytecodeAssembler/"
SRC_URI="http://pypi.python.org/packages/source/B/${MY_PN}/${MY_P}.zip"
LICENSE="|| ( PSF-2.4 ZPL )"
SLOT="0"
IUSE=""

RDEPEND=">=dev-python/decoratortools-1.2
	>=dev-python/symboltype-1.0"
DEPEND="${RDEPEND}
	app-arch/unzip
	>=dev-python/setuptools-0.6_rc9"

S="${WORKDIR}/${MY_P}"
