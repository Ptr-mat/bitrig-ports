# $OpenBSD: Makefile,v 1.10 2013/03/10 23:04:44 espie Exp $

COMMENT=	documentation for autoconf, automake, libtool

V=		1.5
DISTNAME=	autobook-${V}
REVISION=	0
EPOCH=		0
CATEGORIES=	books devel

# Open Publication License
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}
HOMEPAGE=	http://sourceware.org/autobook/

EXTRACT_ONLY=	
NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

DOCDIR=		${PREFIX}/share/doc

do-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	cd ${DOCDIR} && tar -s/autobook-${V}/autobook/g -zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}

.include <bsd.port.mk>
