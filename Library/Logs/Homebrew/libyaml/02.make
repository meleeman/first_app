Making install in include
make[2]: Nothing to be done for `install-exec-am'.
test -z "/Users/meleeman/.homebrew/Cellar/libyaml/0.1.4/include" || ../config/install-sh -c -d "/Users/meleeman/.homebrew/Cellar/libyaml/0.1.4/include"
 /usr/bin/install -c -m 644  yaml.h '/Users/meleeman/.homebrew/Cellar/libyaml/0.1.4/include/.'
Making install in src
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../include   -g -O2 -MT api.lo -MD -MP -MF .deps/api.Tpo -c -o api.lo api.c
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../include   -g -O2 -MT reader.lo -MD -MP -MF .deps/reader.Tpo -c -o reader.lo reader.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../include -g -O2 -MT reader.lo -MD -MP -MF .deps/reader.Tpo -c reader.c  -fno-common -DPIC -o .libs/reader.o
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../include -g -O2 -MT api.lo -MD -MP -MF .deps/api.Tpo -c api.c  -fno-common -DPIC -o .libs/api.o
brew: superenv removed: -g -O2
brew: superenv removed: -g -O2
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../include -g -O2 -MT reader.lo -MD -MP -MF .deps/reader.Tpo -c reader.c -o reader.o >/dev/null 2>&1
mv -f .deps/reader.Tpo .deps/reader.Plo
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../include   -g -O2 -MT scanner.lo -MD -MP -MF .deps/scanner.Tpo -c -o scanner.lo scanner.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../include -g -O2 -MT scanner.lo -MD -MP -MF .deps/scanner.Tpo -c scanner.c  -fno-common -DPIC -o .libs/scanner.o
brew: superenv removed: -g -O2
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../include -g -O2 -MT api.lo -MD -MP -MF .deps/api.Tpo -c api.c -o api.o >/dev/null 2>&1
mv -f .deps/api.Tpo .deps/api.Plo
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../include   -g -O2 -MT parser.lo -MD -MP -MF .deps/parser.Tpo -c -o parser.lo parser.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../include -g -O2 -MT parser.lo -MD -MP -MF .deps/parser.Tpo -c parser.c  -fno-common -DPIC -o .libs/parser.o
brew: superenv removed: -g -O2
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../include -g -O2 -MT parser.lo -MD -MP -MF .deps/parser.Tpo -c parser.c -o parser.o >/dev/null 2>&1
mv -f .deps/parser.Tpo .deps/parser.Plo
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../include   -g -O2 -MT loader.lo -MD -MP -MF .deps/loader.Tpo -c -o loader.lo loader.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../include -g -O2 -MT loader.lo -MD -MP -MF .deps/loader.Tpo -c loader.c  -fno-common -DPIC -o .libs/loader.o
brew: superenv removed: -g -O2
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../include -g -O2 -MT loader.lo -MD -MP -MF .deps/loader.Tpo -c loader.c -o loader.o >/dev/null 2>&1
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../include -g -O2 -MT scanner.lo -MD -MP -MF .deps/scanner.Tpo -c scanner.c -o scanner.o >/dev/null 2>&1
mv -f .deps/loader.Tpo .deps/loader.Plo
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../include   -g -O2 -MT writer.lo -MD -MP -MF .deps/writer.Tpo -c -o writer.lo writer.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../include -g -O2 -MT writer.lo -MD -MP -MF .deps/writer.Tpo -c writer.c  -fno-common -DPIC -o .libs/writer.o
brew: superenv removed: -g -O2
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../include -g -O2 -MT writer.lo -MD -MP -MF .deps/writer.Tpo -c writer.c -o writer.o >/dev/null 2>&1
mv -f .deps/writer.Tpo .deps/writer.Plo
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../include   -g -O2 -MT emitter.lo -MD -MP -MF .deps/emitter.Tpo -c -o emitter.lo emitter.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../include -g -O2 -MT emitter.lo -MD -MP -MF .deps/emitter.Tpo -c emitter.c  -fno-common -DPIC -o .libs/emitter.o
brew: superenv removed: -g -O2
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../include -g -O2 -MT emitter.lo -MD -MP -MF .deps/emitter.Tpo -c emitter.c -o emitter.o >/dev/null 2>&1
mv -f .deps/scanner.Tpo .deps/scanner.Plo
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../include   -g -O2 -MT dumper.lo -MD -MP -MF .deps/dumper.Tpo -c -o dumper.lo dumper.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../include -g -O2 -MT dumper.lo -MD -MP -MF .deps/dumper.Tpo -c dumper.c  -fno-common -DPIC -o .libs/dumper.o
brew: superenv removed: -g -O2
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../include -g -O2 -MT dumper.lo -MD -MP -MF .deps/dumper.Tpo -c dumper.c -o dumper.o >/dev/null 2>&1
mv -f .deps/dumper.Tpo .deps/dumper.Plo
mv -f .deps/emitter.Tpo .deps/emitter.Plo
/bin/sh ../libtool --tag=CC   --mode=link cc  -g -O2 -release 0 -version-info 2:2:0  -o libyaml.la -rpath /Users/meleeman/.homebrew/Cellar/libyaml/0.1.4/lib api.lo reader.lo scanner.lo parser.lo loader.lo writer.lo emitter.lo dumper.lo  
libtool: link: cc -dynamiclib -Wl,-undefined -Wl,dynamic_lookup -o .libs/libyaml-0.2.dylib  .libs/api.o .libs/reader.o .libs/scanner.o .libs/parser.o .libs/loader.o .libs/writer.o .libs/emitter.o .libs/dumper.o      -install_name  /Users/meleeman/.homebrew/Cellar/libyaml/0.1.4/lib/libyaml-0.2.dylib -compatibility_version 3 -current_version 3.2 -Wl,-single_module
libtool: link: dsymutil .libs/libyaml-0.2.dylib || :
warning: no debug symbols in executable (-arch x86_64)
libtool: link: (cd ".libs" && rm -f "libyaml.dylib" && ln -s "libyaml-0.2.dylib" "libyaml.dylib")
libtool: link: ar cru .libs/libyaml.a  api.o reader.o scanner.o parser.o loader.o writer.o emitter.o dumper.o
libtool: link: ranlib .libs/libyaml.a
libtool: link: ( cd ".libs" && rm -f "libyaml.la" && ln -s "../libyaml.la" "libyaml.la" )
test -z "/Users/meleeman/.homebrew/Cellar/libyaml/0.1.4/lib" || ../config/install-sh -c -d "/Users/meleeman/.homebrew/Cellar/libyaml/0.1.4/lib"
make[2]: Nothing to be done for `install-data-am'.
 /bin/sh ../libtool   --mode=install /usr/bin/install -c   libyaml.la '/Users/meleeman/.homebrew/Cellar/libyaml/0.1.4/lib'
