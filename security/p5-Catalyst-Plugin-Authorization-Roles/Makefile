# $OpenBSD: Makefile,v 1.13 2015/01/21 14:40:11 sthen Exp $

COMMENT=	role based authorization for Catalyst

DISTNAME=	Catalyst-Plugin-Authorization-Roles-0.09
REVISION=	0
CATEGORIES=	security

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan

RUN_DEPENDS=	devel/p5-Set-Object \
		devel/p5-Universal-isa \
		security/p5-Catalyst-Plugin-Authentication
TEST_DEPENDS=devel/p5-Test-Exception

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
