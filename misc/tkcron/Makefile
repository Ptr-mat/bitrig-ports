# $OpenBSD: Makefile,v 1.22 2013/11/09 18:22:02 zhuk Exp $

COMMENT =	Tk frontend to crontab

DISTNAME =	tkcron-2.12
REVISION =	2
CATEGORIES =	misc 

PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	ftp://ftp.tcl.tk/pub/tcl/mirror/ftp.procplace.com/alcatel/code/
EXTRACT_SUFX =	.tcl.gz
MODULES =	x11/tk
RUN_DEPENDS =	${MODTK_RUN_DEPENDS}
NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*
WRKDIST =	${WRKDIR}

pre-configure:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/${DISTNAME}.tcl

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${DISTNAME}.tcl ${PREFIX}/bin/tkcron

.include <bsd.port.mk>
