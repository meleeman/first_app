Making install in m4
make[2]: Nothing to be done for `install-exec-am'.
make[2]: Nothing to be done for `install-data-am'.
Making install in gl
cp ./alloca_.h alloca.h-t
mv alloca.h-t alloca.h
/usr/bin/make  install-am
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..     -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o dummyobj.lo dummyobj.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c dummyobj.c  -fno-common -DPIC -o .libs/dummyobj.o
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
/bin/sh ../libtool --tag=CC   --mode=link cc  -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign   -o libgnu.la  dummyobj.lo  
libtool: link: ar cru .libs/libgnu.a .libs/dummyobj.o 
libtool: link: ranlib .libs/libgnu.a
libtool: link: ( cd ".libs" && rm -f "libgnu.la" && ln -s "../libgnu.la" "libgnu.la" )
make[3]: Nothing to be done for `install-exec-am'.
make[3]: Nothing to be done for `install-data-am'.
Making install in src
cc -I. -DBUILD_GENTOOLS -o asn1-gentables \
		./asn1-gentables.c \
                `test -f 'asn1-parse.c' || echo './'`asn1-parse.c  \
                ./asn1-func.c      \
                ./gen-help.c
/usr/bin/make  install-am
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o visibility.lo visibility.c
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o reader.lo reader.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../gl -I../gl -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c visibility.c  -fno-common -DPIC -o .libs/visibility.o
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../gl -I../gl -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c reader.c  -fno-common -DPIC -o .libs/reader.o
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o writer.lo writer.c
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o asn1-parse.lo asn1-parse.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../gl -I../gl -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c writer.c  -fno-common -DPIC -o .libs/writer.o
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../gl -I../gl -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c asn1-parse.c  -fno-common -DPIC -o .libs/asn1-parse.o
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o asn1-func.lo asn1-func.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../gl -I../gl -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c asn1-func.c  -fno-common -DPIC -o .libs/asn1-func.o
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o asn1-func2.lo asn1-func2.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../gl -I../gl -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c asn1-func2.c  -fno-common -DPIC -o .libs/asn1-func2.o
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o ber-help.lo ber-help.c
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o ber-decoder.lo ber-decoder.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../gl -I../gl -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c ber-help.c  -fno-common -DPIC -o .libs/ber-help.o
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../gl -I../gl -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c ber-decoder.c  -fno-common -DPIC -o .libs/ber-decoder.o
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o der-encoder.lo der-encoder.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../gl -I../gl -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c der-encoder.c  -fno-common -DPIC -o .libs/der-encoder.o
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o cert.lo cert.c
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o cms.lo cms.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../gl -I../gl -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c cert.c  -fno-common -DPIC -o .libs/cert.o
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../gl -I../gl -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c cms.c  -fno-common -DPIC -o .libs/cms.o
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o cms-parser.lo cms-parser.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../gl -I../gl -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c cms-parser.c  -fno-common -DPIC -o .libs/cms-parser.o
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o crl.lo crl.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../gl -I../gl -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c crl.c  -fno-common -DPIC -o .libs/crl.o
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o certreq.lo certreq.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../gl -I../gl -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c certreq.c  -fno-common -DPIC -o .libs/certreq.o
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o ocsp.lo ocsp.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../gl -I../gl -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c ocsp.c  -fno-common -DPIC -o .libs/ocsp.o
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o keyinfo.lo keyinfo.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../gl -I../gl -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c keyinfo.c  -fno-common -DPIC -o .libs/keyinfo.o
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o oid.lo oid.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../gl -I../gl -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c oid.c  -fno-common -DPIC -o .libs/oid.o
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o name.lo name.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../gl -I../gl -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c name.c  -fno-common -DPIC -o .libs/name.o
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o dn.lo dn.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../gl -I../gl -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c dn.c  -fno-common -DPIC -o .libs/dn.o
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o time.lo time.c
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../gl -I../gl -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c time.c  -fno-common -DPIC -o .libs/time.o
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o version.lo version.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../gl -I../gl -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c version.c  -fno-common -DPIC -o .libs/version.o
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o util.lo util.c
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../gl -I../gl -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c util.c  -fno-common -DPIC -o .libs/util.o
/bin/sh ../libtool --tag=CC   --mode=compile cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o asn1-tables.lo asn1-tables.c
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
libtool: compile:  cc -DHAVE_CONFIG_H -I. -I.. -I../gl -I../gl -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c asn1-tables.c  -fno-common -DPIC -o .libs/asn1-tables.o
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o ber_dump-ber-dump.o `test -f 'ber-dump.c' || echo './'`ber-dump.c
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o ber_dump-ber-decoder.o `test -f 'ber-decoder.c' || echo './'`ber-decoder.c
cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o ber_dump-ber-help.o `test -f 'ber-help.c' || echo './'`ber-help.c
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o ber_dump-reader.o `test -f 'reader.c' || echo './'`reader.c
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o ber_dump-writer.o `test -f 'writer.c' || echo './'`writer.c
cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o ber_dump-asn1-parse.o `test -f 'asn1-parse.c' || echo './'`asn1-parse.c
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o ber_dump-asn1-func.o `test -f 'asn1-func.c' || echo './'`asn1-func.c
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o ber_dump-oid.o `test -f 'oid.c' || echo './'`oid.c
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
cc -DHAVE_CONFIG_H -I. -I..  -I../gl -I../gl  -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c -o ber_dump-util.o `test -f 'util.c' || echo './'`util.c
/bin/sh ../libtool --tag=CC   --mode=link cc -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign    -version-info 19:1:11  -o libksba.la -rpath /Users/meleeman/.homebrew/Cellar/libksba/1.3.0/lib visibility.lo reader.lo writer.lo asn1-parse.lo asn1-func.lo asn1-func2.lo ber-help.lo ber-decoder.lo der-encoder.lo cert.lo cms.lo cms-parser.lo crl.lo certreq.lo ocsp.lo keyinfo.lo oid.lo name.lo dn.lo time.lo version.lo util.lo asn1-tables.lo   -L/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/lib -lgpg-error 
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
/bin/sh ../libtool --tag=CC   --mode=link cc -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign   -o ber-dump ber_dump-ber-dump.o ber_dump-ber-decoder.o ber_dump-ber-help.o ber_dump-reader.o ber_dump-writer.o ber_dump-asn1-parse.o ber_dump-asn1-func.o ber_dump-oid.o ber_dump-util.o -L/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/lib -lgpg-error ../gl/libgnu.la 
libtool: link: cc -dynamiclib -Wl,-undefined -Wl,dynamic_lookup -o .libs/libksba.8.dylib  .libs/visibility.o .libs/reader.o .libs/writer.o .libs/asn1-parse.o .libs/asn1-func.o .libs/asn1-func2.o .libs/ber-help.o .libs/ber-decoder.o .libs/der-encoder.o .libs/cert.o .libs/cms.o .libs/cms-parser.o .libs/crl.o .libs/certreq.o .libs/ocsp.o .libs/keyinfo.o .libs/oid.o .libs/name.o .libs/dn.o .libs/time.o .libs/version.o .libs/util.o .libs/asn1-tables.o   -L/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/lib -lgpg-error  -O2   -install_name  /Users/meleeman/.homebrew/Cellar/libksba/1.3.0/lib/libksba.8.dylib -compatibility_version 20 -current_version 20.1 -Wl,-single_module
brew: superenv removed: -O2
libtool: link: (cd ".libs" && rm -f "libksba.dylib" && ln -s "libksba.8.dylib" "libksba.dylib")
libtool: link: cc -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -o ber-dump ber_dump-ber-dump.o ber_dump-ber-decoder.o ber_dump-ber-help.o ber_dump-reader.o ber_dump-writer.o ber_dump-asn1-parse.o ber_dump-asn1-func.o ber_dump-oid.o ber_dump-util.o  -L/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/lib -lgpg-error ../gl/.libs/libgnu.a
libtool: link: ( cd ".libs" && rm -f "libksba.la" && ln -s "../libksba.la" "libksba.la" )
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
 .././install-sh -c -d '/Users/meleeman/.homebrew/Cellar/libksba/1.3.0/bin'
 .././install-sh -c -d '/Users/meleeman/.homebrew/Cellar/libksba/1.3.0/lib'
 /bin/sh ../libtool   --mode=install /usr/bin/install -c   libksba.la '/Users/meleeman/.homebrew/Cellar/libksba/1.3.0/lib'
 /usr/bin/install -c ksba-config '/Users/meleeman/.homebrew/Cellar/libksba/1.3.0/bin'
 .././install-sh -c -d '/Users/meleeman/.homebrew/Cellar/libksba/1.3.0/include'
