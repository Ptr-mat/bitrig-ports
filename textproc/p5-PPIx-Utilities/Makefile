# $OpenBSD: Makefile,v 1.7 2015/01/21 14:41:37 sthen Exp $

COMMENT=		extensions to PPI

MODULES=		cpan
DISTNAME=		PPIx-Utilities-1.001000
REVISION=		0
CATEGORIES=		textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes

CPAN_AUTHOR=		ELLIOTJS

CONFIGURE_STYLE=	modbuild

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Exception-Class \
			devel/p5-Readonly \
			textproc/p5-PPI

TEST_DEPENDS=	devel/p5-Test-Deep

.include <bsd.port.mk>
