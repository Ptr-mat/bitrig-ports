# $OpenBSD: Makefile,v 1.15 2015/02/16 22:57:12 naddy Exp $

COMMENT =		stylish PDF presentation generator

MODPY_EGG_VERSION =	0.10.4
DISTNAME =		Impressive-${MODPY_EGG_VERSION}
PKGNAME =		impressive-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		productivity
HOMEPAGE =		http://impressive.sourceforge.net/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=impressive/}

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

# Set NO_BUILD to prevent python.port.mk from adding Python to
# BUILD_DEPENDS.
NO_BUILD =		Yes
RUN_DEPENDS =		graphics/py-opengl \
			devel/pygame \
			graphics/py-Pillow \
			devel/xdg-utils

# pdftoppm(1)
RUN_DEPENDS +=		print/poppler,-utils

MODPY_ADJ_FILES =	impressive.py

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/impressive.py ${PREFIX}/bin/impressive
	${INSTALL_MAN} ${WRKSRC}/impressive.1 ${PREFIX}/man/man1/impressive.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/impressive
	${INSTALL_DATA} ${WRKSRC}/demo.pdf ${PREFIX}/share/examples/impressive/.

.include <bsd.port.mk>