libtool: install: /usr/bin/install -c .libs/libksba.8.dylib /Users/meleeman/.homebrew/Cellar/libksba/1.3.0/lib/libksba.8.dylib
libtool: install: (cd /Users/meleeman/.homebrew/Cellar/libksba/1.3.0/lib && { ln -s -f libksba.8.dylib libksba.dylib || { rm -f libksba.dylib && ln -s libksba.8.dylib libksba.dylib; }; })
libtool: install: /usr/bin/install -c .libs/libksba.lai /Users/meleeman/.homebrew/Cellar/libksba/1.3.0/lib/libksba.la
 /usr/bin/install -c -m 644 ksba.h '/Users/meleeman/.homebrew/Cellar/libksba/1.3.0/include'
 .././install-sh -c -d '/Users/meleeman/.homebrew/Cellar/libksba/1.3.0/share/aclocal'
 /usr/bin/install -c -m 644 ksba.m4 '/Users/meleeman/.homebrew/Cellar/libksba/1.3.0/share/aclocal'
Making install in tests
set -e; f="/dev/null"; \
        for i in /etc/dumpasn1 /usr/local/bin /usr/local/share /usr/bin \
                 /usr/share ; do \
          if test -f $i/dumpasn1.cfg; then f=$i/dumpasn1.cfg; break; fi; \
        done; awk -f ./mkoidtbl.awk $f >oidtranstbl.h
