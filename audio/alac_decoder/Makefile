# $OpenBSD: Makefile,v 1.2 2013/03/10 22:55:01 espie Exp $

COMMENT =		basic Apple Lossless Audio Codec decoder

DISTNAME =		alac_decoder-0.2.0
REVISION =		0

CATEGORIES =		audio

HOMEPAGE =		http://crazney.net/programs/itunes/alac.html

# MIT
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB +=		c

MASTER_SITES =		http://crazney.net/programs/itunes/files/
EXTRACT_SUFX =		.tgz

NO_TEST =		Yes

MAKE_FLAGS =		CC="${CC}" CFLAGS="${CFLAGS} -Wall"

WRKDIST =		${WRKDIR}/alac_decoder

ALL_TARGET =		alac

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/alac ${PREFIX}/bin/

.include <bsd.port.mk>
