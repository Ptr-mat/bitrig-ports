# $OpenBSD: Makefile,v 1.19 2015/01/10 17:29:14 jeremy Exp $

COMMENT=	event-driven I/O for Ruby using the Reactor pattern

DISTNAME=	eventmachine-1.0.4
CATEGORIES=	net devel

HOMEPAGE=	http://rubyeventmachine.com/

# ruby or gpl2
PERMIT_PACKAGE_CDROM=	yes

MODULES=	lang/ruby

WANTLIB=	crypto ssl
WANTLIB +=	c++ c++abi pthread

CONFIGURE_STYLE=ruby gem ext

MODRUBY_TEST =	rake

TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}

do-test:
	cd ${WRKSRC} && ${RUBY} -I tests \
		-e 'ARGV.each{|f| require f}' -- ./tests/test_*.rb

.include <bsd.port.mk>
