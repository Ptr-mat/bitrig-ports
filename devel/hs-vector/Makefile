# $OpenBSD: Makefile,v 1.16 2014/11/22 20:52:12 kili Exp $

# BROKEN-i386 =		duplicate definition for symbol __i686.get_pc_thunk.bx

COMMENT =		Int-indexed arrays

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		vector-0.10.9.1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-primitive>=0.5.0.1,<0.6
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
