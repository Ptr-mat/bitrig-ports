# $OpenBSD: Makefile,v 1.8 2014/11/13 12:14:32 benoit Exp $

COMMENT=        algorithm to find good values for chart axis

MODULES=	cpan
DISTNAME =	Chart-Math-Axis-1.06
CATEGORIES=     math graphics

# Perl
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS =	devel/p5-Params-Util
TEST_DEPENDS =	devel/p5-Test-Taint

MAKE_ENV +=	TEST_POD=Yes AUTOMATED_TESTING=Yes

.include <bsd.port.mk>
