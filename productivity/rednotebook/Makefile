# $OpenBSD: Makefile,v 1.21 2015/02/05 10:28:14 ajacoutot Exp $

COMMENT =		diary and journal application

MODPY_EGG_VERSION =	1.9.0
DISTNAME =		rednotebook-${MODPY_EGG_VERSION}

CATEGORIES =		productivity

HOMEPAGE =		http://rednotebook.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=rednotebook/}

NO_TEST =		Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/xdg-utils \
			textproc/py-chardet \
			textproc/py-yaml \
			www/py-webkitgtk \
			x11/gtk+2,-guic

.include <bsd.port.mk>
