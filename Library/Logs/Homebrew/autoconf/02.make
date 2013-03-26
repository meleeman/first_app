/usr/bin/make  install-recursive
Making install in bin
rm -f autom4te autom4te.tmp
cd ../lib && /usr/bin/make  autom4te.cfg
srcdir=''; \
	  test -f ./autom4te.in || srcdir=./; \
	  sed -e 's|@SHELL[@]|/bin/sh|g' -e 's|@PERL[@]|/usr/bin/perl|g' -e 's|@PERL_FLOCK[@]|yes|g' -e 's|@bindir[@]|/Users/meleeman/.homebrew/Cellar/autoconf/2.69/bin|g' -e 's|@pkgdatadir[@]|/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf|g' -e 's|@prefix[@]|/Users/meleeman/.homebrew/Cellar/autoconf/2.69|g' -e 's|@autoconf-name[@]|'`echo autoconf | sed 's,x,x,'`'|g' -e 's|@autoheader-name[@]|'`echo autoheader | sed 's,x,x,'`'|g' -e 's|@autom4te-name[@]|'`echo autom4te | sed 's,x,x,'`'|g' -e 's|@M4[@]|/usr/bin/m4|g' -e 's|@M4_DEBUGFILE[@]|--error-output|g' -e 's|@M4_GNU[@]||g' -e 's|@AWK[@]|awk|g' -e 's|@RELEASE_YEAR[@]|'`sed 's/^\([0-9][0-9][0-9][0-9]\).*/\1/;q' ../ChangeLog`'|g' -e 's|@VERSION[@]|2.69|g' -e 's|@PACKAGE_NAME[@]|GNU Autoconf|g' -e 's|@configure_input[@]|Generated from autom4te.in; do not edit by hand.|g' ${srcdir}autom4te.in >autom4te.tmp
rm -f autom4te.cfg autom4te.tmp
sed -e 's|@SHELL[@]|/bin/sh|g' -e 's|@PERL[@]|/usr/bin/perl|g' -e 's|@bindir[@]|/Users/meleeman/.homebrew/Cellar/autoconf/2.69/bin|g' -e 's|@pkgdatadir[@]|/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf|g' -e 's|@prefix[@]|/Users/meleeman/.homebrew/Cellar/autoconf/2.69|g' -e 's|@autoconf-name[@]|'`echo autoconf | sed 's,x,x,'`'|g' -e 's|@autoheader-name[@]|'`echo autoheader | sed 's,x,x,'`'|g' -e 's|@autom4te-name[@]|'`echo autom4te | sed 's,x,x,'`'|g' -e 's|@M4[@]|/usr/bin/m4|g' -e 's|@AWK[@]|awk|g' -e 's|@VERSION[@]|2.69|g' -e 's|@PACKAGE_NAME[@]|GNU Autoconf|g' ./autom4te.in >autom4te.tmp
chmod a-w autom4te.tmp
mv autom4te.tmp autom4te.cfg
cd ../lib/m4sugar && /usr/bin/make  version.m4
chmod +x autom4te.tmp
chmod a-w autom4te.tmp
mv autom4te.tmp autom4te
:;{ \
	  echo '# This file is part of -*- Autoconf -*-.' && \
	  echo '# Version of Autoconf.' && \
	  echo '# Copyright (C) 1999, 2000, 2001, 2002, 2006, 2007, 2009' && \
	  echo '# Free Software Foundation, Inc.' && \
	  echo  &&\
	  echo 'm4_define([m4_PACKAGE_NAME],      [GNU Autoconf])' && \
	  echo 'm4_define([m4_PACKAGE_TARNAME],   [autoconf])' && \
	  echo 'm4_define([m4_PACKAGE_VERSION],   [2.69])' && \
	  echo 'm4_define([m4_PACKAGE_STRING],    [GNU Autoconf 2.69])' && \
	  echo 'm4_define([m4_PACKAGE_BUGREPORT], [bug-autoconf@gnu.org])' && \
	  echo 'm4_define([m4_PACKAGE_URL],       [http://www.gnu.org/software/autoconf/])' && \
	  echo 'm4_define([m4_PACKAGE_YEAR],      ['`sed 's/^\([0-9][0-9][0-9][0-9]\).*/\1/;q' ../../ChangeLog`'])'; \
	} > version.m4-t
