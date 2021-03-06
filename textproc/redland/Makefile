# $OpenBSD: Makefile,v 1.16 2014/09/13 18:09:22 brad Exp $

MULTI_PACKAGES=		-main -mysql -pgsql

COMMENT-main=		high-level interface for RDF
COMMENT-mysql=		MySQL driver for redland
COMMENT-pgsql=		PostgreSQL driver for redland

V=			1.0.16
DISTNAME=		redland-$V
PKGNAME-main=		redland-$V
PKGNAME-mysql=		redland-mysql-$V
PKGNAME-pgsql=		redland-pgsql-$V
CATEGORIES=		textproc
REVISION=		4
REVISION-pgsql=		5
REVISION-mysql=		3

SHARED_LIBS +=	rdf                  1.0      # 0.0

HOMEPAGE=		http://librdf.org/

MASTER_SITES=		http://download.librdf.org/source/

# LGPL 2.1+, GPL 2+ or Apache 2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += crypto curl gcrypt gmp gpg-error idn ltdl m mpfr
WANTLIB += pthread raptor2 rasqal ssl xml2 xslt yajl z

MODULES=		devel/gettext

LIB_DEPENDS=		devel/libtool,-ltdl \
			textproc/raptor \
			textproc/rasqal

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/build ${WRKSRC}/libltdl/config

CONFIGURE_ARGS=	--with-raptor=system \
		--with-rasqal=system \
		--with-datadirect=no \
		--with-unixodbc=no \
		--with-threestore=no \
		--with-virtuoso=no \
		--with-iodbc=no \
		--with-mysql=yes \
		--with-postgresql=yes \
		--with-sqlite=3 \
		--with-bdb=no \
		--with-threads=yes \
		--with-ltdl-include=${LOCALBASE}/include \
		--with-ltdl-lib=${LOCALBASE}/lib

LIB_DEPENDS-main=	textproc/raptor \
			textproc/rasqal \
			devel/libtool,-ltdl
WANTLIB-main=		${WANTLIB} c sqlite3

LIB_DEPENDS-mysql=	${BASE_PKGPATH},-main \
			databases/mariadb
WANTLIB-mysql=		${WANTLIB} crypto mysqlclient rdf

LIB_DEPENDS-pgsql=	${BASE_PKGPATH},-main \
			databases/postgresql
WANTLIB-pgsql=		${WANTLIB} pq rdf

post-install:
	rm ${PREFIX}/lib/redland/librdf_storage_*.{la,a}

.include <bsd.port.mk>
