# $OpenBSD: Makefile,v 1.17 2014/01/10 16:12:52 giovanni Exp $

COMMENT=	lightweight library for extracting data from zip files

DISTNAME=	zziplib-0.13.62
REVISION=	0
CATEGORIES=	archivers

SHARED_LIBS +=	zzip		15.52 \
		zzipfseeko	13.52 \
		zzipmmapped	13.52 \
		zzipwrap	13.52

HOMEPAGE=	http://zziplib.sourceforge.net/

# LGPL/MPL license
PERMIT_PACKAGE_CDROM=		Yes

WANTLIB=	c z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=zziplib/}
EXTRACT_SUFX=	.tar.bz2

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/uses

BUILD_DEPENDS=		archivers/zip

post-extract:
	cd ${WRKDIST}/docs && tar xf ${WRKDIST}/docs/zziplib-manpages.tar

post-install:
	${INSTALL_MAN} ${WRKDIST}/docs/man3/*.3 ${PREFIX}/man/man3/

.include <bsd.port.mk>
