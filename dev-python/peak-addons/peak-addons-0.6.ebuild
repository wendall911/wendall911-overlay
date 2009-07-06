# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

NEED_PYTHON=2.3

inherit distutils

MY_PN=AddOns
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Dynamically extend other objects with AddOns (formerly ObjectRoles)"
HOMEPAGE="http://pypi.python.org/pypi/AddOns/"
SRC_URI="http://pypi.python.org/packages/source/A/${MY_PN}/${MY_P}.zip"

LICENSE="|| ( PSF-2.4 ZPL )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-python/decoratortools-1.5"
DEPEND="app-arch/unzip
	>=dev-python/setuptools-0.6_rc6"

S="${WORKDIR}/${MY_P}"