libtool: install: /usr/bin/install -c .libs/libyaml-0.2.dylib /Users/meleeman/.homebrew/Cellar/libyaml/0.1.4/lib/libyaml-0.2.dylib
libtool: install: (cd /Users/meleeman/.homebrew/Cellar/libyaml/0.1.4/lib && { ln -s -f libyaml-0.2.dylib libyaml.dylib || { rm -f libyaml.dylib && ln -s libyaml-0.2.dylib libyaml.dylib; }; })
libtool: install: /usr/bin/install -c .libs/libyaml.lai /Users/meleeman/.homebrew/Cellar/libyaml/0.1.4/lib/libyaml.la
libtool: install: /usr/bin/install -c .libs/libyaml.a /Users/meleeman/.homebrew/Cellar/libyaml/0.1.4/lib/libyaml.a
libtool: install: chmod 644 /Users/meleeman/.homebrew/Cellar/libyaml/0.1.4/lib/libyaml.a
libtool: install: ranlib /Users/meleeman/.homebrew/Cellar/libyaml/0.1.4/lib/libyaml.a
----------------------------------------------------------------------
Libraries have been installed in:
   /Users/meleeman/.homebrew/Cellar/libyaml/0.1.4/lib

If you ever happen to want to link against installed libraries
in a given directory, LIBDIR, you must either use libtool, and
specify the full pathname of the library, or use the `-LLIBDIR'
flag during linking and do at least one of the following:
   - add LIBDIR to the `DYLD_LIBRARY_PATH' environment variable
     during execution

