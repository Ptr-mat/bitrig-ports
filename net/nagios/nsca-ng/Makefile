# $OpenBSD: Makefile,v 1.9 2014/10/23 14:29:23 sthen Exp $

COMMENT-main=	server to accept passive check results for Nagios/Icinga
COMMENT-client=	client to send passive check results to Nagios/Icinga

V=		1.4
DISTNAME=	nsca-ng-$V
PKGNAME-main=	nsca-ng-$V
REVISION=	0
PKGNAME-client=	nsca-ng-client-$V
CATEGORIES=	net

HOMEPAGE=	https://www.nsca-ng.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c ev lib/eopenssl/crypto lib/eopenssl/ssl
WANTLIB-main=	${WANTLIB} confuse

MASTER_SITES=		https://www.nsca-ng.org/download/

LIB_DEPENDS=		devel/libev \
			security/openssl
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			devel/libconfuse

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-server
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include/eopenssl" \
			LDFLAGS="-L${LOCALBASE}/lib/eopenssl -Wl,-rpath,${LOCALBASE}/lib/eopenssl"
SEPARATE_BUILD=		Yes

MULTI_PACKAGES=		-main -client

RUN_DEPENDS-main=	icinga-*|nagios-*:net/nagios/nagios
FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/nsca-ng

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/nagios/
	cd ${WRKSRC}/contrib; ${INSTALL_DATA} README acknowledge debug_server \
	    disable_notifications downtime enable_notifications invoke_check \
	    ${PREFIX}/share/examples/nsca-ng/
	ln -s ${TRUEPREFIX}/sbin/send_nsca ${PREFIX}/libexec/nagios/send_nsca

.include <bsd.port.mk>
