# $OpenBSD: Makefile,v 1.9 2015/01/21 14:27:59 sthen Exp $

COMMENT=		Erlang inspired babysitting

DISTNAME=		POE-Component-Supervisor-0.08

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan

RUN_DEPENDS=		devel/p5-Devel-PartialDump \
			devel/p5-POE-API-Peek \
			devel/p5-MooseX-POE \
			devel/p5-MooseX-LogDispatch \
			devel/p5-Set-Object \
			devel/p5-Hash-Util-FieldHash-Compat
BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/p5-Log-Dispatch-Config-TestLog

.include <bsd.port.mk>
