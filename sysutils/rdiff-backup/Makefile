#	$OpenBSD: Makefile,v 1.18 2015/03/20 22:47:42 naddy Exp $

COMMENT = 	incremental backup

MODPY_EGG_VERSION =	1.2.8
DISTNAME =	rdiff-backup-${MODPY_EGG_VERSION}
REVISION =	6
CATEGORIES =	sysutils

HOMEPAGE = 	http://www.nongnu.org/rdiff-backup/

# GPLv2+
PERMIT_PACKAGE_CDROM = 	Yes

WANTLIB +=		rsync
LIB_DEPENDS += 		net/librsync

MASTER_SITES = 		${MASTER_SITE_SAVANNAH:=rdiff-backup/}

MODULES	= 		lang/python

USE_GROFF =		Yes
NO_TEST = 		Yes

.include <bsd.port.mk>
