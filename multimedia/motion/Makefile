# $OpenBSD: Makefile,v 1.7 2015/01/30 20:58:18 sthen Exp $

COMMENT=	motion detection software for video

GH_ACCOUNT=	Mr-Dave
GH_PROJECT=	motion
GH_COMMIT=	5c6f4be9e60a5115989b1cf34e14ea7c826bfa8e
V=		3.2.12
DISTNAME=	motion-$V.20150126

CATEGORIES=	multimedia

HOMEPAGE=	http://www.lavrsen.dk/foswiki/bin/view/Motion/

# GPL (according to source files, v2 only. website says v2+).
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += SDL avcodec avformat avutil c jpeg m pthread sqlite3 swscale z

FLAVOR?=
FLAVORS=		mysql pgsql

LIB_DEPENDS=		graphics/jpeg \
			graphics/ffmpeg

FAKE_FLAGS=		docdir=${PREFIX}/share/doc/motion \
			examplesdir=${PREFIX}/share/examples/motion

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-optimizecpu \
			LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

.if ${FLAVOR:L:Mmysql}
LIB_DEPENDS+=		databases/mariadb
WANTLIB+=		lib/mysql/mysqlclient
.else
CONFIGURE_ARGS+=	--without-mysql
.endif

.if ${FLAVOR:L:Mpgsql}
LIB_DEPENDS+=		databases/postgresql
WANTLIB+=		pq
CONFIGURE_ARGS+=	--with-pgsql-lib=${LOCALBASE}/lib
.else
CONFIGURE_ARGS+=	--without-pgsql
.endif

NO_TEST=		Yes

post-extract:
	printf '#!/bin/sh\necho -n "$V-Git-${GH_COMMIT:C/[0-9a-f]{33}$//}"\n' > ${WRKSRC}/version.sh

pre-configure:
	perl -pi -e s,/usr/local/etc,${SYSCONFDIR},g \
		${WRKSRC}/motion-dist.conf.in

.include <bsd.port.arch.mk>

.if ${ARCH:Mamd64}
CFLAGS+=	-mfpmath=sse -msse3
.endif

.include <bsd.port.mk>
