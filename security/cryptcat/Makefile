# $OpenBSD: Makefile,v 1.5 2014/10/25 12:08:49 jasper Exp $

COMMENT=		netcat enhanced with twofish encryption

V=			1.2.1
DISTNAME=		cryptcat-unix-$V
PKGNAME=		cryptcat-$V
REVISION =		1
CATEGORIES=		security

HOMEPAGE=		http://cryptcat.sourceforge.net

# From the README "freely given away
# with no restrictions except giving credit where it is due"
# Added Twofish encryption is under Cryptix General Licence
PERMIT_PACKAGE_CDROM=	No clear Licence
PERMIT_PACKAGE_FTP=	No clear Licence
PERMIT_DISTFILES_FTP=	No clear Licence

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=cryptcat/}

EXTRACT_SUFX=		.tar

ALL_TARGET=		openbsd

WRKDIST=		${WRKDIR}/unix

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cryptcat ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cryptcat
	${INSTALL_DATA} ${WRKSRC}/README* ${PREFIX}/share/doc/cryptcat

.include <bsd.port.mk>
