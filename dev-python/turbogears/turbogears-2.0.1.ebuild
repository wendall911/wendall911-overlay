# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

NEED_PYTHON=2.4

inherit distutils

KEYWORDS="~x86 ~amd64"

MY_PN=TurboGears2
MY_P=${MY_PN}-${PV}

DESCRIPTION="The rapid web development meta-framework you've been looking for."
HOMEPAGE="http://www.turbogears.org/"
SRC_URI="http://www.turbogears.org/2.0/downloads/current/${MY_P}.tar.gz"
LICENSE="MIT"
SLOT="0"
IUSE=""

# this package is not yet py2.6 ready. Keep deps at =py-2.{4,5} for now.

RDEPEND=">=dev-python/pylons-0.9.7
	>=dev-python/genshi-0.5.1
	>=dev-python/webflash-0.1_alpha8
	>=dev-python/toscawidgets-0.9.4
	>=dev-python/weberror-0.10.1
	>=dev-python/repoze.what-pylons-1.0_rc3
	>=dev-python/repoze.tm2-1.0_alpha4
	>=dev-python/turbojson-1.2.1
	>=dev-python/sqlalchemy-migrate-0.5.2
	>=dev-python/transaction-1.0_alpha1"
DEPEND="${RDEPEND}
	app-arch/unzip
	>=dev-python/setuptools-0.6_rc9"
PDEPEND=">=dev-python/tg.devtools-2.0.1"

S="${WORKDIR}/${MY_P}"
