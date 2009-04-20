# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="jpeg2pdf is a free program that converts a directory of JPEG (JPG) files to a PDF file. Each page of the PDF file contains one of the JPEG images."
HOMEPAGE="http://koan.studentenweb.org/software/jpeg2pdf.html"
SRC_URI="http://koan.studentenweb.org/software/${P}.tar.bz2"

LICENSE="Freeware"
SLOT="0"
KEYWORDS="x86"
USE_RUBY="any"
IUSE=""

DEPEND="virtual/ruby"

src_install() {
	ruby install.rb config --prefix=${D}/usr || die
	ruby install.rb setup || die
	ruby install.rb install || die
}
