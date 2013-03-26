/bin/sh ./libtool --tag=CC --mode=compile cc -DPACKAGE_NAME=\"sqlite\" -DPACKAGE_TARNAME=\"sqlite\" -DPACKAGE_VERSION=\"3.7.16\" -DPACKAGE_STRING=\"sqlite\ 3.7.16\" -DPACKAGE_BUGREPORT=\"http://www.sqlite.org\" -DPACKAGE_URL=\"\" -DPACKAGE=\"sqlite\" -DVERSION=\"3.7.16\" -DSTDC_HEADERS=1 -DHAVE_SYS_TYPES_H=1 -DHAVE_SYS_STAT_H=1 -DHAVE_STDLIB_H=1 -DHAVE_STRING_H=1 -DHAVE_MEMORY_H=1 -DHAVE_STRINGS_H=1 -DHAVE_INTTYPES_H=1 -DHAVE_STDINT_H=1 -DHAVE_UNISTD_H=1 -DHAVE_DLFCN_H=1 -DHAVE_FDATASYNC=1 -DHAVE_USLEEP=1 -DHAVE_LOCALTIME_R=1 -DHAVE_GMTIME_R=1 -DHAVE_DECL_STRERROR_R=1 -DHAVE_STRERROR_R=1 -DHAVE_READLINE=1 -I. -I.   -DSQLITE_ENABLE_RTREE -DSQLITE_ENABLE_COLUMN_METADATA -DSQLITE_ENABLE_STAT3 -D_REENTRANT=1 -DSQLITE_THREADSAFE=1  -DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_RTREE -g -O2 -c -o sqlite3.lo sqlite3.c
cc -DPACKAGE_NAME=\"sqlite\" -DPACKAGE_TARNAME=\"sqlite\" -DPACKAGE_VERSION=\"3.7.16\" -DPACKAGE_STRING=\"sqlite\ 3.7.16\" -DPACKAGE_BUGREPORT=\"http://www.sqlite.org\" -DPACKAGE_URL=\"\" -DPACKAGE=\"sqlite\" -DVERSION=\"3.7.16\" -DSTDC_HEADERS=1 -DHAVE_SYS_TYPES_H=1 -DHAVE_SYS_STAT_H=1 -DHAVE_STDLIB_H=1 -DHAVE_STRING_H=1 -DHAVE_MEMORY_H=1 -DHAVE_STRINGS_H=1 -DHAVE_INTTYPES_H=1 -DHAVE_STDINT_H=1 -DHAVE_UNISTD_H=1 -DHAVE_DLFCN_H=1 -DHAVE_FDATASYNC=1 -DHAVE_USLEEP=1 -DHAVE_LOCALTIME_R=1 -DHAVE_GMTIME_R=1 -DHAVE_DECL_STRERROR_R=1 -DHAVE_STRERROR_R=1 -DHAVE_READLINE=1 -I. -I.   -DSQLITE_ENABLE_RTREE -DSQLITE_ENABLE_COLUMN_METADATA -DSQLITE_ENABLE_STAT3 -D_REENTRANT=1 -DSQLITE_THREADSAFE=1  -DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_RTREE -g -O2 -c shell.c
brew: superenv removed: -g -O2
mkdir .libs
 cc -DPACKAGE_NAME=\"sqlite\" -DPACKAGE_TARNAME=\"sqlite\" -DPACKAGE_VERSION=\"3.7.16\" "-DPACKAGE_STRING=\"sqlite 3.7.16\"" -DPACKAGE_BUGREPORT=\"http://www.sqlite.org\" -DPACKAGE_URL=\"\" -DPACKAGE=\"sqlite\" -DVERSION=\"3.7.16\" -DSTDC_HEADERS=1 -DHAVE_SYS_TYPES_H=1 -DHAVE_SYS_STAT_H=1 -DHAVE_STDLIB_H=1 -DHAVE_STRING_H=1 -DHAVE_MEMORY_H=1 -DHAVE_STRINGS_H=1 -DHAVE_INTTYPES_H=1 -DHAVE_STDINT_H=1 -DHAVE_UNISTD_H=1 -DHAVE_DLFCN_H=1 -DHAVE_FDATASYNC=1 -DHAVE_USLEEP=1 -DHAVE_LOCALTIME_R=1 -DHAVE_GMTIME_R=1 -DHAVE_DECL_STRERROR_R=1 -DHAVE_STRERROR_R=1 -DHAVE_READLINE=1 -I. -I. -DSQLITE_ENABLE_RTREE -DSQLITE_ENABLE_COLUMN_METADATA -DSQLITE_ENABLE_STAT3 -D_REENTRANT=1 -DSQLITE_THREADSAFE=1 -DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_RTREE -g -O2 -c sqlite3.c  -fno-common -DPIC -o .libs/sqlite3.o
