# $OpenBSD: Makefile,v 1.2 2014/11/27 21:45:36 kili Exp $

COMMENT =		random-number generation monad

DISTNAME =		MonadRandom-0.1.9
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-mtl \
			devel/hs-random

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
