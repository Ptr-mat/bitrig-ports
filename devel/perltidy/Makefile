# $OpenBSD: Makefile,v 1.17 2013/03/11 10:50:24 espie Exp $

COMMENT =	tool to indent and reformat perl scripts

V =	 	20121207
DISTNAME =	Perl-Tidy-$V
PKGNAME =	perltidy-$V
REVISION =	0
CATEGORIES =	devel

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=perltidy/}

HOMEPAGE =	http://perltidy.sourceforge.net/

# GPL v2
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	perl

PKG_ARCH =	*

DOCS =		tutorial.pod testfile.pl stylekey.pod

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/perltidy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/perltidy
.for f in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/docs/${f} ${PREFIX}/share/doc/perltidy
.endfor
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/perltidy

.include <bsd.port.mk>
