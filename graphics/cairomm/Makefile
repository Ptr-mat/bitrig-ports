# $OpenBSD: Makefile,v 1.28 2015/03/16 18:07:46 naddy Exp $

PORTROACH=		limitw:1,even

# no libGL (toolchain issue)
NOT_FOR_ARCHS=	m88k

COMMENT=		C++ interface for cairo

DISTNAME=		cairomm-1.10.0
REVISION=		5

SHARED_LIBS=		cairomm-1.0	5.0 # .5.0

CATEGORIES=		graphics

HOMEPAGE=		http://cairographics.org/cairomm/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xdamage Xdmcp Xext Xfixes Xrender Xxf86vm
WANTLIB += cairo drm expat ffi fontconfig freetype glib-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pcre pixman-1 png pthread-stubs sigc-2.0
WANTLIB += xcb xcb-render xcb-shm z pthread
WANTLIB += c++ c++abi

MASTER_SITES=		http://cairographics.org/releases/

LIB_DEPENDS=		graphics/cairo \
			devel/libsigc++-2

MODULES=		devel/gettext

SEPARATE_BUILD=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/build

.include <bsd.port.mk>