brew: superenv removed: -g -O2
 cc -DPACKAGE_NAME=\"sqlite\" -DPACKAGE_TARNAME=\"sqlite\" -DPACKAGE_VERSION=\"3.7.16\" "-DPACKAGE_STRING=\"sqlite 3.7.16\"" -DPACKAGE_BUGREPORT=\"http://www.sqlite.org\" -DPACKAGE_URL=\"\" -DPACKAGE=\"sqlite\" -DVERSION=\"3.7.16\" -DSTDC_HEADERS=1 -DHAVE_SYS_TYPES_H=1 -DHAVE_SYS_STAT_H=1 -DHAVE_STDLIB_H=1 -DHAVE_STRING_H=1 -DHAVE_MEMORY_H=1 -DHAVE_STRINGS_H=1 -DHAVE_INTTYPES_H=1 -DHAVE_STDINT_H=1 -DHAVE_UNISTD_H=1 -DHAVE_DLFCN_H=1 -DHAVE_FDATASYNC=1 -DHAVE_USLEEP=1 -DHAVE_LOCALTIME_R=1 -DHAVE_GMTIME_R=1 -DHAVE_DECL_STRERROR_R=1 -DHAVE_STRERROR_R=1 -DHAVE_READLINE=1 -I. -I. -DSQLITE_ENABLE_RTREE -DSQLITE_ENABLE_COLUMN_METADATA -DSQLITE_ENABLE_STAT3 -D_REENTRANT=1 -DSQLITE_THREADSAFE=1 -DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_RTREE -g -O2 -c sqlite3.c -o sqlite3.o >/dev/null 2>&1
/bin/sh ./libtool --tag=CC --mode=link cc -D_REENTRANT=1 -DSQLITE_THREADSAFE=1  -DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_RTREE -g -O2   -o libsqlite3.la -rpath /Users/meleeman/.homebrew/Cellar/sqlite/3.7.16/lib -no-undefined -version-info 8:6:8 sqlite3.lo  
cc -dynamiclib  -o .libs/libsqlite3.0.8.6.dylib  .libs/sqlite3.o   -install_name  /Users/meleeman/.homebrew/Cellar/sqlite/3.7.16/lib/libsqlite3.0.dylib -compatibility_version 9 -current_version 9.6
(cd .libs && rm -f libsqlite3.0.dylib && ln -s libsqlite3.0.8.6.dylib libsqlite3.0.dylib)
(cd .libs && rm -f libsqlite3.dylib && ln -s libsqlite3.0.8.6.dylib libsqlite3.dylib)
ar cru .libs/libsqlite3.a  sqlite3.o
ranlib .libs/libsqlite3.a
creating libsqlite3.la
(cd .libs && rm -f libsqlite3.la && ln -s ../libsqlite3.la libsqlite3.la)
/bin/sh ./libtool --tag=CC --mode=link cc -D_REENTRANT=1 -DSQLITE_THREADSAFE=1  -DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_RTREE -g -O2   -o sqlite3  shell.o ./libsqlite3.la -lreadline -lcurses  
cc -D_REENTRANT=1 -DSQLITE_THREADSAFE=1 -DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_RTREE -g -O2 -o .libs/sqlite3 shell.o  ./.libs/libsqlite3.dylib -lreadline -lcurses 
brew: superenv removed: -g -O2
creating sqlite3
test -z "/Users/meleeman/.homebrew/Cellar/sqlite/3.7.16/lib" || /private/tmp/sqlite-nSWm/sqlite-autoconf-3071600/install-sh -d "/Users/meleeman/.homebrew/Cellar/sqlite/3.7.16/lib"
test -z "/Users/meleeman/.homebrew/Cellar/sqlite/3.7.16/include" || /private/tmp/sqlite-nSWm/sqlite-autoconf-3071600/install-sh -d "/Users/meleeman/.homebrew/Cellar/sqlite/3.7.16/include"
 /bin/sh ./libtool --mode=install /usr/bin/install -c  'libsqlite3.la' '/Users/meleeman/.homebrew/Cellar/sqlite/3.7.16/lib/libsqlite3.la'
 /usr/bin/install -c -m 644 'sqlite3.h' '/Users/meleeman/.homebrew/Cellar/sqlite/3.7.16/include/sqlite3.h'
 /usr/bin/install -c -m 644 'sqlite3ext.h' '/Users/meleeman/.homebrew/Cellar/sqlite/3.7.16/include/sqlite3ext.h'