See any operating system documentation about shared libraries for
more information, such as the ld(1) and ld.so(8) manual pages.
----------------------------------------------------------------------
Making install in .
make[2]: Nothing to be done for `install-exec-am'.
test -z "/Users/meleeman/.homebrew/Cellar/libyaml/0.1.4/lib/pkgconfig" || config/install-sh -c -d "/Users/meleeman/.homebrew/Cellar/libyaml/0.1.4/lib/pkgconfig"
 /usr/bin/install -c -m 644 yaml-0.1.pc '/Users/meleeman/.homebrew/Cellar/libyaml/0.1.4/lib/pkgconfig'
Making install in tests
cc -DHAVE_CONFIG_H -I. -I..  -I../include   -g -O2 -MT run-scanner.o -MD -MP -MF .deps/run-scanner.Tpo -c -o run-scanner.o run-scanner.c
cc -DHAVE_CONFIG_H -I. -I..  -I../include   -g -O2 -MT run-parser.o -MD -MP -MF .deps/run-parser.Tpo -c -o run-parser.o run-parser.c
brew: superenv removed: -g -O2
brew: superenv removed: -g -O2
mv -f .deps/run-parser.Tpo .deps/run-parser.Po
mv -f .deps/run-scanner.Tpo .deps/run-scanner.Po
cc -DHAVE_CONFIG_H -I. -I..  -I../include   -g -O2 -MT run-loader.o -MD -MP -MF .deps/run-loader.Tpo -c -o run-loader.o run-loader.c
cc -DHAVE_CONFIG_H -I. -I..  -I../include   -g -O2 -MT run-emitter.o -MD -MP -MF .deps/run-emitter.Tpo -c -o run-emitter.o run-emitter.c
brew: superenv removed: -g -O2
brew: superenv removed: -g -O2
mv -f .deps/run-loader.Tpo .deps/run-loader.Po
cc -DHAVE_CONFIG_H -I. -I..  -I../include   -g -O2 -MT run-dumper.o -MD -MP -MF .deps/run-dumper.Tpo -c -o run-dumper.o run-dumper.c
brew: superenv removed: -g -O2
mv -f .deps/run-emitter.Tpo .deps/run-emitter.Po
cc -DHAVE_CONFIG_H -I. -I..  -I../include   -g -O2 -MT example-reformatter.o -MD -MP -MF .deps/example-reformatter.Tpo -c -o example-reformatter.o example-reformatter.c
brew: superenv removed: -g -O2
mv -f .deps/run-dumper.Tpo .deps/run-dumper.Po
cc -DHAVE_CONFIG_H -I. -I..  -I../include   -g -O2 -MT example-reformatter-alt.o -MD -MP -MF .deps/example-reformatter-alt.Tpo -c -o example-reformatter-alt.o example-reformatter-alt.c
mv -f .deps/example-reformatter.Tpo .deps/example-reformatter.Po
cc -DHAVE_CONFIG_H -I. -I..  -I../include   -g -O2 -MT example-deconstructor.o -MD -MP -MF .deps/example-deconstructor.Tpo -c -o example-deconstructor.o example-deconstructor.c
brew: superenv removed: -g -O2
brew: superenv removed: -g -O2
mv -f .deps/example-reformatter-alt.Tpo .deps/example-reformatter-alt.Po
cc -DHAVE_CONFIG_H -I. -I..  -I../include   -g -O2 -MT example-deconstructor-alt.o -MD -MP -MF .deps/example-deconstructor-alt.Tpo -c -o example-deconstructor-alt.o example-deconstructor-alt.c
brew: superenv removed: -g -O2
mv -f .deps/example-deconstructor.Tpo .deps/example-deconstructor.Po
/bin/sh ../libtool --tag=CC   --mode=link cc  -g -O2   -o run-scanner run-scanner.o ../src/libyaml.la 
mv -f .deps/example-deconstructor-alt.Tpo .deps/example-deconstructor-alt.Po
/bin/sh ../libtool --tag=CC   --mode=link cc  -g -O2   -o run-parser run-parser.o ../src/libyaml.la 
libtool: link: cc -g -O2 -o .libs/run-scanner run-scanner.o  ../src/.libs/libyaml.dylib
brew: superenv removed: -g -O2
libtool: link: cc -g -O2 -o .libs/run-parser run-parser.o  ../src/.libs/libyaml.dylib
brew: superenv removed: -g -O2
/bin/sh ../libtool --tag=CC   --mode=link cc  -g -O2   -o run-loader run-loader.o ../src/libyaml.la 
/bin/sh ../libtool --tag=CC   --mode=link cc  -g -O2   -o run-emitter run-emitter.o ../src/libyaml.la 
libtool: link: cc -g -O2 -o .libs/run-loader run-loader.o  ../src/.libs/libyaml.dylib
brew: superenv removed: -g -O2
libtool: link: cc -g -O2 -o .libs/run-emitter run-emitter.o  ../src/.libs/libyaml.dylib
brew: superenv removed: -g -O2
/bin/sh ../libtool --tag=CC   --mode=link cc  -g -O2   -o run-dumper run-dumper.o ../src/libyaml.la 
/bin/sh ../libtool --tag=CC   --mode=link cc  -g -O2   -o example-reformatter example-reformatter.o ../src/libyaml.la 
libtool: link: cc -g -O2 -o .libs/run-dumper run-dumper.o  ../src/.libs/libyaml.dylib
brew: superenv removed: -g -O2
libtool: link: cc -g -O2 -o .libs/example-reformatter example-reformatter.o  ../src/.libs/libyaml.dylib
brew: superenv removed: -g -O2
/bin/sh ../libtool --tag=CC   --mode=link cc  -g -O2   -o example-reformatter-alt example-reformatter-alt.o ../src/libyaml.la 
/bin/sh ../libtool --tag=CC   --mode=link cc  -g -O2   -o example-deconstructor example-deconstructor.o ../src/libyaml.la 
libtool: link: cc -g -O2 -o .libs/example-reformatter-alt example-reformatter-alt.o  ../src/.libs/libyaml.dylib
brew: superenv removed: -g -O2
libtool: link: cc -g -O2 -o .libs/example-deconstructor example-deconstructor.o  ../src/.libs/libyaml.dylib
brew: superenv removed: -g -O2
/bin/sh ../libtool --tag=CC   --mode=link cc  -g -O2   -o example-deconstructor-alt example-deconstructor-alt.o ../src/libyaml.la 
libtool: link: cc -g -O2 -o .libs/example-deconstructor-alt example-deconstructor-alt.o  ../src/.libs/libyaml.dylib
brew: superenv removed: -g -O2
make[2]: Nothing to be done for `install-exec-am'.
make[2]: Nothing to be done for `install-data-am'.
Making install in win32
make[2]: Nothing to be done for `install-exec-am'.
make[2]: Nothing to be done for `install-data-am'.