rm -f autoheader autoheader.tmp
srcdir=''; \
	  test -f ./autoheader.in || srcdir=./; \
	  sed -e 's|@SHELL[@]|/bin/sh|g' -e 's|@PERL[@]|/usr/bin/perl|g' -e 's|@PERL_FLOCK[@]|yes|g' -e 's|@bindir[@]|/Users/meleeman/.homebrew/Cellar/autoconf/2.69/bin|g' -e 's|@pkgdatadir[@]|/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf|g' -e 's|@prefix[@]|/Users/meleeman/.homebrew/Cellar/autoconf/2.69|g' -e 's|@autoconf-name[@]|'`echo autoconf | sed 's,x,x,'`'|g' -e 's|@autoheader-name[@]|'`echo autoheader | sed 's,x,x,'`'|g' -e 's|@autom4te-name[@]|'`echo autom4te | sed 's,x,x,'`'|g' -e 's|@M4[@]|/usr/bin/m4|g' -e 's|@M4_DEBUGFILE[@]|--error-output|g' -e 's|@M4_GNU[@]||g' -e 's|@AWK[@]|awk|g' -e 's|@RELEASE_YEAR[@]|'`sed 's/^\([0-9][0-9][0-9][0-9]\).*/\1/;q' ../ChangeLog`'|g' -e 's|@VERSION[@]|2.69|g' -e 's|@PACKAGE_NAME[@]|GNU Autoconf|g' -e 's|@configure_input[@]|Generated from autoheader.in; do not edit by hand.|g' ${srcdir}autoheader.in >autoheader.tmp
mv version.m4-t version.m4
rm -f autoreconf autoreconf.tmp
srcdir=''; \
	  test -f ./autoreconf.in || srcdir=./; \
	  sed -e 's|@SHELL[@]|/bin/sh|g' -e 's|@PERL[@]|/usr/bin/perl|g' -e 's|@PERL_FLOCK[@]|yes|g' -e 's|@bindir[@]|/Users/meleeman/.homebrew/Cellar/autoconf/2.69/bin|g' -e 's|@pkgdatadir[@]|/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf|g' -e 's|@prefix[@]|/Users/meleeman/.homebrew/Cellar/autoconf/2.69|g' -e 's|@autoconf-name[@]|'`echo autoconf | sed 's,x,x,'`'|g' -e 's|@autoheader-name[@]|'`echo autoheader | sed 's,x,x,'`'|g' -e 's|@autom4te-name[@]|'`echo autom4te | sed 's,x,x,'`'|g' -e 's|@M4[@]|/usr/bin/m4|g' -e 's|@M4_DEBUGFILE[@]|--error-output|g' -e 's|@M4_GNU[@]||g' -e 's|@AWK[@]|awk|g' -e 's|@RELEASE_YEAR[@]|'`sed 's/^\([0-9][0-9][0-9][0-9]\).*/\1/;q' ../ChangeLog`'|g' -e 's|@VERSION[@]|2.69|g' -e 's|@PACKAGE_NAME[@]|GNU Autoconf|g' -e 's|@configure_input[@]|Generated from autoreconf.in; do not edit by hand.|g' ${srcdir}autoreconf.in >autoreconf.tmp
