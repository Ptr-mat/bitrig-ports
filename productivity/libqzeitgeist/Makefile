# $OpenBSD: Makefile,v 1.5 2014/11/07 10:40:05 ajacoutot Exp $

COMMENT =		Qt wrapper for Zeitgeist, event logging framework

V =			0.8.0
DISTNAME =		libqzeitgeist-${V}
REVISION =		2

SHARED_LIBS =		qzeitgeist	0.0

CATEGORIES =		productivity

HOMEPAGE =		http://zeitgeist-project.com/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		m
WANTLIB +=		lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB +=		lib/qt4/QtNetwork lib/qt4/QtTest lib/qt4/QtScript
WANTLIB +=		lib/qt4/QtSql lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB +=		lib/qt4/QtXmlPatterns
WANTLIB +=		c++ c++abi pthread

MASTER_SITES =		${MASTER_SITE_KDE:=stable/libqzeitgeist/${V}/src/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake \
			lang/python \
			x11/qt4

BUILD_DEPENDS =		productivity/zeitgeist \
			devel/automoc
RUN_DEPENDS =		productivity/zeitgeist

NO_TEST =		Yes

MODPY_ADJ_FILES =	scripts/onto2cpp.py
MODPY_RUNDEP =		No

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/qzeitgeist
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/* ${PREFIX}/share/qzeitgeist

.include <bsd.port.mk>
