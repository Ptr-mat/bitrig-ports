# $OpenBSD: Makefile,v 1.22 2014/12/24 15:36:07 rpe Exp $

COMMENT =		curses widgets (menus, lists, etc) for shell scripts

V =			1.2-20140911
DISTNAME =		dialog-${V}
PKGNAME =		dialog-${V:S/-/./}

REVISION =		1

CATEGORIES =		misc

HOMEPAGE =		http://invisible-island.net/dialog/dialog.html

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ncurses

MASTER_SITES =		ftp://invisible-island.net/dialog/
EXTRACT_SUFX =		.tgz

MODULES =		devel/gettext

MAKE_FILE =		makefile

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-nls
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib -liconv"

NO_TEST =		Yes

.include <bsd.port.mk>
