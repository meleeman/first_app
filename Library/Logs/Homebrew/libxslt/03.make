Making install in libxslt
 .././install-sh -c -d '/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib'
 .././install-sh -c -d '/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/share/man/man3'
 /bin/sh ../libtool   --mode=install /usr/bin/install -c   libxslt.la '/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib'
 /usr/bin/install -c -m 644 libxslt.3 '/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/share/man/man3'
 .././install-sh -c -d '/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/include/libxslt'
libtool: install: /usr/bin/install -c .libs/libxslt.1.dylib /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib/libxslt.1.dylib
libtool: install: (cd /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib && { ln -s -f libxslt.1.dylib libxslt.dylib || { rm -f libxslt.dylib && ln -s libxslt.1.dylib libxslt.dylib; }; })
libtool: install: /usr/bin/install -c .libs/libxslt.lai /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib/libxslt.la
libtool: install: /usr/bin/install -c .libs/libxslt.a /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib/libxslt.a
 /usr/bin/install -c -m 644 xslt.h xsltutils.h pattern.h templates.h variables.h keys.h numbersInternals.h extensions.h extra.h functions.h namespaces.h imports.h attributes.h documents.h preproc.h transform.h security.h xsltInternals.h xsltconfig.h xsltexports.h xsltlocale.h '/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/include/libxslt'
libtool: install: chmod 644 /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib/libxslt.a
libtool: install: ranlib /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib/libxslt.a
/usr/bin/make  install-exec-hook
.././install-sh -c -d "/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib/libxslt-plugins"
Making install in libexslt
 .././install-sh -c -d '/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib'
 .././install-sh -c -d '/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/include/libexslt'
 /bin/sh ../libtool   --mode=install /usr/bin/install -c   libexslt.la '/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib'
libtool: install: /usr/bin/install -c .libs/libexslt.0.dylib /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib/libexslt.0.dylib
 /usr/bin/install -c -m 644 exslt.h exsltconfig.h exsltexports.h '/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/include/libexslt'
libtool: install: (cd /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib && { ln -s -f libexslt.0.dylib libexslt.dylib || { rm -f libexslt.dylib && ln -s libexslt.0.dylib libexslt.dylib; }; })
libtool: install: /usr/bin/install -c .libs/libexslt.lai /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib/libexslt.la
 .././install-sh -c -d '/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/share/man/man3'
libtool: install: /usr/bin/install -c .libs/libexslt.a /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib/libexslt.a
libtool: install: chmod 644 /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib/libexslt.a
libtool: install: ranlib /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib/libexslt.a
ranlib: file: /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib/libexslt.a(crypto.o) has no symbols
 /usr/bin/install -c -m 644 libexslt.3 '/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/share/man/man3'
Making install in xsltproc
make[2]: Nothing to be done for `install-data-am'.
 .././install-sh -c -d '/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/bin'
  /bin/sh ../libtool   --mode=install /usr/bin/install -c xsltproc '/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/bin'
libtool: install: /usr/bin/install -c .libs/xsltproc /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/bin/xsltproc
Making install in doc
I/O error : Attempt to load network entity http://www.oasis-open.org/docbook/xml/4.1.2/docbookx.dtd
./xsltproc.xml:8: warning: failed to load external entity "http://www.oasis-open.org/docbook/xml/4.1.2/docbookx.dtd"
]>
  ^
I/O error : Attempt to load network entity http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
warning: failed to load external entity "http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl"
error
xsltParseStylesheetFile : cannot parse http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
compilation error: file ./xsltproc.xml line 10 element refentry
xsltParseStylesheetProcess : document is not a stylesheet
make[1]: [xsltproc.1] Error 5 (ignored)
make[2]: Nothing to be done for `install-exec-am'.
.././install-sh -c -d /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/share/doc/libxslt-1.1.28/html
I/O error : Attempt to load network entity http://www.oasis-open.org/docbook/xml/4.1.2/docbookx.dtd
./xsltproc.xml:8: warning: failed to load external entity "http://www.oasis-open.org/docbook/xml/4.1.2/docbookx.dtd"
]>
  ^
I/O error : Attempt to load network entity http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
warning: failed to load external entity "http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl"
error
xsltParseStylesheetFile : cannot parse http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
compilation error: file ./xsltproc.xml line 10 element refentry
xsltParseStylesheetProcess : document is not a stylesheet
make[2]: [xsltproc.1] Error 5 (ignored)
 .././install-sh -c -d '/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/share/man/man1'
