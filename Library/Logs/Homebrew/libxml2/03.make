/usr/bin/make  install-recursive
Making install in include
Making install in libxml
make[4]: Nothing to be done for `install-exec-am'.
test -z "/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/include/libxml2/libxml" || ../.././install-sh -c -d "/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/include/libxml2/libxml"
 /usr/bin/install -c -m 644 SAX.h entities.h encoding.h parser.h parserInternals.h xmlerror.h HTMLparser.h HTMLtree.h debugXML.h tree.h list.h hash.h xpath.h xpathInternals.h xpointer.h xinclude.h xmlIO.h xmlmemory.h nanohttp.h nanoftp.h uri.h valid.h xlink.h xmlversion.h DOCBparser.h catalog.h threads.h globals.h c14n.h xmlautomata.h xmlregexp.h xmlmodule.h xmlschemas.h schemasInternals.h xmlschemastypes.h xmlstring.h xmlunicode.h xmlreader.h relaxng.h dict.h '/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/include/libxml2/libxml'
 /usr/bin/install -c -m 644 SAX2.h xmlexports.h xmlwriter.h chvalid.h pattern.h xmlsave.h schematron.h '/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/include/libxml2/libxml'
make[4]: Nothing to be done for `install-exec-am'.
make[4]: Nothing to be done for `install-data-am'.
Making install in .
test -z "/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/lib" || ./install-sh -c -d "/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/lib"
 /bin/sh ./libtool   --mode=install /usr/bin/install -c   libxml2.la '/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/lib'
libtool: install: /usr/bin/install -c .libs/libxml2.2.dylib /Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/lib/libxml2.2.dylib
libtool: install: (cd /Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/lib && { ln -s -f libxml2.2.dylib libxml2.dylib || { rm -f libxml2.dylib && ln -s libxml2.2.dylib libxml2.dylib; }; })
libtool: install: /usr/bin/install -c .libs/libxml2.lai /Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/lib/libxml2.la
libtool: install: /usr/bin/install -c .libs/libxml2.a /Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/lib/libxml2.a
libtool: install: chmod 644 /Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/lib/libxml2.a
libtool: install: ranlib /Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/lib/libxml2.a
ranlib: file: /Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/lib/libxml2.a(xzlib.o) has no symbols
test -z "/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/bin" || ./install-sh -c -d "/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/bin"
  /bin/sh ./libtool   --mode=install /usr/bin/install -c xmllint xmlcatalog '/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/bin'
libtool: install: /usr/bin/install -c .libs/xmllint /Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/bin/xmllint
libtool: install: /usr/bin/install -c .libs/xmlcatalog /Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/bin/xmlcatalog
test -z "/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/bin" || ./install-sh -c -d "/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/bin"
 /usr/bin/install -c xml2-config '/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/bin'
test -z "/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/lib" || ./install-sh -c -d "/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/lib"
 /usr/bin/install -c -m 644 xml2Conf.sh '/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/lib'
./install-sh -c -d /Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/doc/libxml2-2.9.0
/usr/bin/install -c -m 0644 ./Copyright /Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/doc/libxml2-2.9.0
./install-sh -c -d /Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/doc/libxml2-2.9.0/examples
/usr/bin/install -c -m 0644 ./xmllint.c /Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/doc/libxml2-2.9.0/examples
/usr/bin/install -c -m 0644 ./testSAX.c /Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/doc/libxml2-2.9.0/examples
/usr/bin/install -c -m 0644 ./testHTML.c /Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/doc/libxml2-2.9.0/examples
/usr/bin/install -c -m 0644 ./testXPath.c /Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/doc/libxml2-2.9.0/examples
test -z "/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/aclocal" || ./install-sh -c -d "/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/aclocal"
 /usr/bin/install -c -m 644 libxml.m4 '/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/aclocal'
test -z "/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/man/man1" || ./install-sh -c -d "/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/man/man1"
 /usr/bin/install -c -m 644 xml2-config.1 '/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/man/man1'
test -z "/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/man/man3" || ./install-sh -c -d "/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/man/man3"
 /usr/bin/install -c -m 644 libxml.3 '/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/man/man3'
test -z "/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/lib/pkgconfig" || ./install-sh -c -d "/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/lib/pkgconfig"
 /usr/bin/install -c -m 644 libxml-2.0.pc '/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/lib/pkgconfig'
Making install in doc
Making install in .
make[4]: Nothing to be done for `install-exec-am'.
.././install-sh -c -d /Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/doc/libxml2-2.9.0/html
/usr/bin/install -c -m 0644 ./xml.html ./encoding.html ./FAQ.html ./structure.gif ./DOM.gif ./smallfootonly.gif ./redhat.gif ./libxml.gif ./w3c.png ./Libxml2-Logo-180x168.gif ./Libxml2-Logo-90x34.gif /Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/doc/libxml2-2.9.0/html
.././install-sh -c -d /Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/doc/libxml2-2.9.0/html/html
/usr/bin/install -c -m 0644 ./html/*.html /Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/doc/libxml2-2.9.0/html/html
/usr/bin/install -c -m 0644 ./html/*.png /Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/doc/libxml2-2.9.0/html/html
.././install-sh -c -d /Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/doc/libxml2-2.9.0/html/tutorial
/usr/bin/install -c -m 0644 ./tutorial/*.* \
		/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/doc/libxml2-2.9.0/html/tutorial
.././install-sh -c -d /Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/doc/libxml2-2.9.0/html/tutorial/images
/usr/bin/install -c -m 0644 ./tutorial/images/*.* \
		/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/doc/libxml2-2.9.0/html/tutorial/images
.././install-sh -c -d /Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/doc/libxml2-2.9.0/html/tutorial/images/callouts
/usr/bin/install -c -m 0644 ./tutorial/images/callouts/*.* \
		/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/doc/libxml2-2.9.0/html/tutorial/images/callouts
test -z "/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/man/man1" || .././install-sh -c -d "/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/man/man1"
 /usr/bin/install -c -m 644 xmllint.1 xmlcatalog.1 '/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/man/man1'
Making install in devhelp
make[4]: Nothing to be done for `install-exec-am'.
test -z "/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/gtk-doc/html/libxml2" || ../.././install-sh -c -d "/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/gtk-doc/html/libxml2"
 /usr/bin/install -c -m 644 libxml2.devhelp general.html index.html libxml2-c14n.html libxml2-catalog.html libxml2-chvalid.html libxml2-debugXML.html libxml2-dict.html libxml2-DOCBparser.html libxml2-encoding.html libxml2-entities.html libxml2-globals.html libxml2-hash.html libxml2-HTMLparser.html libxml2-HTMLtree.html libxml2-list.html libxml2-nanoftp.html libxml2-nanohttp.html libxml2-parser.html libxml2-parserInternals.html libxml2-pattern.html libxml2-relaxng.html libxml2-SAX2.html libxml2-SAX.html libxml2-schemasInternals.html libxml2-schematron.html libxml2-threads.html libxml2-tree.html libxml2-uri.html libxml2-valid.html libxml2-xinclude.html libxml2-xlink.html libxml2-xmlautomata.html libxml2-xmlerror.html libxml2-xmlexports.html libxml2-xmlIO.html libxml2-xmlmemory.html libxml2-xmlmodule.html libxml2-xmlreader.html libxml2-xmlregexp.html '/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/gtk-doc/html/libxml2'
 /usr/bin/install -c -m 644 libxml2-xmlsave.html libxml2-xmlschemas.html libxml2-xmlschemastypes.html libxml2-xmlstring.html libxml2-xmlunicode.html libxml2-xmlversion.html libxml2-xmlwriter.html libxml2-xpath.html libxml2-xpathInternals.html libxml2-xpointer.html home.png left.png right.png up.png style.css '/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/gtk-doc/html/libxml2'
Making install in examples
make[4]: Nothing to be done for `install-exec-am'.
../.././install-sh -c -d /Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/doc/libxml2-2.9.0/html
/usr/bin/install -c -m 0644 ./*.html ./*.c ./*.xml ./*.xsl ./*.res /Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/share/doc/libxml2-2.9.0/html
Making install in example
make[3]: Nothing to be done for `install-exec-am'.
make[3]: Nothing to be done for `install-data-am'.
Making install in xstc
make[3]: Nothing to be done for `install-exec-am'.
make[3]: Nothing to be done for `install-data-am'.
