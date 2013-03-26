rm -f libtoolize.tmp libtoolize
/bin/sh /private/tmp/libtool-FYN5/libtool-2.4.2/libltdl/config/install-sh -d . libltdl/
sed -e 's,@aclocal_DATA\@,m4/argz.m4 m4/libtool.m4 m4/ltdl.m4 m4/ltoptions.m4 m4/ltsugar.m4 m4/ltversion.m4 m4/lt~obsolete.m4,g' -e 's,@aclocaldir\@,/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/aclocal,g' -e 's,@datadir\@,/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share,g' -e 's,@EGREP\@,/usr/bin/grep -E,g' -e 's,@FGREP\@,/usr/bin/grep -F,g' -e 's,@GREP\@,/usr/bin/grep,g' -e 's,@host_triplet\@,x86_64-apple-darwin12.3.0,g' -e 's,@LN_S\@,ln -s,g' -e "s,@pkgconfig_files\@,config/compile config/config.guess config/config.sub config/depcomp config/install-sh config/missing config/ltmain.sh,g" -e 's,@pkgdatadir\@,/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool,g' -e "s,@pkgltdl_files\@,libltdl/COPYING.LIB libltdl/README libltdl/Makefile.inc libltdl/Makefile.am libltdl/configure.ac libltdl/aclocal.m4 libltdl/Makefile.in libltdl/config-h.in libltdl/configure libltdl/argz_.h libltdl/argz.c libltdl/loaders/dld_link.c libltdl/loaders/dlopen.c libltdl/loaders/dyld.c libltdl/loaders/load_add_on.c libltdl/loaders/loadlibrary.c libltdl/loaders/shl_load.c libltdl/lt__dirent.c libltdl/lt__strl.c libltdl/libltdl/lt__alloc.h libltdl/libltdl/lt__dirent.h libltdl/libltdl/lt__glibc.h libltdl/libltdl/lt__private.h libltdl/libltdl/lt__strl.h libltdl/libltdl/lt_dlloader.h libltdl/libltdl/lt_error.h libltdl/libltdl/lt_system.h libltdl/libltdl/slist.h libltdl/loaders/preopen.c libltdl/lt__alloc.c libltdl/lt_dlloader.c libltdl/lt_error.c libltdl/ltdl.c libltdl/ltdl.h libltdl/slist.c,g" -e 's,@prefix\@,/Users/meleeman/.homebrew/Cellar/libtool/2.4.2,g' -e 's,@SED\@,/Users/meleeman/.homebrew/Library/ENV/4.3/sed,g' \
		./libtoolize.in > libtoolize.tmp
