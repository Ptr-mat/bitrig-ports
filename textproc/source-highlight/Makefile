# $OpenBSD: Makefile,v 1.23 2015/02/16 22:57:13 naddy Exp $

COMMENT=	create a document with syntax highlighting

DISTNAME=	source-highlight-3.1.7
REVISION=	2
SHARED_LIBS +=	source-highlight     1.0      # 4.0
CATEGORIES=	textproc

HOMEPAGE=	https://www.gnu.org/software/src-highlite/

# GPLv3
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	c m boost_regex-mt pthread
WANTLIB +=	c++ c++abi

MASTER_SITES=	${MASTER_SITE_GNU:=src-highlite/}

LIB_DEPENDS=	devel/boost
BUILD_DEPENDS=	devel/doxygen \
		devel/help2man \
		textproc/texi2html
TEST_DEPENDS=	textproc/gsed

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/build-aux

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		--with-bash-completion="${PREFIX}/share/source-highlight/bash_completion.d/"
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

TEST_TARGET=	check

pre-configure:
	perl -pi -e 's,sed -i,gsed -i,' ${WRKSRC}/tests/Makefile.in

.include <bsd.port.mk>