chmod +x autoheader.tmp
chmod a-w autoheader.tmp
mv autoheader.tmp autoheader
rm -f ifnames ifnames.tmp
srcdir=''; \
	  test -f ./ifnames.in || srcdir=./; \
	  sed -e 's|@SHELL[@]|/bin/sh|g' -e 's|@PERL[@]|/usr/bin/perl|g' -e 's|@PERL_FLOCK[@]|yes|g' -e 's|@bindir[@]|/Users/meleeman/.homebrew/Cellar/autoconf/2.69/bin|g' -e 's|@pkgdatadir[@]|/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf|g' -e 's|@prefix[@]|/Users/meleeman/.homebrew/Cellar/autoconf/2.69|g' -e 's|@autoconf-name[@]|'`echo autoconf | sed 's,x,x,'`'|g' -e 's|@autoheader-name[@]|'`echo autoheader | sed 's,x,x,'`'|g' -e 's|@autom4te-name[@]|'`echo autom4te | sed 's,x,x,'`'|g' -e 's|@M4[@]|/usr/bin/m4|g' -e 's|@M4_DEBUGFILE[@]|--error-output|g' -e 's|@M4_GNU[@]||g' -e 's|@AWK[@]|awk|g' -e 's|@RELEASE_YEAR[@]|'`sed 's/^\([0-9][0-9][0-9][0-9]\).*/\1/;q' ../ChangeLog`'|g' -e 's|@VERSION[@]|2.69|g' -e 's|@PACKAGE_NAME[@]|GNU Autoconf|g' -e 's|@configure_input[@]|Generated from ifnames.in; do not edit by hand.|g' ${srcdir}ifnames.in >ifnames.tmp
chmod +x autoreconf.tmp
chmod a-w autoreconf.tmp
mv autoreconf.tmp autoreconf
rm -f autoscan autoscan.tmp
srcdir=''; \
	  test -f ./autoscan.in || srcdir=./; \
	  sed -e 's|@SHELL[@]|/bin/sh|g' -e 's|@PERL[@]|/usr/bin/perl|g' -e 's|@PERL_FLOCK[@]|yes|g' -e 's|@bindir[@]|/Users/meleeman/.homebrew/Cellar/autoconf/2.69/bin|g' -e 's|@pkgdatadir[@]|/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf|g' -e 's|@prefix[@]|/Users/meleeman/.homebrew/Cellar/autoconf/2.69|g' -e 's|@autoconf-name[@]|'`echo autoconf | sed 's,x,x,'`'|g' -e 's|@autoheader-name[@]|'`echo autoheader | sed 's,x,x,'`'|g' -e 's|@autom4te-name[@]|'`echo autom4te | sed 's,x,x,'`'|g' -e 's|@M4[@]|/usr/bin/m4|g' -e 's|@M4_DEBUGFILE[@]|--error-output|g' -e 's|@M4_GNU[@]||g' -e 's|@AWK[@]|awk|g' -e 's|@RELEASE_YEAR[@]|'`sed 's/^\([0-9][0-9][0-9][0-9]\).*/\1/;q' ../ChangeLog`'|g' -e 's|@VERSION[@]|2.69|g' -e 's|@PACKAGE_NAME[@]|GNU Autoconf|g' -e 's|@configure_input[@]|Generated from autoscan.in; do not edit by hand.|g' ${srcdir}autoscan.in >autoscan.tmp
chmod +x ifnames.tmp
chmod a-w ifnames.tmp
mv ifnames.tmp ifnames
rm -f autoupdate autoupdate.tmp
srcdir=''; \
	  test -f ./autoupdate.in || srcdir=./; \
	  sed -e 's|@SHELL[@]|/bin/sh|g' -e 's|@PERL[@]|/usr/bin/perl|g' -e 's|@PERL_FLOCK[@]|yes|g' -e 's|@bindir[@]|/Users/meleeman/.homebrew/Cellar/autoconf/2.69/bin|g' -e 's|@pkgdatadir[@]|/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf|g' -e 's|@prefix[@]|/Users/meleeman/.homebrew/Cellar/autoconf/2.69|g' -e 's|@autoconf-name[@]|'`echo autoconf | sed 's,x,x,'`'|g' -e 's|@autoheader-name[@]|'`echo autoheader | sed 's,x,x,'`'|g' -e 's|@autom4te-name[@]|'`echo autom4te | sed 's,x,x,'`'|g' -e 's|@M4[@]|/usr/bin/m4|g' -e 's|@M4_DEBUGFILE[@]|--error-output|g' -e 's|@M4_GNU[@]||g' -e 's|@AWK[@]|awk|g' -e 's|@RELEASE_YEAR[@]|'`sed 's/^\([0-9][0-9][0-9][0-9]\).*/\1/;q' ../ChangeLog`'|g' -e 's|@VERSION[@]|2.69|g' -e 's|@PACKAGE_NAME[@]|GNU Autoconf|g' -e 's|@configure_input[@]|Generated from autoupdate.in; do not edit by hand.|g' ${srcdir}autoupdate.in >autoupdate.tmp
