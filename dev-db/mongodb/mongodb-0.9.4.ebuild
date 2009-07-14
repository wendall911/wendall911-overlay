# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit eutils

DESCRIPTION="A high-performance, open source, schema-free document-oriented database"
HOMEPAGE="http://www.mongodb.org"
SRC_URI="http://github.com/mongodb/mongo/tarball/r${PV} -> ${P}.tar.gz"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="dev-lang/spidermonkey
	dev-libs/boost
	dev-libs/libpcre"

DEPEND="${RDEPEND}
	>=dev-util/scons-1.2.0-r1
	test? ( dev-libs/unittest )"

S="${WORKDIR}/${PN}-mongo-0efc7afe282a86e34975d97fa3f847c32a12a4dd"

pkg_setup() {
	enewgroup mongodb
	enewuser mongodb -1 /bin/bash /var/lib/mongodb mongodb
}

src_compile() {
	if use test ; then
		epatch ${FILESDIR}/modify-testing.patch
	fi
	scons ${MAKEOPTS} all || die "Compile failed"
}

src_install() {
	scons install --prefix="${D}/usr" || die "Install failed"

	dodir /var/run/mongodb
	dodir /var/lib/mongodb
	dodir /var/log/mongodb

	fowners mongodb:mongodb \
		/var/run/mongodb \
		/var/lib/mongodb \
		/var/log/mongodb

	newinitd "${FILESDIR}/mongodb.init-${PV}" mongodb || die
	newconfd "${FILESDIR}/mongodb.conf-${PV}" mongodb || die
}

src_test() {
	scons ${MAKEOPTS} smoke test || die "Tests failed"
}
