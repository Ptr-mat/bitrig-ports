# $OpenBSD: Makefile,v 1.10 2015/03/23 15:26:19 jasper Exp $

COMMENT=	elegant and simple HTTP library for Python

MODPY_EGG_VERSION=2.5.1
DISTNAME=	requests-${MODPY_EGG_VERSION}
REVISION=	0
PKGNAME=	py-requests-${MODPY_EGG_VERSION}

CATEGORIES=	www

HOMEPAGE=	http://python-requests.org/

# APLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=r/requests/}

MODULES=	lang/python

TEST_DEPENDS=	devel/py-py${MODPY_FLAVOR} \
		devel/py-test${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR?=

MODPY_SETUPTOOLS= Yes

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest -v

.include <bsd.port.mk>
