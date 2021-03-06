# $OpenBSD: Makefile,v 1.30 2014/10/24 15:01:17 dcoppa Exp $

COMMENT=	administration and development platform for PostgreSQL

V=		1.18.1
REVISION=	2
DISTNAME=	pgadmin3-$V
CATEGORIES=	databases devel

HOMEPAGE=	http://www.pgadmin.org/

# Artistic license
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m pthread crypto z
WANTLIB+=	c++ c++abi

MASTER_SITES=	ftp://ftp2.uk.postgresql.org/sites/ftp.postgresql.org/pgadmin3/release/v$V/src/ \
    ftp://ftp5.us.postgresql.org/pub/PostgreSQL/pgadmin3/release/v$V/src/ \
    ftp://ftp5.es.postgresql.org/mirror/postgresql/pgadmin3/release/v$V/src/ \
    ftp://ftp.postgresql.org/pub/pgadmin3/release/v$V/src/

LIB_DEPENDS=	x11/wxWidgets>=2.8.7 \
		databases/postgresql \
		textproc/libxml>=2.4.8 \
		textproc/libxslt
WANTLIB +=      wx_base_xml wx_gtk2_html \
		wx_gtk2_stc wx_gtk2_adv wx_gtk2_aui wx_gtk2_xrc \
		wx_base_net wx_base wx_gtk2_core \
		pq>=4 xml2>=6 xslt>=3

BUILD_DEPENDS +=	databases/postgresql,-server \
			textproc/py-sphinx

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="${CXXFLAGS}"
CONFIGURE_ARGS=	--with-pgsql=${LOCALBASE} 

USE_GMAKE=	Yes

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

.include <bsd.port.mk>
