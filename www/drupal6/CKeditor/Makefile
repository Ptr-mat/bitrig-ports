# $OpenBSD: Makefile,v 1.11 2015/01/29 13:22:35 sthen Exp $

COMMENT =	CKeditor for drupal

DISTNAME =	ckeditor-6.x-1.15
PKGNAME =	drupal6-ckeditor-1.15
V =		3.6.6.1
ED =		ckeditor_$V.tar.gz
DISTFILES =	${DISTNAME}.tar.gz \
		${ED}:0
EXTRACT_ONLY =	${DISTNAME}.tar.gz

MASTER_SITES0 = http://download.cksource.com/CKEditor/CKEditor/CKEditor%20$V/

post-extract:
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/${ED}
	chmod -R u+wX ${WRKDIST}/ckeditor

.include <bsd.port.mk>
