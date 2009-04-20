# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Convert between XML and WBXML using libwbxml2"
HOMEPAGE="http://search.cpan.org/~glasser/XML-WBXML/"
SRC_URI="http://search.cpan.org/CPAN/authors/id/G/GL/GLASSER/${P}.tar.gz"

SLOT="0"
LICENSE="|| ( LGPL-2 )"
KEYWORDS="x86"

DEPEND="
>=dev-libs/libwbxml-0.9.2
dev-lang/perl"
