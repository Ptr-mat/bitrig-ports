# $OpenBSD: Makefile,v 1.24 2015/01/22 18:41:16 naddy Exp $

COMMENT=	translate character sets

DISTNAME=	tcs
PKGNAME=	tcs-19950325
REVISION=	0
CATEGORIES=	plan9

MASTER_SITES= 	ftp://plan9.bell-labs.com/plan9/unixsrc/ \
		ftp://ftp.gwdg.de/pub/gnu2/plan9/unixsrc/
EXTRACT_SUFX=	.shar.Z
EXTRACT_CASES=	*.shar.Z) ${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | /bin/sh;;

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MAKE_FLAGS=	CFLAGS="${CFLAGS} -D_POSIX_SOURCE"

ALL_TARGET=	tcs

WRKDIST=	${WRKDIR}

do-test:
	cd ${WRKSRC}; ./regress

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcs ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tcs.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