test -z "/Users/meleeman/.homebrew/Cellar/sqlite/3.7.16/share/man/man1" || /private/tmp/sqlite-nSWm/sqlite-autoconf-3071600/install-sh -d "/Users/meleeman/.homebrew/Cellar/sqlite/3.7.16/share/man/man1"
 /usr/bin/install -c -m 644 './sqlite3.1' '/Users/meleeman/.homebrew/Cellar/sqlite/3.7.16/share/man/man1/sqlite3.1'
test -z "/Users/meleeman/.homebrew/Cellar/sqlite/3.7.16/lib/pkgconfig" || /private/tmp/sqlite-nSWm/sqlite-autoconf-3071600/install-sh -d "/Users/meleeman/.homebrew/Cellar/sqlite/3.7.16/lib/pkgconfig"
/usr/bin/install -c .libs/libsqlite3.0.8.6.dylib /Users/meleeman/.homebrew/Cellar/sqlite/3.7.16/lib/libsqlite3.0.8.6.dylib
 /usr/bin/install -c -m 644 'sqlite3.pc' '/Users/meleeman/.homebrew/Cellar/sqlite/3.7.16/lib/pkgconfig/sqlite3.pc'
(cd /Users/meleeman/.homebrew/Cellar/sqlite/3.7.16/lib && { ln -s -f libsqlite3.0.8.6.dylib libsqlite3.0.dylib || { rm -f libsqlite3.0.dylib && ln -s libsqlite3.0.8.6.dylib libsqlite3.0.dylib; }; })
(cd /Users/meleeman/.homebrew/Cellar/sqlite/3.7.16/lib && { ln -s -f libsqlite3.0.8.6.dylib libsqlite3.dylib || { rm -f libsqlite3.dylib && ln -s libsqlite3.0.8.6.dylib libsqlite3.dylib; }; })
/usr/bin/install -c .libs/libsqlite3.lai /Users/meleeman/.homebrew/Cellar/sqlite/3.7.16/lib/libsqlite3.la
/usr/bin/install -c .libs/libsqlite3.a /Users/meleeman/.homebrew/Cellar/sqlite/3.7.16/lib/libsqlite3.a
chmod 644 /Users/meleeman/.homebrew/Cellar/sqlite/3.7.16/lib/libsqlite3.a
ranlib /Users/meleeman/.homebrew/Cellar/sqlite/3.7.16/lib/libsqlite3.a
----------------------------------------------------------------------
Libraries have been installed in:
   /Users/meleeman/.homebrew/Cellar/sqlite/3.7.16/lib

If you ever happen to want to link against installed libraries
in a given directory, LIBDIR, you must either use libtool, and
specify the full pathname of the library, or use the `-LLIBDIR'
flag during linking and do at least one of the following:
   - add LIBDIR to the `DYLD_LIBRARY_PATH' environment variable
     during execution

See any operating system documentation about shared libraries for
more information, such as the ld(1) and ld.so(8) manual pages.
----------------------------------------------------------------------
test -z "/Users/meleeman/.homebrew/Cellar/sqlite/3.7.16/bin" || /private/tmp/sqlite-nSWm/sqlite-autoconf-3071600/install-sh -d "/Users/meleeman/.homebrew/Cellar/sqlite/3.7.16/bin"
  /bin/sh ./libtool --mode=install /usr/bin/install -c 'sqlite3' '/Users/meleeman/.homebrew/Cellar/sqlite/3.7.16/bin/sqlite3'
/usr/bin/install -c .libs/sqlite3 /Users/meleeman/.homebrew/Cellar/sqlite/3.7.16/bin/sqlite3
