# $OpenBSD: Makefile,v 1.28 2014/11/05 11:43:59 sthen Exp $

COMMENT=		DNS relay for ad blocking

DISTNAME=		adsuck-2.5.0
CATEGORIES=		net
REVISION=		3

HOMEPAGE=		http://opensource.conformal.com/wiki/Adsuck
EXTRACT_SUFX=		.tgz

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://opensource.conformal.com/snapshots/adsuck/

WANTLIB += c event_core event_extra ldns pthread

LIB_DEPENDS=	devel/libevent2 \
		net/ldns/libldns>=1.6.5

MAKE_FLAGS=	BINDIR="${TRUEPREFIX}/sbin" \
		MANDIR="${TRUEPREFIX}/man/man"

_files= Hosts.blc Hosts.mis Hosts.pub Hosts.rsk Hosts.sex \
	Hosts.trc hosts.small hosts.yoyo regex resolv.conf

pre-configure:
	${SUBST_CMD} ${WRKSRC}/dhclient-adsuck

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/adsuck
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/adsuck
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/adsuck
	${INSTALL_DATA} ${WRKSRC}/files/README ${PREFIX}/share/doc/adsuck
	${INSTALL_SCRIPT} ${WRKSRC}/dhclient-adsuck ${PREFIX}/sbin

.for _f in ${_files}
	${INSTALL_DATA} ${WRKSRC}/files/${_f} ${PREFIX}/share/examples/adsuck
.endfor

.include <bsd.port.mk>
