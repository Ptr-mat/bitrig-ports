# $Id: full-list.mk,v 1.2 2000/04/18 10:51:00 turan Exp $

SUBDIR += archivers/bzip2
SUBDIR += archivers/gshar+gunshar
SUBDIR += archivers/gtar
SUBDIR += archivers/unzip
SUBDIR += astro/xphoon
SUBDIR += audio/mpg123
SUBDIR += benchmarks/iozone
SUBDIR += devel/autoconf
SUBDIR += devel/bison
SUBDIR += devel/ddd
SUBDIR += devel/dejagnu
SUBDIR += devel/gettext
SUBDIR += devel/glib
SUBDIR += devel/gmake
SUBDIR += devel/id-utils
SUBDIR += devel/libslang
SUBDIR += devel/m4
SUBDIR += devel/mm
SUBDIR += editors/emacs
SUBDIR += editors/jove
SUBDIR += editors/vim
SUBDIR += graphics/ImageMagick
SUBDIR += graphics/aalib
SUBDIR += graphics/gimp
SUBDIR += graphics/jpeg
SUBDIR += graphics/mpeg-lib
SUBDIR += graphics/mpeg_play
SUBDIR += graphics/netpbm
SUBDIR += graphics/png
SUBDIR += graphics/tiff34
SUBDIR += graphics/xfig
SUBDIR += graphics/xpaint
SUBDIR += graphics/xv
SUBDIR += lang/expect
SUBDIR += lang/tcl80
SUBDIR += mail/cucipop
SUBDIR += mail/fetchmail
SUBDIR += mail/metamail
SUBDIR += mail/mutt
SUBDIR += mail/nmh
SUBDIR += mail/pine
SUBDIR += math/gnuplot
SUBDIR += math/xspread
SUBDIR += misc/screen
SUBDIR += misc/gnuls
SUBDIR += net/dxpc
SUBDIR += net/ethereal
SUBDIR += net/ircii-epic
SUBDIR += net/netpipe
SUBDIR += net/rsync
SUBDIR += net/wget
SUBDIR += print/a2ps PAPERSIZE=A4
SUBDIR += print/a2ps PAPERSIZE=Letter
SUBDIR += print/afm
SUBDIR += print/enscript
SUBDIR += print/freetype
SUBDIR += print/ghostscript5
SUBDIR += print/gv
SUBDIR += print/psutils
SUBDIR += print/teTeX/base
SUBDIR += print/transfig
SUBDIR += security/pgp:usa
SUBDIR += security/pgp:intl
SUBDIR += security/ssh:usa
SUBDIR += security/ssh:intl
SUBDIR += shells/bash2
SUBDIR += shells/tcsh
SUBDIR += shells/zsh
SUBDIR += sysutils/idled
SUBDIR += sysutils/xntpd
SUBDIR += textproc/catdoc
SUBDIR += textproc/glimpse
SUBDIR += textproc/ispell
SUBDIR += textproc/latex2html
SUBDIR += textproc/xpdf
SUBDIR += x11/Xaw3d
SUBDIR += x11/gtk+
SUBDIR += x11/lesstif
SUBDIR += x11/rxvt
SUBDIR += x11/tk80
SUBDIR += x11/viewfax
SUBDIR += x11/xcolors
SUBDIR += x11/qt
SUBDIR += x11/kdebase
SUBDIR += x11/kdelibs

.include <bsd.port.subdir.mk>
