# $OpenBSD: Makefile,v 1.54 2014/08/22 20:42:57 bluhm Exp $

SHARED_ONLY =		Yes

COMMENT =		perl module for using OpenSSL

DISTNAME =		Net-SSLeay-1.66

CATEGORIES =		security

HOMEPAGE =		http://alioth.debian.org/projects/net-ssleay

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c crypto ssl z

MODULES =		cpan
TEST_DEPENDS =		devel/p5-Test-Exception \
			devel/p5-Test-Warn \
			devel/p5-Test-NoWarnings \
			devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

MODCPAN_EXAMPLES =	Yes
SRCDIR = 		${WRKSRC}/${MODCPAN_EXAMPLES_DIST}

post-install:
	${MODCPAN_POST_INSTALL}
	${INSTALL_DATA} ${SRCDIR}/*.conf ${SRCDIR}/*.pem ${MODCPAN_EXAMPLES_DIR}

.include <bsd.port.mk>