/usr/bin/make  install-am
cc -DHAVE_CONFIG_H -I. -I..    -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c cert-basic.c
cc -DHAVE_CONFIG_H -I. -I..    -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c t-crl-parser.c
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
cc -DHAVE_CONFIG_H -I. -I..    -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c t-dnparser.c
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
cc -DHAVE_CONFIG_H -I. -I..    -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c t-cms-parser.c
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
cc -DHAVE_CONFIG_H -I. -I..    -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c t-ocsp.c
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
cc -DHAVE_CONFIG_H -I. -I..    -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c sha1.c
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
cc -DHAVE_CONFIG_H -I. -I..    -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -c t-oid.c
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
/bin/sh ../libtool --tag=CC   --mode=link cc -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign   -o cert-basic cert-basic.o ../src/libksba.la -L/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/lib -lgpg-error 
/bin/sh ../libtool --tag=CC   --mode=link cc -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign   -o t-crl-parser t-crl-parser.o ../src/libksba.la -L/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/lib -lgpg-error 
libtool: link: cc -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -o .libs/cert-basic cert-basic.o  ../src/.libs/libksba.dylib -L/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/lib -lgpg-error
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
libtool: link: cc -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -o .libs/t-crl-parser t-crl-parser.o  ../src/.libs/libksba.dylib -L/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/lib -lgpg-error
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
/bin/sh ../libtool --tag=CC   --mode=link cc -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign   -o t-dnparser t-dnparser.o ../src/libksba.la -L/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/lib -lgpg-error 
/bin/sh ../libtool --tag=CC   --mode=link cc -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign   -o t-cms-parser t-cms-parser.o ../src/libksba.la -L/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/lib -lgpg-error 
libtool: link: cc -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -o .libs/t-dnparser t-dnparser.o  ../src/.libs/libksba.dylib -L/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/lib -lgpg-error
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
libtool: link: cc -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -o .libs/t-cms-parser t-cms-parser.o  ../src/.libs/libksba.dylib -L/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/lib -lgpg-error
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
/bin/sh ../libtool --tag=CC   --mode=link cc -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign   -o t-ocsp t-ocsp.o sha1.o ../src/libksba.la -L/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/lib -lgpg-error 
/bin/sh ../libtool --tag=CC   --mode=link cc -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign   -o t-oid t-oid.o ../src/libksba.la -L/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/lib -lgpg-error 
libtool: link: cc -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -o .libs/t-ocsp t-ocsp.o sha1.o  ../src/.libs/libksba.dylib -L/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/lib -lgpg-error
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
libtool: link: cc -I/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/include -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign -o .libs/t-oid t-oid.o  ../src/.libs/libksba.dylib -L/Users/meleeman/.homebrew/Cellar/libgpg-error/1.11/lib -lgpg-error
brew: superenv removed: -g -O2 -Wall -Wcast-align -Wshadow -Wstrict-prototypes -Wpointer-arith -Wno-pointer-sign
make[3]: Nothing to be done for `install-exec-am'.
make[3]: Nothing to be done for `install-data-am'.
Making install in doc
make[2]: Nothing to be done for `install-exec-am'.
 .././install-sh -c -d '/Users/meleeman/.homebrew/Cellar/libksba/1.3.0/share/info'
 /usr/bin/install -c -m 644 ./ksba.info '/Users/meleeman/.homebrew/Cellar/libksba/1.3.0/share/info'
 install-info --info-dir='/Users/meleeman/.homebrew/Cellar/libksba/1.3.0/share/info' '/Users/meleeman/.homebrew/Cellar/libksba/1.3.0/share/info/ksba.info'
make[2]: Nothing to be done for `install-exec-am'.
make[2]: Nothing to be done for `install-data-am'.
