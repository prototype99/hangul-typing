# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A DOS typing tutor made by hanmesoft"
HOMEPAGE="http://www.hanmesoft.com/"
SRC_URI="https://gitlab.com/espresso.tiger/hangul-typing-distfiles/raw/master/${P}.zip"
LICENSE="freedist no-source-code"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=app-misc/simple-dosbox-launcher-0.1.1.1"

src_unpack() {
	mkdir "${S}"
}

src_install() {
	dobin "${FILESDIR}/${P}"

	insinto "/usr/share/${P}"
	doins "${DISTDIR}/${A}"
	insinto /usr/share/applications
	doins "${FILESDIR}/${P}.desktop"
}
