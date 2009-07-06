# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

NEED_PYTHON=2.4

inherit distutils

KEYWORDS="~x86 ~amd64"

MY_PN=tg.devtools
MY_P=${MY_PN}-${PV}

DESCRIPTION="Development tools for TurboGears."
HOMEPAGE="http://www.turbogears.org/"
SRC_URI="http://www.turbogears.org/2.0/downloads/current/${MY_P}.tar.gz"
LICENSE="MIT"
SLOT="0"
IUSE=""

# this package is not yet py2.6 ready. Keep deps at =py-2.{4,5} for now.

RDEPEND=">=dev-python/turbogears-2.0.1"
	
DEPEND="${RDEPEND}
	>=dev-python/setuptools-0.6_rc9"

S="${WORKDIR}/${MY_P}"
