# $OpenBSD: Makefile,v 1.10 2014/11/15 22:52:11 sthen Exp $

COMMENT =	miscellaneous unix tools

DISTNAME =	moreutils_0.53
PKGNAME =	${DISTNAME:S/_/-/}
REVISION =	0
WRKDIST =	${WRKDIR}/moreutils

CATEGORIES =	sysutils

HOMEPAGE =	http://joey.kitenet.net/code/moreutils/

# GPLv2+
PERMIT_PACKAGE_CDROM =	 Yes

WANTLIB += c

MASTER_SITES =		${MASTER_SITE_DEBIAN:=main/m/moreutils/}

BUILD_DEPENDS =		textproc/docbook-xsl
RUN_DEPENDS =		devel/p5-IPC-Run \
			devel/p5-Time-Duration \
			devel/p5-Time-TimeDate

FAKE_FLAGS =		PREFIX=${PREFIX}
USE_GMAKE =		Yes
NO_TEST =		Yes

pre-patch:
	perl -pi -e 's,/usr/share/xml/docbook/stylesheet/docbook-xsl/manpages,${LOCALBASE}/share/xsl/docbook/manpages,' ${WRKSRC}/Makefile

.include <bsd.port.mk>