chmod +x autoscan.tmp
chmod a-w autoscan.tmp
mv autoscan.tmp autoscan
autom4te_perllibdir='..'/lib AUTOM4TE_CFG='../lib/autom4te.cfg'         ../bin/autom4te -B '..'/lib -B '..'/lib         --language M4sh --cache '' --melt ./autoconf.as -o autoconf.in
chmod +x autoupdate.tmp
chmod a-w autoupdate.tmp
mv autoupdate.tmp autoupdate
rm -f autoconf autoconf.tmp
srcdir=''; \
	  test -f ./autoconf.in || srcdir=./; \
	  sed -e 's|@SHELL[@]|/bin/sh|g' -e 's|@PERL[@]|/usr/bin/perl|g' -e 's|@PERL_FLOCK[@]|yes|g' -e 's|@bindir[@]|/Users/meleeman/.homebrew/Cellar/autoconf/2.69/bin|g' -e 's|@pkgdatadir[@]|/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf|g' -e 's|@prefix[@]|/Users/meleeman/.homebrew/Cellar/autoconf/2.69|g' -e 's|@autoconf-name[@]|'`echo autoconf | sed 's,x,x,'`'|g' -e 's|@autoheader-name[@]|'`echo autoheader | sed 's,x,x,'`'|g' -e 's|@autom4te-name[@]|'`echo autom4te | sed 's,x,x,'`'|g' -e 's|@M4[@]|/usr/bin/m4|g' -e 's|@M4_DEBUGFILE[@]|--error-output|g' -e 's|@M4_GNU[@]||g' -e 's|@AWK[@]|awk|g' -e 's|@RELEASE_YEAR[@]|'`sed 's/^\([0-9][0-9][0-9][0-9]\).*/\1/;q' ../ChangeLog`'|g' -e 's|@VERSION[@]|2.69|g' -e 's|@PACKAGE_NAME[@]|GNU Autoconf|g' -e 's|@configure_input[@]|Generated from autoconf.in; do not edit by hand.|g' ${srcdir}autoconf.in >autoconf.tmp
chmod +x autoconf.tmp
chmod a-w autoconf.tmp
mv autoconf.tmp autoconf
test -z "/Users/meleeman/.homebrew/Cellar/autoconf/2.69/bin" || ../build-aux/install-sh -c -d "/Users/meleeman/.homebrew/Cellar/autoconf/2.69/bin"
make[3]: Nothing to be done for `install-data-am'.
 /usr/bin/install -c autom4te autoconf autoheader autoreconf ifnames autoscan autoupdate '/Users/meleeman/.homebrew/Cellar/autoconf/2.69/bin'
Making install in .
make[3]: Nothing to be done for `install-exec-am'.
test -z "/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf" || build-aux/install-sh -c -d "/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf"
 /usr/bin/install -c -m 644 ./INSTALL '/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf'
