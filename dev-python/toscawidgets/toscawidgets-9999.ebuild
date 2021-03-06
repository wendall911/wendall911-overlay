# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

NEED_PYTHON=2.4

inherit distutils mercurial


DESCRIPTION="ToscaWidgets is a framework for building reusable web components."
HOMEPAGE="http://toscawidgets.org/"
EHG_REPO_URI="http://toscawidgets.org/hg/${PN}"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE="doc examples"

DEPEND="virtual/python
		dev-python/setuptools
		dev-python/webob
		dev-python/simplejson
		dev-python/pudge"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${PN}"

src_install() {
	distutils_src_install
	if use doc ; then
		einfo "Generating docs as requested..."
		/usr/bin/pudge --modules=pudge --documents=doc/index.rst --dest=doc/html
		dohtml -r doc/html/*
	fi
}
