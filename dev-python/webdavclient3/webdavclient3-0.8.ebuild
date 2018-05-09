# Copyright 2018 Ildar Gafurov
# Distributed under the terms of the GNU General Public License v3

EAPI=6

PYTHON_COMPAT=( python3_{4,5,6} )

inherit distutils-r1

DESCRIPTION="WebDAV client"
HOMEPAGE="https://github.com/ezhov-evgeny/webdav-client-python-3 https://pypi.org/project/webdavclient3/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

DOCS=( README.rst )

PATCHES=(
	"${FILESDIR}"/${PN}-0.8-client-list.patch
	"${FILESDIR}"/${PN}-0.8-mkdir-return-codes.patch
)

python_install_all() {
	distutils-r1_python_install_all
}
