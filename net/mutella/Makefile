# $OpenBSD: Makefile,v 1.11 2013/03/11 11:35:49 espie Exp $

BROKEN= 		needs work on bitrig

COMMENT=		gnutella client with an easy to use interface

DISTNAME=		mutella-0.4.5
REVISION=		3
CATEGORIES=		net

HOMEPAGE=		http://mutella.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c curses m pthread readline z
WANTLIB +=		c++ c++abi
LIB_DEPENDS=		devel/readline

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mutella/}

SEPARATE_BUILD=		Yes

CONFIGURE_STYLE=	gnu
USE_GROFF =		Yes

.include <bsd.port.mk>
