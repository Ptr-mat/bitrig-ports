# $OpenBSD: Makefile,v 1.43 2014/12/30 09:05:20 ajacoutot Exp $

COMMENT=		graphical diff and merge tool

GNOME_VERSION=		3.12.3
GNOME_PROJECT=		meld
SUBST_VARS=		GNOME_VERSION

CATEGORIES=		textproc

HOMEPAGE=		http://meld.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache \
			shared-mime-info yelp

MODPY_ADJ_FILES=	bin/meld

RUN_DEPENDS=		devel/py-gobject3 \
			x11/gtksourceview3

NO_TEST=		yes

do-install:
	${MODPY_CMD} --no-compile-schemas --no-update-icon-cache \
		${MODPY_DISTUTILS_INSTALL}
	mv ${PREFIX}/share/doc/meld{-${GNOME_VERSION},}
	mv ${PREFIX}/{share,}/man/man1/meld.1
	rmdir ${PREFIX}/share/man/{man1,}

.include <bsd.port.mk>
