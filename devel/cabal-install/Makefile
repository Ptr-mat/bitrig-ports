# $OpenBSD: Makefile,v 1.16 2014/11/22 20:31:29 kili Exp $

COMMENT =	command-line interface for Cabal and Hackage

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =	cabal-install-1.18.0.5
CATEGORIES =	devel

HOMEPAGE =	http://www.haskell.org/cabal/

# BSD3
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =		c m pthread util z

MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =          cabal hackage nort

BUILD_DEPENDS +=	devel/hs-mtl>=2.0,<3 \
			devel/hs-network>=1,<3 \
			devel/hs-random>=1,<1.1 \
			devel/hs-stm>=2.0,<3 \
			net/hs-HTTP>=4000.0.2,<4001 \
			archivers/hs-zlib>=0.5.3,<0.6

.include <bsd.port.mk>
