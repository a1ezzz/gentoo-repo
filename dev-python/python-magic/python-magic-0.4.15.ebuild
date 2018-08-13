# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_{4,5,6} pypy3)

inherit distutils-r1

DESCRIPTION="Access the libmagic file type identification library"
HOMEPAGE="https://github.com/ahupp/python-magic"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~hppa ia64 x86"
IUSE=""

RDEPEND="sys-apps/file[-python]"
DEPEND="${DEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]"

# Needs MacOS python module, bug #659102
RESTRICT="test"

python_test() {
	esetup.py test
}