# $OpenBSD: Makefile,v 1.3 2014/11/28 22:47:08 sthen Exp $

PKG_ARCH=		*
COMMENT=		small expressive ORM

MODPY_EGG_VERSION=	2.4.3
DISTNAME=		peewee-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		databases

HOMEPAGE=		http://docs.peewee-orm.com/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

GH_ACCOUNT=		coleifer
GH_PROJECT=		peewee
GH_TAGNAME=		${MODPY_EGG_VERSION}
GH_COMMIT=		77478b4d98ce4dd521c860b3f9fa3ec606a17eec

BUILD_DEPENDS =		textproc/py-sphinx

FLAVORS=		python3
FLAVOR?=

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

MAKE_ENV +=	PYTHONPATH=${WRKSRC}
DOCSRC =	${WRKSRC}/docs
post-build:
	cd ${DOCSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html
	cd ${DOCSRC} && PYTHONPATH=${WRKSRC} \
		${LOCALBASE}/bin/sphinx-build -N . _build/html

DOCS =		${PREFIX}/share/doc/${MODPY_PY_PREFIX}peewee
EXAMPLES =	${PREFIX}/share/examples/${MODPY_PY_PREFIX}peewee
post-install:
	${INSTALL_DATA_DIR} ${DOCS}
	cd ${DOCSRC}/_build/html && pax -rw * ${DOCS}
	${INSTALL_DATA_DIR} ${EXAMPLES}
	cd ${WRKSRC}/examples && pax -rw * ${EXAMPLES}
	mv ${PREFIX}/bin/pwiz.py ${PREFIX}/bin/pwiz${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
