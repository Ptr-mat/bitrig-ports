# $OpenBSD: Makefile,v 1.18 2013/10/11 23:51:27 naddy Exp $

COMMENT = 		web-based SSH client

DISTNAME =		Ajaxterm-0.10
PKGNAME =		ajaxterm-0.10
REVISION =		9

CATEGORIES =		net security www
PKG_ARCH =		*

HOMEPAGE =		http://antony.lesuisse.org/software/ajaxterm/

# Public Domain / LGPL
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}/files/

NO_BUILD =		Yes

BUILD_DEPENDS =			${_MODPY_BUILD_DEPENDS}

MODULES =		lang/python

SHARE =			${PREFIX}/share/ajaxterm

do-install:
	${SUBST_CMD} ${WRKDIST}/ajaxterm.py
	${INSTALL_SCRIPT} ${WRKDIST}/ajaxterm.py ${PREFIX}/bin/ajaxterm
	${INSTALL_DATA_DIR} ${SHARE}
	${INSTALL_SCRIPT} ${WRKDIST}/qweb.py ${SHARE}
	${INSTALL_DATA} ${WRKDIST}/ajaxterm.css ${SHARE}
	${INSTALL_DATA} ${WRKDIST}/ajaxterm.html ${SHARE}
	${INSTALL_DATA} ${WRKDIST}/ajaxterm.js ${SHARE}
	${INSTALL_DATA} ${WRKDIST}/sarissa.js ${SHARE}
	${INSTALL_DATA} ${WRKDIST}/sarissa_dhtml.js ${SHARE}
	perl -pi -e 's/ajaxterm.py/ajaxterm/' ${WRKDIST}/ajaxterm.1
	${INSTALL_MAN}  ${WRKDIST}/ajaxterm.1 ${PREFIX}/man/man1/ajaxterm.1
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/share/ajaxterm



.include <bsd.port.mk>
