# $OpenBSD: Makefile,v 1.3 2014/12/10 20:20:47 zhuk Exp $

BROKEN = 		needs work on bitrig

SHARED_ONLY =		Yes
COMMENT =		Qt-based library for writing accessibility apps
DISTNAME =		libqaccessibilityclient-0.1.1
REVISION =	1

SHARED_LIBS =		qaccessibilityclient	0.0

CATEGORIES =		x11 devel
HOMEPAGE =		https://projects.kde.org/projects/playground/accessibility/libkdeaccessibilityclient

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtTest c m pthread

MASTER_SITES =		${MASTER_SITE_KDE:=stable/libqaccessibilityclient/}
EXTRACT_SUFX =		.tar.bz2
DIST_SUBDIR =		kde

MODULES =		devel/cmake gcc4 x11/qt4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c++

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Qt5Widgets=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_Qt5DBus=Yes

NO_TEST =		Yes

.include <bsd.port.mk>
