# $OpenBSD: Makefile,v 1.31 2014/07/10 20:27:43 dcoppa Exp $

COMMENT =	clone of rxvt with Unicode and Xft support

DISTNAME =	rxvt-unicode-9.20
REVISION =	4
CATEGORIES =	x11

EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =	http://dist.schmorp.de/rxvt-unicode/ \
		http://dist.schmorp.de/rxvt-unicode/Attic/

HOMEPAGE =	http://software.schmorp.de/pkg/rxvt-unicode.html

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	X11 Xft Xrender c fontconfig freetype \
		gdk_pixbuf-2.0 glib-2.0 gobject-2.0 m perl \
		pthread startup-notification-1 util z

MODULES =	devel/gettext

LIB_DEPENDS =	devel/startup-notification \
		graphics/gdk-pixbuf2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-256-color \
			--enable-perl \
			--enable-pixbuf \
			--enable-startup-notification \
			--enable-unicode3 \
			--enable-utmp \
			--enable-wtmp
CONFIGURE_ENV +=	CPPFLAGS="-I${X11BASE}/include" \
			pt_cv_tty_group=yes

.include <bsd.port.mk>
