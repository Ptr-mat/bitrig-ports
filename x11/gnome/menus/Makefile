# $OpenBSD: Makefile,v 1.75 2014/04/19 08:32:20 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		implementation of the FreeDesktop Desktop Menu Spec

GNOME_PROJECT=		gnome-menus
GNOME_VERSION=		3.10.1
REVISION=		2

SHARED_LIBS +=  gnome-menu-3         0.0      # 0.0

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 pcre pthread
WANTLIB += z

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_TOOLS += 	gobject-introspection

LIB_DEPENDS=		devel/glib2

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gnome-menus

pre-configure:
	${SUBST_CMD} ${WRKSRC}/layout/gnome-applications.menu

.include <bsd.port.mk>
