# $OpenBSD: Makefile,v 1.38 2014/11/09 07:52:10 benoit Exp $

COMMENT =		tar-like secure remote deduplicating archiver

DISTNAME =		cyphertite-2.0.4
CATEGORIES =		sysutils archivers security

HOMEPAGE =		https://www.cyphertite.com/

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		assl>=6 c clog crypto curl edit event_core expat \
			exude>=2 ncurses pthread shrink>=2 sqlite3 ssl util \
			xmlsd>=3

MASTER_SITES =		https://opensource.conformal.com/snapshots/cyphertite/

LIB_DEPENDS =		archivers/libshrink>=0.5.0	\
			devel/libclog>=0.6.0		\
			devel/libevent2			\
			devel/libexude>=0.7.0		\
			net/curl			\
			security/assl>=1.5.0		\
			textproc/libxmlsd>=0.9.0

post-extract:
	@cp ${WRKDIST}/config/Makefile.openbsd ${WRKDIST}/config/Makefile.bitrig

.include <bsd.port.mk>
