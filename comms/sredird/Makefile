# $OpenBSD: Makefile,v 1.8 2013/05/16 11:01:09 sthen Exp $

COMMENT=	RFC 2217 compliant serial port redirector

DISTNAME=	sredird-2.2.2
REVISION=	3
CATEGORIES=	comms

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

MASTER_SITES=	http://www.ibiblio.org/pub/Linux/system/serial/

NO_TEST=	Yes

pre-build:
	@perl -pi -e "s,%%LOCALBASE%%,${LOCALBASE},g" ${WRKSRC}/sredird.8

do-build:
	${CC} ${CFLAGS} -Wall -o ${WRKSRC}/sredird ${WRKSRC}/sredird.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sredird ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/sredird.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
