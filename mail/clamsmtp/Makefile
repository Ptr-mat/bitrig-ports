# $OpenBSD: Makefile,v 1.14 2015/01/22 21:17:46 naddy Exp $

COMMENT=	SMTP virus filter

DISTNAME=	clamsmtp-1.10
REVISION=	0
CATEGORIES=    	mail

HOMEPAGE=	http://memberwebs.com/stef/software/clamsmtp/

MASTER_SITES=	${HOMEPAGE}

RUN_DEPENDS=	security/clamav

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c pthread

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/clamsmtp
	${INSTALL_DATA} ${WRKSRC}/doc/clamsmtpd.conf \
	    ${PREFIX}/share/examples/clamsmtp

.include <bsd.port.mk>
