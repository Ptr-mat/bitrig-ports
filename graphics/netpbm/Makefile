# $OpenBSD: Makefile,v 1.67 2014/11/02 15:42:14 naddy Exp $

COMMENT=	toolkit for converting images between different formats

DISTNAME=	netpbm-10.35.94
SHARED_LIBS=	netpbm	2.0
CATEGORIES=	graphics
HOMEPAGE=	http://netpbm.sourceforge.net/

PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netpbm/}
EXTRACT_SUFX=	.tgz

MODULES=	converters/libiconv gcc4
MODGCC4_ARCHS=  *
MODGCC4_LANGS=  c

WANTLIB=	X11 Xau Xdmcp c jasper jbig jpeg m png pthread-stubs \
		tiff xcb xml2 z
LIB_DEPENDS=	graphics/tiff \
		graphics/jpeg \
		graphics/png \
		graphics/jbigkit>=2.0 \
		graphics/jasper \
		textproc/libxml

USE_GMAKE=	Yes
MAKE_FILE=	GNUmakefile
ALL_TARGET=
INSTALL_TARGET=	install.bin install.lib install.data \
		install.hdr install.staticlib

MAKE_FLAGS=	CC=cc \
		LIBnetpbm_VERSION=${LIBnetpbm_VERSION}
FAKE_FLAGS=	PKGDIR="${WRKINST}${TRUEPREFIX}"

.include <bsd.port.arch.mk>

.if ${NO_SHARED_LIBS:L} == "yes"
MAKE_FLAGS+=	NETPBMLIBTYPE=unixstatic
.else
MAKE_FLAGS+=	NETPBMLIBTYPE=unixshared
.endif

pre-patch:
	@rm -f ${WRKSRC}/converter/other/jpeg2000/libjasper/include/jasper/jas_types.h.orig

pre-build:
	perl -i -p \
	    -e 's#%%X11BASE%%#${X11BASE}#g;' \
	    -e 's#%%PREFIX%%#${PREFIX}#g;' ${WRKSRC}/pm_config.in.h
	cp ${FILESDIR}/Makefile.config.OpenBSD ${WRKSRC}/Makefile.config
# Missing in some releases
	cd ${WRKSRC}; buildtools/stamp-date >lib/compile.h

NO_TEST=	Yes

.include <bsd.port.mk>