Making install in lib
Making install in Autom4te
make[4]: Nothing to be done for `install-exec-am'.
test -z "/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf/Autom4te" || ../../build-aux/install-sh -c -d "/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf/Autom4te"
 /usr/bin/install -c -m 644 C4che.pm ChannelDefs.pm Channels.pm Configure_ac.pm FileUtils.pm General.pm Getopt.pm Request.pm XFile.pm '/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf/Autom4te'
Making install in m4sugar
autom4te_perllibdir='../..'/lib AUTOM4TE_CFG='../../lib/autom4te.cfg'         ../../bin/autom4te -B '../..'/lib -B '../..'/lib        				\
		--language=m4sugar			\
		--freeze			\
		--output=m4sugar.m4f
autom4te_perllibdir='../..'/lib AUTOM4TE_CFG='../../lib/autom4te.cfg'         ../../bin/autom4te -B '../..'/lib -B '../..'/lib        				\
		--language=m4sh			\
		--freeze			\
		--output=m4sh.m4f
make[4]: Nothing to be done for `install-exec-am'.
test -z "/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf/m4sugar" || ../../build-aux/install-sh -c -d "/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf/m4sugar"
test -z "/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf/m4sugar" || ../../build-aux/install-sh -c -d "/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf/m4sugar"
mkdir: /Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf/m4sugar: File exists
 /usr/bin/install -c -m 644 m4sugar.m4 foreach.m4 m4sh.m4 '/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf/m4sugar'
 /usr/bin/install -c -m 644 version.m4 m4sugar.m4f m4sh.m4f '/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf/m4sugar'
Making install in autoconf
autom4te_perllibdir='../..'/lib AUTOM4TE_CFG='../../lib/autom4te.cfg'         ../../bin/autom4te -B '../..'/lib -B '../..'/lib        				\
		--language=autoconf			\
		--freeze			\
		--output=autoconf.m4f
make[4]: Nothing to be done for `install-exec-am'.
test -z "/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf/autoconf" || ../../build-aux/install-sh -c -d "/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf/autoconf"
test -z "/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf/autoconf" || ../../build-aux/install-sh -c -d "/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf/autoconf"
mkdir: /Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf/autoconf: File exists
 /usr/bin/install -c -m 644 autoconf.m4f '/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf/autoconf'
 /usr/bin/install -c -m 644 autoconf.m4 general.m4 status.m4 oldnames.m4 specific.m4 autoheader.m4 autoupdate.m4 autotest.m4 autoscan.m4 lang.m4 c.m4 erlang.m4 fortran.m4 functions.m4 go.m4 headers.m4 types.m4 libs.m4 programs.m4 '/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf/autoconf'
Making install in autotest
autom4te_perllibdir='../..'/lib AUTOM4TE_CFG='../../lib/autom4te.cfg'         ../../bin/autom4te -B '../..'/lib -B '../..'/lib        				\
		--language=autotest			\
		--freeze			\
		--output=autotest.m4f
make[4]: Nothing to be done for `install-exec-am'.
test -z "/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf/autotest" || ../../build-aux/install-sh -c -d "/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf/autotest"
test -z "/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf/autotest" || ../../build-aux/install-sh -c -d "/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf/autotest"
mkdir: /Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf/autotest: File exists
 /usr/bin/install -c -m 644 autotest.m4 general.m4 specific.m4 '/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf/autotest'
 /usr/bin/install -c -m 644 autotest.m4f '/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf/autotest'
Making install in autoscan
echo '# Automatically Generated: do not edit this file' >autoscan.list
sed '/^[#]/!q' ./autoscan.pre                  >>autoscan.list
( \
	  sed -n '/^[^#]/p' ./autoscan.pre; \
	  autom4te_perllibdir='../..'/lib AUTOM4TE_CFG='../../lib/autom4te.cfg'         ../../bin/autom4te -B '../..'/lib -B '../..'/lib         --cache '' -M -l autoconf -t'AN_OUTPUT:$1: $2		$3' \
	) | LC_ALL=C sort                                      >>autoscan.list
