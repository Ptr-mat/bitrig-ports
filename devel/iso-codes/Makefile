# $OpenBSD: Makefile,v 1.45 2014/10/26 13:48:03 jasper Exp $

COMMENT=	lists of the country, language and currency iso names

DISTNAME=	iso-codes-3.57

CATEGORIES=	devel

HOMEPAGE=	http://alioth.debian.org/projects/pkg-isocodes/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://pkg-isocodes.alioth.debian.org/downloads/
EXTRACT_SUFX=	.tar.xz

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

MODULES=	lang/python
MODPY_RUNDEP=	No
MODPY_ADJ_FILES=iso2pot.py

BUILD_DEPENDS=	devel/gettext

.include <bsd.port.mk>
