/usr/bin/make  all-recursive
Making all in libxslt
  CC     attrvt.lo
  CC     xslt.lo
brew: superenv removed: -I../libxslt -g -O2 -Wall
brew: superenv removed: -I../libxslt -g -O2 -Wall
  CC     xsltlocale.lo
brew: superenv removed: -I../libxslt -g -O2 -Wall
  CC     xsltutils.lo
brew: superenv removed: -I../libxslt -g -O2 -Wall
  CC     pattern.lo
brew: superenv removed: -I../libxslt -g -O2 -Wall
  CC     templates.lo
brew: superenv removed: -I../libxslt -g -O2 -Wall
  CC     variables.lo
brew: superenv removed: -I../libxslt -g -O2 -Wall
  CC     keys.lo
brew: superenv removed: -I../libxslt -g -O2 -Wall
  CC     numbers.lo
brew: superenv removed: -I../libxslt -g -O2 -Wall
  CC     extensions.lo
brew: superenv removed: -I../libxslt -g -O2 -Wall
  CC     extra.lo
  CC     functions.lo
brew: superenv removed: -I../libxslt -g -O2 -Wall
brew: superenv removed: -I../libxslt -g -O2 -Wall
  CC     namespaces.lo
brew: superenv removed: -I../libxslt -g -O2 -Wall
  CC     imports.lo
brew: superenv removed: -I../libxslt -g -O2 -Wall
  CC     attributes.lo
brew: superenv removed: -I../libxslt -g -O2 -Wall
  CC     documents.lo
brew: superenv removed: -I../libxslt -g -O2 -Wall
  CC     preproc.lo
  CC     transform.lo
brew: superenv removed: -I../libxslt -g -O2 -Wall
brew: superenv removed: -I../libxslt -g -O2 -Wall
  CC     security.lo
brew: superenv removed: -I../libxslt -g -O2 -Wall
  CCLD   libxslt.la
brew: superenv removed: -O2
Making all in libexslt
  CC     exslt.lo
  CC     common.lo
brew: superenv removed: -I../libexslt -I../libexslt -g -O2 -Wall
brew: superenv removed: -I../libexslt -I../libexslt -g -O2 -Wall
  CC     crypto.lo
  CC     math.lo
brew: superenv removed: -I../libexslt -I../libexslt -g -O2 -Wall
brew: superenv removed: -I../libexslt -I../libexslt -g -O2 -Wall
  CC     sets.lo
brew: superenv removed: -I../libexslt -I../libexslt -g -O2 -Wall
  CC     functions.lo
  CC     strings.lo
brew: superenv removed: -I../libexslt -I../libexslt -g -O2 -Wall
brew: superenv removed: -I../libexslt -I../libexslt -g -O2 -Wall
  CC     date.lo
brew: superenv removed: -I../libexslt -I../libexslt -g -O2 -Wall
  CC     saxon.lo
brew: superenv removed: -I../libexslt -I../libexslt -g -O2 -Wall
  CC     dynamic.lo
brew: superenv removed: -I../libexslt -I../libexslt -g -O2 -Wall
  CCLD   libexslt.la
brew: superenv removed: -O2
/usr/bin/ranlib: file: .libs/libexslt.a(crypto.o) has no symbols
ranlib: file: .libs/libexslt.a(crypto.o) has no symbols
Making all in xsltproc
  CC     xsltproc.o
  CC     testThreads.o
brew: superenv removed: -g -O2 -Wall
brew: superenv removed: -g -O2 -Wall
  CCLD   testThreads
  CCLD   xsltproc
brew: superenv removed: -g -O2 -Wall
brew: superenv removed: -g -O2 -Wall
Making all in doc
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
Making all in python
Making all in .
SRCDIR=. /usr/bin/python ./generator.py
Found 242 functions in libxslt-api.xml
Found 32 functions in libxslt-python-api.xml
Generated 143 wrapper functions, 98 failed, 33 skipped

