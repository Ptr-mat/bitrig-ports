# $OpenBSD: Makefile,v 1.5 2015/02/07 21:52:57 sthen Exp $

COMMENT=	create and manage certificates, CSRs, keys, etc

DISTNAME=	xca-1.1.0
CATEGORIES=	security x11

HOMEPAGE=	http://xca.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xca/}

MODULES=	x11/qt4

USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
# yuk, but it does the trick.
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib -L${X11BASE}/lib"
MAKE_FLAGS=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib -L${X11BASE}/lib"
MAKE_ENV=	destdir=${WRKINST}

WANTLIB += QtGui c crypto ltdl m pthread
WANTLIB += c++ c++abi

LIB_DEPENDS=	devel/libtool,-ltdl
RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info

NO_TEST=	Yes

.include <bsd.port.mk>
