# $OpenBSD: Makefile,v 1.40 2015/03/22 07:39:48 ajacoutot Exp $

PORTROACH=	limitw:1,even

SHARED_ONLY=	Yes

COMMENT=	library for loading and enumurating of PKCS\#11 modules

DISTNAME=	p11-kit-0.22.1
REVISION=	0

CATEGORIES=	security

SHARED_LIBS +=  p11-kit              1.2      # 0.0

HOMEPAGE=	http://p11-glue.freedesktop.org/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi pthread tasn1

MASTER_SITES=	${HOMEPAGE}releases/

MODULES=	devel/gettext

LIB_DEPENDS=	devel/libffi \
		security/libtasn1

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-module-path=${PREFIX}/lib/pkcs11 \
		--with-trust-paths=/etc/ssl/cert.pem

# no translation yet
CONFIGURE_ARGS += --disable-nls

FAKE_FLAGS=	exampledir=${PREFIX}/share/examples/p11-kit/pkcs11

post-install:
# see the install-exec-hook target in p11-kit/Makefile.am
	ln -sf libp11-kit.so.${LIBp11-kit_VERSION} ${PREFIX}/lib/p11-kit-proxy.so
	rm ${PREFIX}/lib/pkcs11/*.{a,la}

.include <bsd.port.mk>
