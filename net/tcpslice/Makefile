# $OpenBSD: Makefile,v 1.14 2014/10/13 22:06:25 nigel Exp $

COMMENT=	tool for extracting and gluing pcap (tcpdump) files

GH_ACCOUNT=	the-tcpdump-group
GH_PROJECT=	tcpslice
GH_COMMIT=	2837b722f0a6150971b327a252a59c64b24b9640

DISTNAME=	tcpslice-20140501
CATEGORIES=	net

HOME_PAGE=	https://github.com/the-tcpdump-group/tcpslice

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c pcap

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu

USE_GROFF =	Yes
NO_TEST=	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/tcpslice.1 ${PREFIX}/man/man1/tcpslice.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tcpslice
	${INSTALL_DATA} ${WRKSRC}/CHANGES ${PREFIX}/share/doc/tcpslice
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/tcpslice

.include <bsd.port.mk>
