# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="This module wraps the Mozilla DOM interface in Perl."
HOMEPAGE="http://search.cpan.org/~slanning"
SRC_URI="http://search.cpan.org/CPAN/authors/id/S/SL/SLANNING/${P}.tar.gz"

IUSE="firefox"
SLOT="0"
LICENSE="|| ( LGPL-2 )"
KEYWORDS="~amd64 x86"

RDEPEND=">=dev-perl/extutils-depends-0.205
	>=dev-perl/gtk2-perl-1.144
	>=dev-perl/extutils-pkgconfig-1.07
	dev-lang/perl
	firefox? ( www-client/mozilla-firefox )
	!firefox? ( www-client/seamonkey )"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"
