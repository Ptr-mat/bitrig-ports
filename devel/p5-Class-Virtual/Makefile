# $OpenBSD: Makefile,v 1.8 2015/01/21 14:27:56 sthen Exp $
COMMENT=	base class for virtual base classes

MODULES=	cpan
DISTNAME=	Class-Virtual-0.06
REVISION=	2
CATEGORIES=	devel

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Data-Inheritable \
		devel/p5-Carp-Assert \
		devel/p5-Class-ISA

# perl
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
