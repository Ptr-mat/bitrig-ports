# $OpenBSD: Makefile,v 1.53 2015/03/16 18:07:44 naddy Exp $

COMMENT=	perl-compatible regular expression library

DISTNAME=	pcre-8.35

REVISION=	3

SHARED_LIBS +=  pcre                 3.0      # 0.1
SHARED_LIBS +=  pcre16               0.0      # 0.0
SHARED_LIBS +=  pcreposix            1.5      # 0.0
SHARED_LIBS +=  pcrecpp              3.3      # 0.0

CATEGORIES=	devel
DPB_PROPERTIES=	parallel

MASTER_SITES=	ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/ \
		${MASTER_SITE_SOURCEFORGE:=pcre/}

HOMEPAGE=	http://www.pcre.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c curses m readline
WANTLIB += c++ c++abi pthread
LIB_DEPENDS=		devel/readline

USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-pcre8 \
			--enable-pcre16 \
			--enable-utf \
			--enable-unicode-properties \
			--enable-pcretest-libreadline

CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

# XXX compiler bugs
.if ${MACHINE_ARCH} == "vax"
CFLAGS+=	-O0
.endif

.include <bsd.port.mk>
