# $OpenBSD: Makefile,v 1.24 2014/11/11 08:40:38 jasper Exp $

COMMENT=	software project management and comprehension tool

V=		3.2.3
DISTNAME=	apache-maven-$V
PKGNAME=	${DISTNAME:S/apache-//}
CATEGORIES=	devel

HOMEPAGE=	http://maven.apache.org/

# Apache Software License 2.0
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_APACHE:=maven/maven-3/${V}/binaries/} \
		http://archive.apache.org/dist/maven/binaries/


EXTRACT_SUFX=	-bin.tar.gz

MODULES=	java
MODJAVA_VER=	1.6+
RUN_DEPENDS=	java/javaPathHelper

NO_BUILD=	Yes
NO_TEST=	Yes

MAVEN_HOME=	${LOCALBASE}/maven
SAMPLEDIR=	${PREFIX}/share/examples/maven

SUBST_VARS+=	MAVEN_HOME

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/maven
	${INSTALL_DATA_DIR} ${SAMPLEDIR}
	cd ${WRKDIST} && \
		tar -cf - bin boot lib `find * -prune -type f` | \
		tar -C ${PREFIX}/maven -xf -
	find ${WRKINST} -name \*.orig -or -name \*.bat -or -name \*.exe | \
		xargs rm
	${INSTALL_DATA_DIR} ${SAMPLEDIR}/logging/
	${INSTALL_DATA} ${WRKSRC}/conf/logging/* ${SAMPLEDIR}/logging/
	${INSTALL_DATA} ${WRKSRC}/conf/settings.xml ${SAMPLEDIR}/
	ln -s ${SYSCONFDIR}/maven ${PREFIX}/maven/conf
	${SUBST_CMD} ${WRKSRC}/bin/mvn
	${SUBST_CMD} -c ${FILESDIR}/maven.rc ${SAMPLEDIR}/maven.rc
	${SUBST_CMD} -m 755 -c ${FILESDIR}/mvn ${PREFIX}/bin/mvn

.include <bsd.port.mk>
