# $OpenBSD: Makefile,v 1.5 2015/01/12 15:23:09 sthen Exp $

SHARED_LIBS +=	lz4                       0.1 # 0.0

COMMENT=	fast BSD-licensed data compression

GH_ACCOUNT=	Cyan4973
GH_PROJECT=	lz4
GH_TAGNAME=	r127
DISTNAME=	lz4-${GH_TAGNAME}
PKGNAME=	lz4-0.${GH_TAGNAME:S/r//}
WRKDIST=	${WRKDIR}/lz4-${GH_TAGNAME}

CATEGORIES=	archivers

HOMEPAGE=	http://fastcompression.blogspot.com/p/lz4.html

# library: BSD, tools: GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

USE_GMAKE=	Yes
MAKE_FLAGS=	CC="${CC}" \
		CFLAGS="${CFLAGS}" \
		MANDIR="${WRKINST}/${PREFIX}/man/man1" \
		SONAME_FLAGS= \
		SHARED_EXT_VER="so.${LIBlz4_VERSION}"
FAKE_FLAGS=	DESTDIR=

.include <bsd.port.mk>