cp ./libltdl/argz_.h libltdl/argz.h-t
mv libltdl/argz.h-t libltdl/argz.h
chmod a+x libtoolize.tmp
chmod a-w libtoolize.tmp
mv -f libtoolize.tmp libtoolize
/usr/bin/make  install-recursive
/bin/sh ./libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I.  -DLT_CONFIG_H='<config.h>' -DLTDL -I. -I. -Ilibltdl -I./libltdl -I./libltdl/libltdl   -g -O2 -c -o libltdl/argz.lo libltdl/argz.c
/bin/sh ./libtool  --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I.  -DLTDLOPEN=libltdl -DLT_CONFIG_H='<config.h>' -DLTDL -I. -I. -Ilibltdl -I./libltdl -I./libltdl/libltdl   -g -O2 -c -o libltdl/loaders/libltdl_libltdl_la-preopen.lo `test -f 'libltdl/loaders/preopen.c' || echo './'`libltdl/loaders/preopen.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. "-DLT_CONFIG_H=<config.h>" -DLTDL -I. -I. -Ilibltdl -I./libltdl -I./libltdl/libltdl -g -O2 -c libltdl/argz.c  -fno-common -DPIC -o libltdl/.libs/argz.o
brew: superenv removed: -I./libltdl -g -O2
libtool: compile:  cc -DHAVE_CONFIG_H -I. -DLTDLOPEN=libltdl "-DLT_CONFIG_H=<config.h>" -DLTDL -I. -I. -Ilibltdl -I./libltdl -I./libltdl/libltdl -g -O2 -c libltdl/loaders/preopen.c  -fno-common -DPIC -o libltdl/loaders/.libs/libltdl_libltdl_la-preopen.o
brew: superenv removed: -I./libltdl -g -O2
libtool: compile:  cc -DHAVE_CONFIG_H -I. "-DLT_CONFIG_H=<config.h>" -DLTDL -I. -I. -Ilibltdl -I./libltdl -I./libltdl/libltdl -g -O2 -c libltdl/argz.c -o libltdl/argz.o >/dev/null 2>&1
libtool: compile:  cc -DHAVE_CONFIG_H -I. -DLTDLOPEN=libltdl "-DLT_CONFIG_H=<config.h>" -DLTDL -I. -I. -Ilibltdl -I./libltdl -I./libltdl/libltdl -g -O2 -c libltdl/loaders/preopen.c -o libltdl/loaders/libltdl_libltdl_la-preopen.o >/dev/null 2>&1
/bin/sh ./libtool  --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I.  -DLTDLOPEN=libltdl -DLT_CONFIG_H='<config.h>' -DLTDL -I. -I. -Ilibltdl -I./libltdl -I./libltdl/libltdl   -g -O2 -c -o libltdl/libltdl_libltdl_la-lt__alloc.lo `test -f 'libltdl/lt__alloc.c' || echo './'`libltdl/lt__alloc.c
/bin/sh ./libtool  --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I.  -DLTDLOPEN=libltdl -DLT_CONFIG_H='<config.h>' -DLTDL -I. -I. -Ilibltdl -I./libltdl -I./libltdl/libltdl   -g -O2 -c -o libltdl/libltdl_libltdl_la-lt_dlloader.lo `test -f 'libltdl/lt_dlloader.c' || echo './'`libltdl/lt_dlloader.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. -DLTDLOPEN=libltdl "-DLT_CONFIG_H=<config.h>" -DLTDL -I. -I. -Ilibltdl -I./libltdl -I./libltdl/libltdl -g -O2 -c libltdl/lt__alloc.c  -fno-common -DPIC -o libltdl/.libs/libltdl_libltdl_la-lt__alloc.o
brew: superenv removed: -I./libltdl -g -O2
libtool: compile:  cc -DHAVE_CONFIG_H -I. -DLTDLOPEN=libltdl "-DLT_CONFIG_H=<config.h>" -DLTDL -I. -I. -Ilibltdl -I./libltdl -I./libltdl/libltdl -g -O2 -c libltdl/lt_dlloader.c  -fno-common -DPIC -o libltdl/.libs/libltdl_libltdl_la-lt_dlloader.o
brew: superenv removed: -I./libltdl -g -O2
libtool: compile:  cc -DHAVE_CONFIG_H -I. -DLTDLOPEN=libltdl "-DLT_CONFIG_H=<config.h>" -DLTDL -I. -I. -Ilibltdl -I./libltdl -I./libltdl/libltdl -g -O2 -c libltdl/lt__alloc.c -o libltdl/libltdl_libltdl_la-lt__alloc.o >/dev/null 2>&1
libtool: compile:  cc -DHAVE_CONFIG_H -I. -DLTDLOPEN=libltdl "-DLT_CONFIG_H=<config.h>" -DLTDL -I. -I. -Ilibltdl -I./libltdl -I./libltdl/libltdl -g -O2 -c libltdl/lt_dlloader.c -o libltdl/libltdl_libltdl_la-lt_dlloader.o >/dev/null 2>&1
/bin/sh ./libtool  --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I.  -DLTDLOPEN=libltdl -DLT_CONFIG_H='<config.h>' -DLTDL -I. -I. -Ilibltdl -I./libltdl -I./libltdl/libltdl   -g -O2 -c -o libltdl/libltdl_libltdl_la-lt_error.lo `test -f 'libltdl/lt_error.c' || echo './'`libltdl/lt_error.c
/bin/sh ./libtool  --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I.  -DLTDLOPEN=libltdl -DLT_CONFIG_H='<config.h>' -DLTDL -I. -I. -Ilibltdl -I./libltdl -I./libltdl/libltdl   -g -O2 -c -o libltdl/libltdl_libltdl_la-ltdl.lo `test -f 'libltdl/ltdl.c' || echo './'`libltdl/ltdl.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. -DLTDLOPEN=libltdl "-DLT_CONFIG_H=<config.h>" -DLTDL -I. -I. -Ilibltdl -I./libltdl -I./libltdl/libltdl -g -O2 -c libltdl/lt_error.c  -fno-common -DPIC -o libltdl/.libs/libltdl_libltdl_la-lt_error.o
brew: superenv removed: -I./libltdl -g -O2
libtool: compile:  cc -DHAVE_CONFIG_H -I. -DLTDLOPEN=libltdl "-DLT_CONFIG_H=<config.h>" -DLTDL -I. -I. -Ilibltdl -I./libltdl -I./libltdl/libltdl -g -O2 -c libltdl/ltdl.c  -fno-common -DPIC -o libltdl/.libs/libltdl_libltdl_la-ltdl.o
brew: superenv removed: -I./libltdl -g -O2
libtool: compile:  cc -DHAVE_CONFIG_H -I. -DLTDLOPEN=libltdl "-DLT_CONFIG_H=<config.h>" -DLTDL -I. -I. -Ilibltdl -I./libltdl -I./libltdl/libltdl -g -O2 -c libltdl/lt_error.c -o libltdl/libltdl_libltdl_la-lt_error.o >/dev/null 2>&1
/bin/sh ./libtool  --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I.  -DLTDLOPEN=libltdl -DLT_CONFIG_H='<config.h>' -DLTDL -I. -I. -Ilibltdl -I./libltdl -I./libltdl/libltdl   -g -O2 -c -o libltdl/libltdl_libltdl_la-slist.lo `test -f 'libltdl/slist.c' || echo './'`libltdl/slist.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. -DLTDLOPEN=libltdl "-DLT_CONFIG_H=<config.h>" -DLTDL -I. -I. -Ilibltdl -I./libltdl -I./libltdl/libltdl -g -O2 -c libltdl/slist.c  -fno-common -DPIC -o libltdl/.libs/libltdl_libltdl_la-slist.o
brew: superenv removed: -I./libltdl -g -O2
libtool: compile:  cc -DHAVE_CONFIG_H -I. -DLTDLOPEN=libltdl "-DLT_CONFIG_H=<config.h>" -DLTDL -I. -I. -Ilibltdl -I./libltdl -I./libltdl/libltdl -g -O2 -c libltdl/slist.c -o libltdl/libltdl_libltdl_la-slist.o >/dev/null 2>&1
libtool: compile:  cc -DHAVE_CONFIG_H -I. -DLTDLOPEN=libltdl "-DLT_CONFIG_H=<config.h>" -DLTDL -I. -I. -Ilibltdl -I./libltdl -I./libltdl/libltdl -g -O2 -c libltdl/ltdl.c -o libltdl/libltdl_libltdl_la-ltdl.o >/dev/null 2>&1
/bin/sh ./libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I.  -DLT_CONFIG_H='<config.h>' -DLTDL -I. -I. -Ilibltdl -I./libltdl -I./libltdl/libltdl   -g -O2 -c -o libltdl/loaders/dlopen.lo libltdl/loaders/dlopen.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. "-DLT_CONFIG_H=<config.h>" -DLTDL -I. -I. -Ilibltdl -I./libltdl -I./libltdl/libltdl -g -O2 -c libltdl/loaders/dlopen.c  -fno-common -DPIC -o libltdl/loaders/.libs/dlopen.o
brew: superenv removed: -I./libltdl -g -O2
libtool: compile:  cc -DHAVE_CONFIG_H -I. "-DLT_CONFIG_H=<config.h>" -DLTDL -I. -I. -Ilibltdl -I./libltdl -I./libltdl/libltdl -g -O2 -c libltdl/loaders/dlopen.c -o libltdl/loaders/dlopen.o >/dev/null 2>&1
/bin/sh ./libtool --tag=CC   --mode=link cc  -g -O2 -module -avoid-version  -o libltdl/dlopen.la  libltdl/loaders/dlopen.lo  
libtool: link: ar cru libltdl/.libs/dlopen.a libltdl/loaders/.libs/dlopen.o 
libtool: link: ranlib libltdl/.libs/dlopen.a
libtool: link: ( cd "libltdl/.libs" && rm -f "dlopen.la" && ln -s "../dlopen.la" "dlopen.la" )
/bin/sh ./libtool --tag=CC   --mode=link cc  -g -O2 -no-undefined -version-info 10:0:3 -dlpreopen libltdl/dlopen.la   -o libltdl/libltdl.la -rpath /Users/meleeman/.homebrew/Cellar/libtool/2.4.2/lib libltdl/loaders/libltdl_libltdl_la-preopen.lo libltdl/libltdl_libltdl_la-lt__alloc.lo libltdl/libltdl_libltdl_la-lt_dlloader.lo libltdl/libltdl_libltdl_la-lt_error.lo libltdl/libltdl_libltdl_la-ltdl.lo libltdl/libltdl_libltdl_la-slist.lo libltdl/argz.lo 
libtool: link: rm -f libltdl/.libs/libltdl.nm libltdl/.libs/libltdl.nmS libltdl/.libs/libltdl.nmT
libtool: link: (cd libltdl/.libs && cc -g -O2 -c -fno-builtin -fno-rtti -fno-exceptions  -fno-common -DPIC "libltdlS.c")
brew: superenv removed: -g -O2
libtool: link: rm -f "libltdl/.libs/libltdlS.c" "libltdl/.libs/libltdl.nm" "libltdl/.libs/libltdl.nmS" "libltdl/.libs/libltdl.nmT"
libtool: link: (cd libltdl/.libs/libltdl.lax/dlopen.a && ar x "/private/tmp/libtool-FYN5/libtool-2.4.2/libltdl/.libs/dlopen.a")
libtool: link: cc -dynamiclib  -o libltdl/.libs/libltdl.7.dylib  libltdl/loaders/.libs/libltdl_libltdl_la-preopen.o libltdl/.libs/libltdl_libltdl_la-lt__alloc.o libltdl/.libs/libltdl_libltdl_la-lt_dlloader.o libltdl/.libs/libltdl_libltdl_la-lt_error.o libltdl/.libs/libltdl_libltdl_la-ltdl.o libltdl/.libs/libltdl_libltdl_la-slist.o libltdl/.libs/argz.o libltdl/.libs/libltdlS.o  libltdl/.libs/libltdl.lax/dlopen.a/dlopen.o    -O2   -install_name  /Users/meleeman/.homebrew/Cellar/libtool/2.4.2/lib/libltdl.7.dylib -compatibility_version 11 -current_version 11.0 -Wl,-single_module
brew: superenv removed: -O2
libtool: link: (cd "libltdl/.libs" && rm -f "libltdl.dylib" && ln -s "libltdl.7.dylib" "libltdl.dylib")
libtool: link: (cd libltdl/.libs/libltdl.lax/lt1-dlopen.a && ar x "/private/tmp/libtool-FYN5/libtool-2.4.2/libltdl/.libs/dlopen.a")
libtool: link: ar cru libltdl/.libs/libltdl.a  libltdl/loaders/libltdl_libltdl_la-preopen.o libltdl/libltdl_libltdl_la-lt__alloc.o libltdl/libltdl_libltdl_la-lt_dlloader.o libltdl/libltdl_libltdl_la-lt_error.o libltdl/libltdl_libltdl_la-ltdl.o libltdl/libltdl_libltdl_la-slist.o libltdl/argz.o libltdl/.libs/libltdlS.o  libltdl/.libs/libltdl.lax/lt1-dlopen.a/dlopen.o 
libtool: link: ranlib libltdl/.libs/libltdl.a
libtool: link: rm -fr libltdl/.libs/libltdl.lax libltdl/.libs/libltdl.lax
libtool: link: ( cd "libltdl/.libs" && rm -f "libltdl.la" && ln -s "../libltdl.la" "libltdl.la" )
test -z "/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/bin" || libltdl/config/install-sh -c -d "/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/bin"
test -z "/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/lib" || libltdl/config/install-sh -c -d "/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/lib"
 /bin/sh ./libtool   --mode=install /usr/bin/install -c   libltdl/libltdl.la '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/lib'
 /usr/bin/install -c libtoolize '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/bin/./glibtoolize'
 /usr/bin/install -c libtool '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/bin/./glibtool'
