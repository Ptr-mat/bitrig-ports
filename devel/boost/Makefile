# $OpenBSD: Makefile,v 1.54 2015/01/05 21:14:46 brad Exp $

COMMENT=	free peer-reviewed portable C++ source libraries

VERSION=	1.53.0
DISTNAME=	boost_${VERSION:S/./_/g}
PKGNAME=	boost-${VERSION}
REVISION=	11
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=boost/}
EXTRACT_SUFX=	.tar.bz2

SO_VERSION=	5.1
BOOST_LIBS=	boost_atomic-mt \
		boost_chrono boost_chrono-mt \
		boost_date_time boost_date_time-mt \
		boost_filesystem boost_filesystem-mt \
		boost_graph boost_graph-mt \
		boost_iostreams boost_iostreams-mt \
		boost_locale-mt \
		boost_math_c99 boost_math_c99-mt \
		boost_math_c99f boost_math_c99f-mt \
		boost_math_c99l boost_math_c99l-mt \
		boost_math_tr1 boost_math_tr1-mt \
		boost_math_tr1f boost_math_tr1f-mt \
		boost_math_tr1l boost_math_tr1l-mt \
		boost_prg_exec_monitor boost_prg_exec_monitor-mt \
		boost_program_options boost_program_options-mt \
		boost_python boost_python-mt \
		boost_python3 boost_python3-mt \
		boost_random boost_random-mt \
		boost_regex boost_regex-mt \
		boost_serialization boost_serialization-mt \
		boost_signals boost_signals-mt \
		boost_system boost_system-mt \
		boost_thread-mt \
		boost_timer boost_timer-mt \
		boost_unit_test_framework boost_unit_test_framework-mt \
		boost_wave boost_wave-mt \
		boost_wserialization boost_wserialization-mt

.for _lib in ${BOOST_LIBS}
SHARED_LIBS+=	${_lib} ${SO_VERSION}
.endfor

HOMEPAGE=	http://www.boost.org/

# MIT-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c bz2 m pthread util z
WANTLIB+=	c++ c++abi

MODULES=	converters/libiconv \
		lang/python
MODPY_RUNDEP=	No

BUILD_DEPENDS+=	lang/python/${MODPY_DEFAULT_VERSION_3}
LIB_DEPENDS=	archivers/bzip2

MAKE_ENV=	GCC="${CC}" GXX="${CXX}"

BJAM_CONFIG=	-sICONV_PATH=${LOCALBASE} \
		-sBZIP2_INCLUDE=${LOCALBASE}/include \
		-sBZIP2_LIBPATH=${LOCALBASE}/lib \
		-d+2 -q \
		-j ${MAKE_JOBS} \
		cflags='${CFLAGS}' cxxflags='${CXXFLAGS}' \
		python=${MODPY_VERSION} \
		variant=release link=static,shared threading=single,multi \
		--layout=tagged

# context uses MD bits and is missing support for Alpha,
# PA-RISC, SPARC and SuperH. The author does not care
# care about adding support for Alpha and PA-RISC.
BOOTSTRAP=	--with-toolset=clang \
		--with-python=${MODPY_BIN} \
		--with-python-root=${LOCALBASE} \
		--with-python-version=${MODPY_VERSION} \
		--without-icu \
		--without-libraries=context

# python.port.mk makes assumptions about an empty CONFIGURE_STYLE
CONFIGURE_STYLE= none
CONFIGURE_ENV=	BJAM_CONFIG="${BJAM_CONFIG}"

DPB_PROPERTIES= parallel

NO_TEST=	Yes

SUBST_VARS+=	SO_VERSION

do-configure:
	echo "using python : ${MODPY_DEFAULT_VERSION_3} : ${LOCALBASE}/bin/python${MODPY_DEFAULT_VERSION_3} : ${LOCALBASE}/include/python${MODPY_DEFAULT_VERSION_3}$$(python${MODPY_DEFAULT_VERSION_3}-config --abiflags) ;" >> ${WRKSRC}/tools/build/v2/user-config.jam
	@${SUBST_CMD} ${WRKSRC}/Jamroot
	@cd ${WRKSRC}/libs/config && \
	    ${SETENV} ${CONFIGURE_ENV} /bin/sh ./configure && \
	    cp user.hpp ${WRKSRC}/boost/config
	@cd ${WRKSRC} && chmod -R a+x ./ && \
	    /bin/sh ./bootstrap.sh ${BOOTSTRAP}

do-build:
	@cd ${WRKSRC} && \
	    ./bjam ${BJAM_CONFIG}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tools/build/v2/engine/bin.*/bjam \
	    ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/stage/lib/lib!(*.so) ${PREFIX}/lib
	@cd ${WRKSRC} && \
	    find boost -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/include/{} \;
	@cd ${WRKSRC} && \
	    find boost ! -name \*.orig -type f -exec ${INSTALL_DATA} {} ${PREFIX}/include/{} \;

.include <bsd.port.mk>
