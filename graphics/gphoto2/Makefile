# $OpenBSD: Makefile,v 1.31 2014/12/22 14:26:23 ajacoutot Exp $

COMMENT=		digital camera command-line interface

VERSION=		2.5.6
DISTNAME=		gphoto2-${VERSION}
PKGNAME=		gphoto-${VERSION}

CATEGORIES=		graphics

HOMEPAGE=		http://gphoto.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c cdk exif gphoto2 gphoto2_port jpeg ltdl m ncurses
WANTLIB += popt pthread readline

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gphoto/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			POPT_CFLAGS="-I${LOCALBASE}/include" \
			POPT_LIBS="-I${LOCALBASE}/lib -lpopt"

MODULES =	devel/gettext
LIB_DEPENDS =	graphics/libgphoto2 \
		devel/popt \
		devel/readline

CONFIGURE_ARGS=		${CONFIGURE_SHARED}

# checking how to link with libintl... /usr/local/lib/libintl.a ...
# (we want -lintl)
MAKE_FLAGS=		INTLLIBS='$$(LTLIBINTL)'

.include <bsd.port.mk>
