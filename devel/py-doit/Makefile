# $OpenBSD: Makefile,v 1.7 2015/02/03 23:30:54 bcallah Exp $

COMMENT =	automation tool
MODPY_EGG_VERSION =	0.27.0
DISTNAME =	doit-${MODPY_EGG_VERSION}
PKGNAME =	py-doit-${MODPY_EGG_VERSION}
REVISION =	0
CATEGORIES =	devel

HOMEPAGE =	http://pydoit.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://pypi.python.org/packages/source/d/doit/

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/py-six

NO_TEST =	Yes

.include <bsd.port.mk>
