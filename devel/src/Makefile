# $OpenBSD: Makefile,v 1.6 2014/12/25 14:30:45 rpe Exp $

COMMENT =		Simple Revision Control

DISTNAME =		src-0.18

CATEGORIES =		devel

HOMEPAGE =		http://www.catb.org/~esr/src/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}

MODULES =		lang/python
MODPY_ADJ_FILES =	src

RUN_DEPENDS =		devel/grcs \
			devel/rcs-fast-import
TEST_DEPENDS =		devel/git \
			${RUN_DEPENDS}

NO_BUILD =		Yes
TEST_TARGET =		check

post-extract:
	perl -pi -e 's/rcs /grcs /g;s/rcsdiff /grcsdiff /g;' \
		-e 's/ci /gci /g;s/co /gco /g' ${WRKSRC}/src

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/src ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/src.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