make[4]: Nothing to be done for `install-exec-am'.
test -z "/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf/autoscan" || ../../build-aux/install-sh -c -d "/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf/autoscan"
 /usr/bin/install -c -m 644 autoscan.list '/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf/autoscan'
Making install in emacs
WARNING: Warnings can be ignored. :-)
if test "emacs" != no; then \
	  set x; \
	  list='autoconf-mode.el autotest-mode.el'; for p in $list; do \
	    if test -f "$p"; then d=; else d="./"; fi; \
	    set x "$@" "$d$p"; shift; \
	  done; \
	  shift; \
	  EMACS="emacs" /bin/sh ../../build-aux/elisp-comp "$@" || exit 1; \
	else : ; fi
Wrote /private/tmp/autoconf-F2Zf/autoconf-2.69/lib/emacs/elc.3380/autoconf-mode.elc
Wrote /private/tmp/autoconf-F2Zf/autoconf-2.69/lib/emacs/elc.3380/autotest-mode.elc
make[4]: Nothing to be done for `install-exec-am'.
 /usr/bin/install -c -m 644 'autoconf-mode.el' '/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/emacs/site-lisp/autoconf-mode.el'
 /usr/bin/install -c -m 644 'autoconf-mode.elc' '/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/emacs/site-lisp/autoconf-mode.elc'
 /usr/bin/install -c -m 644 'autotest-mode.el' '/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/emacs/site-lisp/autotest-mode.el'
 /usr/bin/install -c -m 644 'autotest-mode.elc' '/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/emacs/site-lisp/autotest-mode.elc'
make[4]: Nothing to be done for `install-exec-am'.
test -z "/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf" || ../build-aux/install-sh -c -d "/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf"
 /usr/bin/install -c -m 644 autom4te.cfg '/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/autoconf'
Making install in doc
make[3]: Nothing to be done for `install-exec-am'.
test -z "/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/info" || ../build-aux/install-sh -c -d "/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/info"
 /usr/bin/install -c -m 644 ./autoconf.info ./standards.info '/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/info'
 install-info --info-dir='/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/info' '/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/info/autoconf.info'
 install-info --info-dir='/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/info' '/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/info/standards.info'
Making install in tests
autom4te_perllibdir='..'/lib AUTOM4TE_CFG='../lib/autom4te.cfg'         ../bin/autom4te -B '..'/lib -B '..'/lib         --language=M4sh ./wrapper.as -o wrapper.in
rm -f autoconf autoconf.tmp
rm -f autoheader autoheader.tmp
input=wrapper.in; \
	sed -e 's|@wrap_program[@]|autoconf|g' -e 's|@abs_top_srcdir[@]|/private/tmp/autoconf-F2Zf/autoconf-2.69|g' -e 's|@abs_top_builddir[@]|/private/tmp/autoconf-F2Zf/autoconf-2.69|g' -e "s|@configure_input[@]|Generated from $input.|g" wrapper.in >autoconf.tmp
input=wrapper.in; \
	sed -e 's|@wrap_program[@]|autoheader|g' -e 's|@abs_top_srcdir[@]|/private/tmp/autoconf-F2Zf/autoconf-2.69|g' -e 's|@abs_top_builddir[@]|/private/tmp/autoconf-F2Zf/autoconf-2.69|g' -e "s|@configure_input[@]|Generated from $input.|g" wrapper.in >autoheader.tmp
chmod +x autoconf.tmp
chmod +x autoheader.tmp
chmod a-w autoconf.tmp
chmod a-w autoheader.tmp
mv -f autoheader.tmp autoheader
mv -f autoconf.tmp autoconf
rm -f autom4te autom4te.tmp
rm -f autoreconf autoreconf.tmp
input=wrapper.in; \
	sed -e 's|@wrap_program[@]|autoreconf|g' -e 's|@abs_top_srcdir[@]|/private/tmp/autoconf-F2Zf/autoconf-2.69|g' -e 's|@abs_top_builddir[@]|/private/tmp/autoconf-F2Zf/autoconf-2.69|g' -e "s|@configure_input[@]|Generated from $input.|g" wrapper.in >autoreconf.tmp
input=wrapper.in; \
	sed -e 's|@wrap_program[@]|autom4te|g' -e 's|@abs_top_srcdir[@]|/private/tmp/autoconf-F2Zf/autoconf-2.69|g' -e 's|@abs_top_builddir[@]|/private/tmp/autoconf-F2Zf/autoconf-2.69|g' -e "s|@configure_input[@]|Generated from $input.|g" wrapper.in >autom4te.tmp
