# $OpenBSD: Makefile,v 1.4 2013/03/11 11:35:45 espie Exp $

COMMENT =	multi threaded HTTP download accelerator
DISTNAME =	aget-0.4.1
REVISION =	0
CATEGORIES =	net

HOMEPAGE=	http://www.enderunix.org/aget/
MASTER_SITES =	${HOMEPAGE}

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c pthread

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/aget ${PREFIX}/bin

#directly uses gcc
MODULES +=      gcc4
MODGCC4_ARCHS += *
MODGCC4_LANGS =  c 

.include <bsd.port.mk>
