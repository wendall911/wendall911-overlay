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
IUSE=""

RDEPEND="dev-lang/spidermonkey
	dev-libs/boost
	dev-libs/libpcre"

DEPEND="${RDEPEND}
	>=dev-util/scons-1.2.0-r1
	test? ( dev-libs/unittest )"

S="${WORKDIR}/${PN}-mongo-b57918b3a468ba5882f226fc54e00321c20d7f0d"

pkg_setup() {
	enewgroup mongodb
	enewuser mongodb -1 /sbin/nologin /var/lib/mongodb mongodb
}

src_compile() {
	epatch "${FILESDIR}"/modify-*.patch
	scons ${MAKEOPTS} all || die "Compile failed"
}

src_install() {
	scons install --prefix="${D}"/usr || die "Install failed"

	# move mongod to sbin
	dosbin mongod || die "Install failed"
	rm "${D}/usr/bin/mongod"

	for x in /var/{lib,log,run}/${PN}; do
		dodir "${x}"
		fowners mongodb:mongodb "${x}"
	done

	newinitd "${FILESDIR}/${PN}.init-${PV}" mongodb || die "Install failed"
	newconfd "${FILESDIR}/${PN}.conf-${PV}" mongodb || die "Install failed"
}

src_test() {
	scons ${MAKEOPTS} smoke test || die "Tests failed"
}
