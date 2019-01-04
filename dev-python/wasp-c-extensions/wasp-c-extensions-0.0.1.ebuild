# Copyright 2018 Ildar Gafurov
# Distributed under the terms of the GNU General Public License v3

EAPI=6

PYTHON_COMPAT=( python3_{2,3,4,5,6,7} pypy3 )

inherit distutils-r1

DESCRIPTION="A library with bunch of CPython extensions"
HOMEPAGE="https://github.com/a1ezzz/wasp-c-extensions https://pypi.org/project/wasp-c-extensions"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

DOCS=( README.md )

python_install_all() {
	distutils-r1_python_install_all
}