/usr/bin/install -c -m 0644 ./*.html /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/share/doc/libxslt-1.1.28/html
/usr/bin/install -c -m 0644 ./*.gif /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/share/doc/libxslt-1.1.28/html
.././install-sh -c -d /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/share/doc/libxslt-1.1.28/html/html
 /usr/bin/install -c -m 644 xsltproc.1 '/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/share/man/man1'
/usr/bin/install -c -m 0644 ./html/*.html /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/share/doc/libxslt-1.1.28/html/html
/usr/bin/install -c -m 0644 ./html/*.png /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/share/doc/libxslt-1.1.28/html/html
/usr/bin/install -c -m 0644 ./html/index.sgml /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/share/doc/libxslt-1.1.28/html/html
install: ./html/index.sgml: No such file or directory
make[2]: [install-data-local] Error 71 (ignored)
.././install-sh -c -d /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/share/doc/libxslt-1.1.28/html/EXSLT
/usr/bin/install -c -m 0644 ./EXSLT/*.html /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/share/doc/libxslt-1.1.28/html/EXSLT
.././install-sh -c -d /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/share/doc/libxslt-1.1.28/html/tutorial
/usr/bin/install -c -m 0644 ./tutorial/* /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/share/doc/libxslt-1.1.28/html/tutorial
.././install-sh -c -d /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/share/doc/libxslt-1.1.28/html/tutorial2
/usr/bin/install -c -m 0644 ./tutorial2/* /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/share/doc/libxslt-1.1.28/html/tutorial2
Making install in python
Making install in .
make[3]: Nothing to be done for `install-exec-am'.
.././install-sh -c -d /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib/python2.7/site-packages
 .././install-sh -c -d '/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib/python2.7/site-packages'
 /bin/sh ../libtool   --mode=install /usr/bin/install -c   libxsltmod.la '/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib/python2.7/site-packages'
/usr/bin/install -c -m 0644 libxslt.py /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib/python2.7/site-packages
.././install-sh -c -d /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/share/doc/libxslt-python-1.1.28
libtool: install: /usr/bin/install -c .libs/libxsltmod.so /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib/python2.7/site-packages/libxsltmod.so
libtool: install: /usr/bin/install -c .libs/libxsltmod.lai /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib/python2.7/site-packages/libxsltmod.la
libtool: install: /usr/bin/install -c .libs/libxsltmod.a /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib/python2.7/site-packages/libxsltmod.a
libtool: install: chmod 644 /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib/python2.7/site-packages/libxsltmod.a
libtool: install: ranlib /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib/python2.7/site-packages/libxsltmod.a
Making install in tests
make[3]: Nothing to be done for `install-exec-am'.
../.././install-sh -c -d /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/share/doc/libxslt-python-1.1.28/examples
(for test in basic.py exslt.py extelem.py extfunc.py test.xml test.xsl pyxsltproc.py; \
	  do /usr/bin/install -c -m 0644 ./$test /Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/share/doc/libxslt-python-1.1.28/examples ; done)
Making install in tests
Making install in docs
make[3]: Nothing to be done for `install-exec-am'.
make[3]: Nothing to be done for `install-data-am'.
Making install in REC1
make[3]: Nothing to be done for `install-exec-am'.
make[3]: Nothing to be done for `install-data-am'.
Making install in REC2
make[3]: Nothing to be done for `install-exec-am'.
make[3]: Nothing to be done for `install-data-am'.
Making install in REC
make[3]: Nothing to be done for `install-exec-am'.
make[3]: Nothing to be done for `install-data-am'.
Making install in general
make[3]: Nothing to be done for `install-exec-am'.
make[3]: Nothing to be done for `install-data-am'.
Making install in namespaces
make[3]: Nothing to be done for `install-exec-am'.
make[3]: Nothing to be done for `install-data-am'.
Making install in keys
make[3]: Nothing to be done for `install-exec-am'.
make[3]: Nothing to be done for `install-data-am'.
Making install in numbers
make[3]: Nothing to be done for `install-exec-am'.
make[3]: Nothing to be done for `install-data-am'.
Making install in documents
make[3]: Nothing to be done for `install-exec-am'.
make[3]: Nothing to be done for `install-data-am'.
Making install in extensions
make[3]: Nothing to be done for `install-exec-am'.
make[3]: Nothing to be done for `install-data-am'.
Making install in reports
make[3]: Nothing to be done for `install-exec-am'.
make[3]: Nothing to be done for `install-data-am'.
Making install in xmlspec
make[3]: Nothing to be done for `install-exec-am'.
make[3]: Nothing to be done for `install-data-am'.
Making install in multiple
make[3]: Nothing to be done for `install-exec-am'.
make[3]: Nothing to be done for `install-data-am'.
Making install in xinclude
make[3]: Nothing to be done for `install-exec-am'.
make[3]: Nothing to be done for `install-data-am'.
Making install in XSLTMark
make[3]: Nothing to be done for `install-exec-am'.
make[3]: Nothing to be done for `install-data-am'.
Making install in docbook
make[3]: Nothing to be done for `install-exec-am'.
make[3]: Nothing to be done for `install-data-am'.
Making install in exslt
Making install in common
make[4]: Nothing to be done for `install-exec-am'.
make[4]: Nothing to be done for `install-data-am'.
Making install in functions
make[4]: Nothing to be done for `install-exec-am'.
make[4]: Nothing to be done for `install-data-am'.
Making install in math
make[4]: Nothing to be done for `install-exec-am'.
make[4]: Nothing to be done for `install-data-am'.
Making install in sets
make[4]: Nothing to be done for `install-exec-am'.
make[4]: Nothing to be done for `install-data-am'.
Making install in strings
make[4]: Nothing to be done for `install-exec-am'.
make[4]: Nothing to be done for `install-data-am'.
Making install in dynamic
make[4]: Nothing to be done for `install-exec-am'.
make[4]: Nothing to be done for `install-data-am'.
Making install in date
make[4]: Nothing to be done for `install-exec-am'.
make[4]: Nothing to be done for `install-data-am'.
make[4]: Nothing to be done for `install-exec-am'.
make[4]: Nothing to be done for `install-data-am'.
Making install in plugins
make[3]: Nothing to be done for `install-exec-am'.
make[3]: Nothing to be done for `install-data-am'.
make[3]: Nothing to be done for `install-exec-am'.
make[3]: Nothing to be done for `install-data-am'.
 ./install-sh -c -d '/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib'
 ./install-sh -c -d '/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/bin'
 /usr/bin/install -c -m 644 xsltConf.sh '/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib'
 /usr/bin/install -c xslt-config '/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/bin'
 ./install-sh -c -d '/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/share/aclocal'
 ./install-sh -c -d '/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib/pkgconfig'
 /usr/bin/install -c -m 644 libxslt.m4 '/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/share/aclocal'
 /usr/bin/install -c -m 644 libxslt.pc libexslt.pc '/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib/pkgconfig'
