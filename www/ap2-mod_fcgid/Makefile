# $OpenBSD: Makefile,v 1.8 2013/03/21 08:48:55 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		binary compatible alternative to Apache mod_fastcgi
DISTNAME=		mod_fcgid.2.2
PKGNAME=		ap2-mod_fcgid-2.2
REVISION=		3

CATEGORIES=		www

HOMEPAGE=		http://fastcgi.coremail.cn/
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mod-fcgid/}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS+=		www/apache-httpd

NO_TEST=		Yes

pre-configure:
			@perl -pi -e 's,!!PREFIX!!,${PREFIX},' \
        			${WRKSRC}/Makefile

.include <bsd.port.mk>