rm -rf /Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/*
/bin/sh /private/tmp/libtool-FYN5/libtool-2.4.2/libltdl/config/install-sh -d /Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/aclocal
libtool: install: /usr/bin/install -c libltdl/.libs/libltdl.7.dylib /Users/meleeman/.homebrew/Cellar/libtool/2.4.2/lib/libltdl.7.dylib
libtool: install: (cd /Users/meleeman/.homebrew/Cellar/libtool/2.4.2/lib && { ln -s -f libltdl.7.dylib libltdl.dylib || { rm -f libltdl.dylib && ln -s libltdl.7.dylib libltdl.dylib; }; })
libtool: install: /usr/bin/install -c libltdl/.libs/libltdl.lai /Users/meleeman/.homebrew/Cellar/libtool/2.4.2/lib/libltdl.la
libtool: install: /usr/bin/install -c libltdl/.libs/libltdl.a /Users/meleeman/.homebrew/Cellar/libtool/2.4.2/lib/libltdl.a
 /usr/bin/install -c -m 644 './libltdl/m4/argz.m4' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/aclocal/argz.m4'
libtool: install: chmod 644 /Users/meleeman/.homebrew/Cellar/libtool/2.4.2/lib/libltdl.a
libtool: install: ranlib /Users/meleeman/.homebrew/Cellar/libtool/2.4.2/lib/libltdl.a
 /usr/bin/install -c -m 644 './libltdl/m4/libtool.m4' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/aclocal/libtool.m4'
 /usr/bin/install -c -m 644 './libltdl/m4/ltdl.m4' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/aclocal/ltdl.m4'
 /usr/bin/install -c -m 644 './libltdl/m4/ltoptions.m4' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/aclocal/ltoptions.m4'
 /usr/bin/install -c -m 644 './libltdl/m4/ltsugar.m4' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/aclocal/ltsugar.m4'
 /usr/bin/install -c -m 644 './libltdl/m4/ltversion.m4' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/aclocal/ltversion.m4'
 /usr/bin/install -c -m 644 './libltdl/m4/lt~obsolete.m4' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/aclocal/lt~obsolete.m4'
/bin/sh /private/tmp/libtool-FYN5/libtool-2.4.2/libltdl/config/install-sh -d /Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool
test -z "/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/include" || libltdl/config/install-sh -c -d "/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/include"
/bin/sh /private/tmp/libtool-FYN5/libtool-2.4.2/libltdl/config/install-sh -d /Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/config
 /usr/bin/install -c -m 644 libltdl/ltdl.h '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/include'
 /usr/bin/install -c './libltdl/config/compile' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/config/compile'
test -z "/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/info" || libltdl/config/install-sh -c -d "/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/info"
 /usr/bin/install -c './libltdl/config/config.guess' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/config/config.guess'
 /usr/bin/install -c './libltdl/config/config.sub' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/config/config.sub'
 /usr/bin/install -c './libltdl/config/depcomp' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/config/depcomp'
 /usr/bin/install -c './libltdl/config/install-sh' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/config/install-sh'
 /usr/bin/install -c './libltdl/config/missing' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/config/missing'
/usr/bin/install -c -m 644 "./libltdl/config/ltmain.sh" "/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/config/ltmain.sh" 
/bin/sh /private/tmp/libtool-FYN5/libtool-2.4.2/libltdl/config/install-sh -d /Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl
/bin/sh /private/tmp/libtool-FYN5/libtool-2.4.2/libltdl/config/install-sh -d /Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/libltdl
 /usr/bin/install -c -m 644 ./doc/libtool.info ./doc/libtool.info-1 ./doc/libtool.info-2 '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/info'
/bin/sh /private/tmp/libtool-FYN5/libtool-2.4.2/libltdl/config/install-sh -d /Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/loaders
 install-info --info-dir='/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/info' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/info/libtool.info'
test -z "/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/include/libltdl" || libltdl/config/install-sh -c -d "/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/include/libltdl"
 /usr/bin/install -c -m 644 './libltdl/COPYING.LIB' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/COPYING.LIB'
 /usr/bin/install -c -m 644 './libltdl/README' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/README'
 /usr/bin/install -c -m 644 './libltdl/Makefile.inc' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/Makefile.inc'
 /usr/bin/install -c -m 644 './libltdl/Makefile.am' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/Makefile.am'
 /usr/bin/install -c -m 644 './libltdl/configure.ac' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/configure.ac'
 /usr/bin/install -c -m 644 libltdl/libltdl/lt_system.h libltdl/libltdl/lt_error.h libltdl/libltdl/lt_dlloader.h '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/include/libltdl'
 /usr/bin/install -c -m 644 './libltdl/aclocal.m4' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/aclocal.m4'
 /usr/bin/install -c -m 644 './libltdl/Makefile.in' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/Makefile.in'
test -z "/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/man/man1" || libltdl/config/install-sh -c -d "/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/man/man1"
 /usr/bin/install -c -m 644 './libltdl/config-h.in' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/config-h.in'
 /usr/bin/install -c -m 644 './libltdl/configure' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/configure'
 /usr/bin/install -c -m 644 './libltdl/argz_.h' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/argz_.h'
 /usr/bin/install -c -m 644 './libltdl/argz.c' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/argz.c'
 /usr/bin/install -c -m 644 './libltdl/loaders/dld_link.c' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/loaders/dld_link.c'
 /usr/bin/install -c -m 644 './libltdl/loaders/dlopen.c' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/loaders/dlopen.c'
 /usr/bin/install -c -m 644 './libltdl/loaders/dyld.c' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/loaders/dyld.c'
 /usr/bin/install -c -m 644 './libltdl/loaders/load_add_on.c' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/loaders/load_add_on.c'
 /usr/bin/install -c -m 644 './libltdl/loaders/loadlibrary.c' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/loaders/loadlibrary.c'
 /usr/bin/install -c -m 644 './libltdl/loaders/shl_load.c' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/loaders/shl_load.c'
 /usr/bin/install -c -m 644 './libltdl/lt__dirent.c' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/lt__dirent.c'
 /usr/bin/install -c -m 644 './libltdl/lt__strl.c' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/lt__strl.c'
 /usr/bin/install -c -m 644 './libltdl/libltdl/lt__alloc.h' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/libltdl/lt__alloc.h'
 /usr/bin/install -c -m 644 './libltdl/libltdl/lt__dirent.h' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/libltdl/lt__dirent.h'
 /usr/bin/install -c -m 644 './libltdl/libltdl/lt__glibc.h' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/libltdl/lt__glibc.h'
 /usr/bin/install -c -m 644 './doc/libtool.1' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/man/man1/glibtool.1'
 /usr/bin/install -c -m 644 './libltdl/libltdl/lt__private.h' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/libltdl/lt__private.h'
 /usr/bin/install -c -m 644 './doc/libtoolize.1' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/man/man1/glibtoolize.1'
 /usr/bin/install -c -m 644 './libltdl/libltdl/lt__strl.h' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/libltdl/lt__strl.h'
 /usr/bin/install -c -m 644 './libltdl/libltdl/lt_dlloader.h' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/libltdl/lt_dlloader.h'
 /usr/bin/install -c -m 644 './libltdl/libltdl/lt_error.h' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/libltdl/lt_error.h'
 /usr/bin/install -c -m 644 './libltdl/libltdl/lt_system.h' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/libltdl/lt_system.h'
 /usr/bin/install -c -m 644 './libltdl/libltdl/slist.h' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/libltdl/slist.h'
 /usr/bin/install -c -m 644 './libltdl/loaders/preopen.c' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/loaders/preopen.c'
 /usr/bin/install -c -m 644 './libltdl/lt__alloc.c' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/lt__alloc.c'
 /usr/bin/install -c -m 644 './libltdl/lt_dlloader.c' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/lt_dlloader.c'
 /usr/bin/install -c -m 644 './libltdl/lt_error.c' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/lt_error.c'
 /usr/bin/install -c -m 644 './libltdl/ltdl.c' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/ltdl.c'
 /usr/bin/install -c -m 644 './libltdl/ltdl.h' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/ltdl.h'
 /usr/bin/install -c -m 644 './libltdl/slist.c' '/Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/slist.c'
chmod a+x /Users/meleeman/.homebrew/Cellar/libtool/2.4.2/share/libtool/libltdl/configure