Missing type converters:
xsltTopLevelFunction:2  xmlXPathObjectPtr:1  xsltDecimalFormatPtr:2  xmlChar **:2  xmlXPathCompExprPtr:5  xsltPreComputeFunction:1  xsltElemPreCompPtr:2  xsltDebugTraceCodes:2  xsltDocumentPtr:8  xsltSecurityPrefsPtr:11  xsltTemplatePtr:4  pythonObject *:5  ...:1  xsltNumberDataPtr:1  xmlHashTablePtr:1  xmlNodePtr *:3  xsltExtInitFunction:2  xsltCompilerCtxtPtr:2  char **:2  xmlXPathObjectPtr *:1  xmlNodeSetPtr:2  xmlXPathFunction:3  xsltTransformFunction:5  xsltCompMatchPtr:3  void *:11  xsltLocale:4  xmlOutputBufferPtr:1  xsltPointerListPtr:4  xmlDictPtr:1  xsltSortFunc:2  xsltNsMapPtr:1  xsltStackElemPtr:3 
touch gen_prog
  CC     libxsltmod_la-libxslt.lo
  CC     libxsltmod_la-types.lo
brew: superenv removed: -g -O2 -Wall
brew: superenv removed: -g -O2 -Wall
  CC     libxsltmod_la-libxslt-py.lo
brew: superenv removed: -g -O2 -Wall
cat ./libxsl.py libxsltclass.py > libxslt.py
  CCLD   libxsltmod.la
brew: superenv removed: -O2
Making all in tests
make[3]: Nothing to be done for `all'.
Making all in tests
Making all in docs
make[3]: Nothing to be done for `all'.
Making all in REC1
make[3]: Nothing to be done for `all'.
Making all in REC2
make[3]: Nothing to be done for `all'.
Making all in REC
make[3]: Nothing to be done for `all'.
Making all in general
make[3]: Nothing to be done for `all'.
Making all in namespaces
make[3]: Nothing to be done for `all'.
Making all in keys
make[3]: Nothing to be done for `all'.
Making all in numbers
make[3]: Nothing to be done for `all'.
Making all in documents
make[3]: Nothing to be done for `all'.
Making all in extensions
make[3]: Nothing to be done for `all'.
Making all in reports
make[3]: Nothing to be done for `all'.
Making all in xmlspec
make[3]: Nothing to be done for `all'.
Making all in multiple
make[3]: Nothing to be done for `all'.
Making all in xinclude
make[3]: Nothing to be done for `all'.
Making all in XSLTMark
make[3]: Nothing to be done for `all'.
Making all in docbook
make[3]: Nothing to be done for `all'.
Making all in exslt
Making all in common
make[4]: Nothing to be done for `all'.
Making all in functions
make[4]: Nothing to be done for `all'.
Making all in math
make[4]: Nothing to be done for `all'.
Making all in sets
make[4]: Nothing to be done for `all'.
Making all in strings
make[4]: Nothing to be done for `all'.
Making all in dynamic
make[4]: Nothing to be done for `all'.
Making all in date
make[4]: Nothing to be done for `all'.
make[4]: Nothing to be done for `all-am'.
Making all in plugins
  CC     xmlsoft_org_xslt_testplugin_la-testplugin.lo
brew: superenv removed: -g -O2 -Wall
  CCLD   xmlsoft_org_xslt_testplugin.la
brew: superenv removed: -O2
make[3]: Nothing to be done for `all-am'.
sed -e 's?\@XSLT_LIBDIR\@?-L/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/lib?g' \
	    -e 's?\@XSLT_INCLUDEDIR\@?-I/Users/meleeman/.homebrew/Cellar/libxslt/1.1.28/include?g' \
	    -e 's?\@VERSION\@?1.1.28?g' \
	    -e 's?\@XSLT_LIBS\@?-lxslt  -L/Users/meleeman/.homebrew/Cellar/libxml2/2.9.0/lib -lxml2 -lz -lpthread -liconv -lm  ?g' \
	       < ./xsltConf.sh.in > xsltConf.tmp \
	&& mv xsltConf.tmp xsltConf.sh