chmod +x autom4te.tmp
chmod +x autoreconf.tmp
chmod a-w autoreconf.tmp
chmod a-w autom4te.tmp
mv -f autoreconf.tmp autoreconf
mv -f autom4te.tmp autom4te
rm -f autoscan autoscan.tmp
rm -f autoupdate autoupdate.tmp
input=wrapper.in; \
	sed -e 's|@wrap_program[@]|autoupdate|g' -e 's|@abs_top_srcdir[@]|/private/tmp/autoconf-F2Zf/autoconf-2.69|g' -e 's|@abs_top_builddir[@]|/private/tmp/autoconf-F2Zf/autoconf-2.69|g' -e "s|@configure_input[@]|Generated from $input.|g" wrapper.in >autoupdate.tmp
input=wrapper.in; \
	sed -e 's|@wrap_program[@]|autoscan|g' -e 's|@abs_top_srcdir[@]|/private/tmp/autoconf-F2Zf/autoconf-2.69|g' -e 's|@abs_top_builddir[@]|/private/tmp/autoconf-F2Zf/autoconf-2.69|g' -e "s|@configure_input[@]|Generated from $input.|g" wrapper.in >autoscan.tmp
chmod +x autoscan.tmp
chmod +x autoupdate.tmp
chmod a-w autoupdate.tmp
chmod a-w autoscan.tmp
mv -f autoscan.tmp autoscan
mv -f autoupdate.tmp autoupdate
rm -f ifnames ifnames.tmp
input=wrapper.in; \
	sed -e 's|@wrap_program[@]|ifnames|g' -e 's|@abs_top_srcdir[@]|/private/tmp/autoconf-F2Zf/autoconf-2.69|g' -e 's|@abs_top_builddir[@]|/private/tmp/autoconf-F2Zf/autoconf-2.69|g' -e "s|@configure_input[@]|Generated from $input.|g" wrapper.in >ifnames.tmp
chmod +x ifnames.tmp
chmod a-w ifnames.tmp
mv -f ifnames.tmp ifnames
make[3]: Nothing to be done for `install-exec-am'.
make[3]: Nothing to be done for `install-data-am'.
Making install in man
Updating man page autoreconf.1
PATH="../tests:../build-aux:$PATH"; \
	export PATH; \
	/bin/sh /private/tmp/autoconf-F2Zf/autoconf-2.69/build-aux/missing --run help2man \
	    --include=autoreconf.x \
	    --include=./common.x \
	    --source='GNU Autoconf 2.69' \
	    --output=autoreconf.1.t `echo 'autoreconf' | sed 's,.*/,,'`
/private/tmp/autoconf-F2Zf/autoconf-2.69/build-aux/missing: line 51: help2man: command not found
WARNING: 'help2man' is missing on your system.  You should only need it if
	 you modified a dependency of a manual page.  You may need the
	 Help2man package in order for those modifications to take
	 effect.  You can get Help2man from any GNU archive site.
if sed 's/^\(\.TH[^"]*"[^"]*"[^"]*\)"[^"]*"/\1/' autoreconf.1 >autoreconf.1a.t 2>/dev/null && \
	   sed 's/^\(\.TH[^"]*"[^"]*"[^"]*\)"[^"]*"/\1/' autoreconf.1.t | cmp autoreconf.1a.t - >/dev/null 2>&1; then \
		touch autoreconf.1; \
	else \
		mv autoreconf.1.t autoreconf.1; \
	fi
rm -f autoreconf.1*.t
make[3]: Nothing to be done for `install-exec-am'.
test -z "/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/man/man1" || ../build-aux/install-sh -c -d "/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/man/man1"
 /usr/bin/install -c -m 644 ./autoconf.1 ./autoheader.1 ./autom4te.1 ./autoreconf.1 ./autoscan.1 ./autoupdate.1 ./ifnames.1 ./config.guess.1 ./config.sub.1 '/Users/meleeman/.homebrew/Cellar/autoconf/2.69/share/man/man1'
