/usr/bin/make  install-recursive
Making install in lib
rm -f alloca.h-t alloca.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  cat ./alloca.in.h; \
	} > alloca.h-t && \
	mv -f alloca.h-t alloca.h
rm -f c++defs.h-t c++defs.h && \
	sed -n -e '/_GL_CXXDEFS/,$p' \
	  < ../build-aux/snippet/c++defs.h \
	  > c++defs.h-t && \
	mv c++defs.h-t c++defs.h
rm -f warn-on-use.h-t warn-on-use.h && \
	sed -n -e '/^.ifndef/,$p' \
	  < ../build-aux/snippet/warn-on-use.h \
	  > warn-on-use.h-t && \
	mv warn-on-use.h-t warn-on-use.h
rm -f arg-nonnull.h-t arg-nonnull.h && \
	sed -n -e '/GL_ARG_NONNULL/,$p' \
	  < ../build-aux/snippet/arg-nonnull.h \
	  > arg-nonnull.h-t && \
	mv arg-nonnull.h-t arg-nonnull.h
rm -f configmake.h-t && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  echo '#define PREFIX "/Users/meleeman/.homebrew/Cellar/wget/1.14"'; \
	  echo '#define EXEC_PREFIX "/Users/meleeman/.homebrew/Cellar/wget/1.14"'; \
	  echo '#define BINDIR "/Users/meleeman/.homebrew/Cellar/wget/1.14/bin"'; \
	  echo '#define SBINDIR "/Users/meleeman/.homebrew/Cellar/wget/1.14/sbin"'; \
	  echo '#define LIBEXECDIR "/Users/meleeman/.homebrew/Cellar/wget/1.14/libexec"'; \
	  echo '#define DATAROOTDIR "/Users/meleeman/.homebrew/Cellar/wget/1.14/share"'; \
	  echo '#define DATADIR "/Users/meleeman/.homebrew/Cellar/wget/1.14/share"'; \
	  echo '#define SYSCONFDIR "/Users/meleeman/.rvm/etc"'; \
	  echo '#define SHAREDSTATEDIR "/Users/meleeman/.homebrew/Cellar/wget/1.14/com"'; \
	  echo '#define LOCALSTATEDIR "/Users/meleeman/.homebrew/Cellar/wget/1.14/var"'; \
	  echo '#define INCLUDEDIR "/Users/meleeman/.homebrew/Cellar/wget/1.14/include"'; \
	  echo '#define OLDINCLUDEDIR "/usr/include"'; \
	  echo '#define DOCDIR "/Users/meleeman/.homebrew/Cellar/wget/1.14/share/doc/wget"'; \
	  echo '#define INFODIR "/Users/meleeman/.homebrew/Cellar/wget/1.14/share/info"'; \
	  echo '#define HTMLDIR "/Users/meleeman/.homebrew/Cellar/wget/1.14/share/doc/wget"'; \
	  echo '#define DVIDIR "/Users/meleeman/.homebrew/Cellar/wget/1.14/share/doc/wget"'; \
	  echo '#define PDFDIR "/Users/meleeman/.homebrew/Cellar/wget/1.14/share/doc/wget"'; \
	  echo '#define PSDIR "/Users/meleeman/.homebrew/Cellar/wget/1.14/share/doc/wget"'; \
	  echo '#define LIBDIR "/Users/meleeman/.homebrew/Cellar/wget/1.14/lib"'; \
	  echo '#define LISPDIR "/Users/meleeman/.homebrew/Cellar/wget/1.14/share/emacs/site-lisp"'; \
	  echo '#define LOCALEDIR "/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale"'; \
	  echo '#define MANDIR "/Users/meleeman/.homebrew/Cellar/wget/1.14/share/man"'; \
	  echo '#define MANEXT ""'; \
	  echo '#define PKGDATADIR "/Users/meleeman/.homebrew/Cellar/wget/1.14/share/wget"'; \
	  echo '#define PKGINCLUDEDIR "/Users/meleeman/.homebrew/Cellar/wget/1.14/include/wget"'; \
	  echo '#define PKGLIBDIR "/Users/meleeman/.homebrew/Cellar/wget/1.14/lib/wget"'; \
	  echo '#define PKGLIBEXECDIR "/Users/meleeman/.homebrew/Cellar/wget/1.14/libexec/wget"'; \
	} | sed '/""/d' > configmake.h-t && \
	mv -f configmake.h-t configmake.h
rm -f langinfo.h-t langinfo.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''HAVE_LANGINFO_H''@|1|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_LANGINFO_H''@|<langinfo.h>|g' \
	      -e 's/@''GNULIB_NL_LANGINFO''@/1/g' \
	      -e 's|@''HAVE_LANGINFO_CODESET''@|1|g' \
	      -e 's|@''HAVE_LANGINFO_T_FMT_AMPM''@|1|g' \
	      -e 's|@''HAVE_LANGINFO_ERA''@|1|g' \
	      -e 's|@''HAVE_LANGINFO_YESEXPR''@|1|g' \
	      -e 's|@''HAVE_NL_LANGINFO''@|1|g' \
	      -e 's|@''REPLACE_NL_LANGINFO''@|0|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
	      < ./langinfo.in.h; \
	} > langinfo.h-t && \
	mv langinfo.h-t langinfo.h
rm -f locale.h-t locale.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_LOCALE_H''@|<locale.h>|g' \
	      -e 's/@''GNULIB_LOCALECONV''@/1/g' \
	      -e 's/@''GNULIB_SETLOCALE''@/0/g' \
	      -e 's/@''GNULIB_DUPLOCALE''@/0/g' \
	      -e 's|@''HAVE_DUPLOCALE''@|1|g' \
	      -e 's|@''HAVE_XLOCALE_H''@|1|g' \
	      -e 's|@''REPLACE_LOCALECONV''@|0|g' \
	      -e 's|@''REPLACE_SETLOCALE''@|0|g' \
	      -e 's|@''REPLACE_DUPLOCALE''@|0|g' \
	      -e 's|@''REPLACE_STRUCT_LCONV''@|0|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
	      < ./locale.in.h; \
	} > locale.h-t && \
	mv locale.h-t locale.h
rm -f netdb.h-t netdb.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_NETDB_H''@|<netdb.h>|g' \
	      -e 's|@''HAVE_NETDB_H''@|1|g' \
	      -e 's/@''GNULIB_GETADDRINFO''@/1/g' \
	      -e 's|@''HAVE_STRUCT_ADDRINFO''@|1|g' \
	      -e 's|@''HAVE_DECL_FREEADDRINFO''@|1|g' \
	      -e 's|@''HAVE_DECL_GAI_STRERROR''@|1|g' \
	      -e 's|@''HAVE_DECL_GETADDRINFO''@|1|g' \
	      -e 's|@''HAVE_DECL_GETNAMEINFO''@|1|g' \
	      -e 's|@''REPLACE_GAI_STRERROR''@|0|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
	      < ./netdb.in.h; \
	} > netdb.h-t && \
	mv netdb.h-t netdb.h
rm -f sched.h-t sched.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''HAVE_SCHED_H''@|1|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_SCHED_H''@|<sched.h>|g' \
	      -e 's|@''HAVE_STRUCT_SCHED_PARAM''@|1|g' \
	      < ./sched.in.h; \
	} > sched.h-t && \
	mv sched.h-t sched.h
rm -f signal.h-t signal.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_SIGNAL_H''@|<signal.h>|g' \
	      -e 's|@''GNULIB_PTHREAD_SIGMASK''@|0|g' \
	      -e 's|@''GNULIB_RAISE''@|1|g' \
	      -e 's/@''GNULIB_SIGNAL_H_SIGPIPE''@/1/g' \
	      -e 's/@''GNULIB_SIGPROCMASK''@/1/g' \
	      -e 's/@''GNULIB_SIGACTION''@/1/g' \
	      -e 's|@''HAVE_POSIX_SIGNALBLOCKING''@|1|g' \
	      -e 's|@''HAVE_PTHREAD_SIGMASK''@|1|g' \
	      -e 's|@''HAVE_RAISE''@|1|g' \
	      -e 's|@''HAVE_SIGSET_T''@|1|g' \
	      -e 's|@''HAVE_SIGINFO_T''@|1|g' \
	      -e 's|@''HAVE_SIGACTION''@|1|g' \
	      -e 's|@''HAVE_STRUCT_SIGACTION_SA_SIGACTION''@|1|g' \
	      -e 's|@''HAVE_TYPE_VOLATILE_SIG_ATOMIC_T''@|1|g' \
	      -e 's|@''HAVE_SIGHANDLER_T''@|0|g' \
	      -e 's|@''REPLACE_PTHREAD_SIGMASK''@|0|g' \
	      -e 's|@''REPLACE_RAISE''@|0|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
	      < ./signal.in.h; \
	} > signal.h-t && \
	mv signal.h-t signal.h
rm -f spawn.h-t spawn.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''HAVE_SPAWN_H''@|1|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_SPAWN_H''@|<spawn.h>|g' \
	      -e 's/@''GNULIB_POSIX_SPAWN''@/0/g' \
	      -e 's/@''GNULIB_POSIX_SPAWNP''@/1/g' \
	      -e 's/@''GNULIB_POSIX_SPAWN_FILE_ACTIONS_INIT''@/1/g' \
	      -e 's/@''GNULIB_POSIX_SPAWN_FILE_ACTIONS_ADDCLOSE''@/1/g' \
	      -e 's/@''GNULIB_POSIX_SPAWN_FILE_ACTIONS_ADDDUP2''@/1/g' \
	      -e 's/@''GNULIB_POSIX_SPAWN_FILE_ACTIONS_ADDOPEN''@/1/g' \
	      -e 's/@''GNULIB_POSIX_SPAWN_FILE_ACTIONS_DESTROY''@/1/g' \
	      -e 's/@''GNULIB_POSIX_SPAWNATTR_INIT''@/1/g' \
	      -e 's/@''GNULIB_POSIX_SPAWNATTR_GETFLAGS''@/0/g' \
	      -e 's/@''GNULIB_POSIX_SPAWNATTR_SETFLAGS''@/1/g' \
	      -e 's/@''GNULIB_POSIX_SPAWNATTR_GETPGROUP''@/0/g' \
	      -e 's/@''GNULIB_POSIX_SPAWNATTR_SETPGROUP''@/0/g' \
	      -e 's/@''GNULIB_POSIX_SPAWNATTR_GETSCHEDPARAM''@/0/g' \
	      -e 's/@''GNULIB_POSIX_SPAWNATTR_SETSCHEDPARAM''@/0/g' \
	      -e 's/@''GNULIB_POSIX_SPAWNATTR_GETSCHEDPOLICY''@/0/g' \
	      -e 's/@''GNULIB_POSIX_SPAWNATTR_SETSCHEDPOLICY''@/0/g' \
	      -e 's/@''GNULIB_POSIX_SPAWNATTR_GETSIGDEFAULT''@/0/g' \
	      -e 's/@''GNULIB_POSIX_SPAWNATTR_SETSIGDEFAULT''@/0/g' \
	      -e 's/@''GNULIB_POSIX_SPAWNATTR_GETSIGMASK''@/0/g' \
	      -e 's/@''GNULIB_POSIX_SPAWNATTR_SETSIGMASK''@/1/g' \
	      -e 's/@''GNULIB_POSIX_SPAWNATTR_DESTROY''@/1/g' \
	      -e 's|@''HAVE_POSIX_SPAWN''@|1|g' \
	      -e 's|@''HAVE_POSIX_SPAWNATTR_T''@|1|g' \
	      -e 's|@''HAVE_POSIX_SPAWN_FILE_ACTIONS_T''@|1|g' \
	      -e 's|@''REPLACE_POSIX_SPAWN''@|0|g' \
	      -e 's|@''REPLACE_POSIX_SPAWN_FILE_ACTIONS_ADDCLOSE''@|0|g' \
	      -e 's|@''REPLACE_POSIX_SPAWN_FILE_ACTIONS_ADDDUP2''@|0|g' \
	      -e 's|@''REPLACE_POSIX_SPAWN_FILE_ACTIONS_ADDOPEN''@|0|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
	      < ./spawn.in.h; \
	} > spawn.h-t && \
	mv spawn.h-t spawn.h
rm -f stdalign.h-t stdalign.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  cat ./stdalign.in.h; \
	} > stdalign.h-t && \
	mv stdalign.h-t stdalign.h
rm -f stdint.h-t stdint.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's/@''HAVE_STDINT_H''@/1/g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_STDINT_H''@|<stdint.h>|g' \
	      -e 's/@''HAVE_SYS_TYPES_H''@/1/g' \
	      -e 's/@''HAVE_INTTYPES_H''@/1/g' \
	      -e 's/@''HAVE_SYS_INTTYPES_H''@/0/g' \
	      -e 's/@''HAVE_SYS_BITYPES_H''@/0/g' \
	      -e 's/@''HAVE_WCHAR_H''@/1/g' \
	      -e 's/@''HAVE_LONG_LONG_INT''@/1/g' \
	      -e 's/@''HAVE_UNSIGNED_LONG_LONG_INT''@/1/g' \
	      -e 's/@''APPLE_UNIVERSAL_BUILD''@/0/g' \
	      -e 's/@''BITSIZEOF_PTRDIFF_T''@/64/g' \
	      -e 's/@''PTRDIFF_T_SUFFIX''@/l/g' \
	      -e 's/@''BITSIZEOF_SIG_ATOMIC_T''@/32/g' \
	      -e 's/@''HAVE_SIGNED_SIG_ATOMIC_T''@/1/g' \
	      -e 's/@''SIG_ATOMIC_T_SUFFIX''@//g' \
	      -e 's/@''BITSIZEOF_SIZE_T''@/64/g' \
	      -e 's/@''SIZE_T_SUFFIX''@/ul/g' \
	      -e 's/@''BITSIZEOF_WCHAR_T''@/32/g' \
	      -e 's/@''HAVE_SIGNED_WCHAR_T''@/1/g' \
	      -e 's/@''WCHAR_T_SUFFIX''@//g' \
	      -e 's/@''BITSIZEOF_WINT_T''@/32/g' \
	      -e 's/@''HAVE_SIGNED_WINT_T''@/1/g' \
	      -e 's/@''WINT_T_SUFFIX''@//g' \
	      < ./stdint.in.h; \
	} > stdint.h-t && \
	mv stdint.h-t stdint.h
rm -f stdio.h-t stdio.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_STDIO_H''@|<stdio.h>|g' \
	      -e 's/@''GNULIB_DPRINTF''@/0/g' \
	      -e 's/@''GNULIB_FCLOSE''@/0/g' \
	      -e 's/@''GNULIB_FDOPEN''@/0/g' \
	      -e 's/@''GNULIB_FFLUSH''@/0/g' \
	      -e 's/@''GNULIB_FGETC''@/1/g' \
	      -e 's/@''GNULIB_FGETS''@/1/g' \
	      -e 's/@''GNULIB_FOPEN''@/0/g' \
	      -e 's/@''GNULIB_FPRINTF''@/1/g' \
	      -e 's/@''GNULIB_FPRINTF_POSIX''@/0/g' \
	      -e 's/@''GNULIB_FPURGE''@/0/g' \
	      -e 's/@''GNULIB_FPUTC''@/1/g' \
	      -e 's/@''GNULIB_FPUTS''@/1/g' \
	      -e 's/@''GNULIB_FREAD''@/1/g' \
	      -e 's/@''GNULIB_FREOPEN''@/0/g' \
	      -e 's/@''GNULIB_FSCANF''@/1/g' \
	      -e 's/@''GNULIB_FSEEK''@/1/g' \
	      -e 's/@''GNULIB_FSEEKO''@/1/g' \
	      -e 's/@''GNULIB_FTELL''@/1/g' \
	      -e 's/@''GNULIB_FTELLO''@/1/g' \
	      -e 's/@''GNULIB_FWRITE''@/1/g' \
	      -e 's/@''GNULIB_GETC''@/1/g' \
	      -e 's/@''GNULIB_GETCHAR''@/1/g' \
	      -e 's/@''GNULIB_GETDELIM''@/1/g' \
	      -e 's/@''GNULIB_GETLINE''@/1/g' \
	      -e 's/@''GNULIB_OBSTACK_PRINTF''@/0/g' \
	      -e 's/@''GNULIB_OBSTACK_PRINTF_POSIX''@/0/g' \
	      -e 's/@''GNULIB_PCLOSE''@/0/g' \
	      -e 's/@''GNULIB_PERROR''@/0/g' \
	      -e 's/@''GNULIB_POPEN''@/0/g' \
	      -e 's/@''GNULIB_PRINTF''@/1/g' \
	      -e 's/@''GNULIB_PRINTF_POSIX''@/0/g' \
	      -e 's/@''GNULIB_PUTC''@/1/g' \
	      -e 's/@''GNULIB_PUTCHAR''@/1/g' \
	      -e 's/@''GNULIB_PUTS''@/1/g' \
	      -e 's/@''GNULIB_REMOVE''@/0/g' \
	      -e 's/@''GNULIB_RENAME''@/0/g' \
	      -e 's/@''GNULIB_RENAMEAT''@/0/g' \
	      -e 's/@''GNULIB_SCANF''@/1/g' \
	      -e 's/@''GNULIB_SNPRINTF''@/1/g' \
	      -e 's/@''GNULIB_SPRINTF_POSIX''@/0/g' \
	      -e 's/@''GNULIB_STDIO_H_NONBLOCKING''@/0/g' \
	      -e 's/@''GNULIB_STDIO_H_SIGPIPE''@/1/g' \
	      -e 's/@''GNULIB_TMPFILE''@/0/g' \
	      -e 's/@''GNULIB_VASPRINTF''@/1/g' \
	      -e 's/@''GNULIB_VDPRINTF''@/0/g' \
	      -e 's/@''GNULIB_VFPRINTF''@/1/g' \
	      -e 's/@''GNULIB_VFPRINTF_POSIX''@/0/g' \
	      -e 's/@''GNULIB_VFSCANF''@/0/g' \
	      -e 's/@''GNULIB_VSCANF''@/0/g' \
	      -e 's/@''GNULIB_VPRINTF''@/1/g' \
	      -e 's/@''GNULIB_VPRINTF_POSIX''@/0/g' \
	      -e 's/@''GNULIB_VSNPRINTF''@/1/g' \
	      -e 's/@''GNULIB_VSPRINTF_POSIX''@/0/g' \
	      < ./stdio.in.h | \
	  sed -e 's|@''HAVE_DECL_FPURGE''@|1|g' \
	      -e 's|@''HAVE_DECL_FSEEKO''@|1|g' \
	      -e 's|@''HAVE_DECL_FTELLO''@|1|g' \
	      -e 's|@''HAVE_DECL_GETDELIM''@|1|g' \
	      -e 's|@''HAVE_DECL_GETLINE''@|1|g' \
	      -e 's|@''HAVE_DECL_OBSTACK_PRINTF''@|1|g' \
	      -e 's|@''HAVE_DECL_SNPRINTF''@|1|g' \
	      -e 's|@''HAVE_DECL_VSNPRINTF''@|1|g' \
	      -e 's|@''HAVE_DPRINTF''@|1|g' \
	      -e 's|@''HAVE_FSEEKO''@|1|g' \
	      -e 's|@''HAVE_FTELLO''@|1|g' \
	      -e 's|@''HAVE_PCLOSE''@|1|g' \
	      -e 's|@''HAVE_POPEN''@|1|g' \
	      -e 's|@''HAVE_RENAMEAT''@|1|g' \
	      -e 's|@''HAVE_VASPRINTF''@|1|g' \
	      -e 's|@''HAVE_VDPRINTF''@|1|g' \
	      -e 's|@''REPLACE_DPRINTF''@|0|g' \
	      -e 's|@''REPLACE_FCLOSE''@|0|g' \
	      -e 's|@''REPLACE_FDOPEN''@|0|g' \
	      -e 's|@''REPLACE_FFLUSH''@|0|g' \
	      -e 's|@''REPLACE_FOPEN''@|0|g' \
	      -e 's|@''REPLACE_FPRINTF''@|0|g' \
	      -e 's|@''REPLACE_FPURGE''@|0|g' \
	      -e 's|@''REPLACE_FREOPEN''@|0|g' \
	      -e 's|@''REPLACE_FSEEK''@|0|g' \
	      -e 's|@''REPLACE_FSEEKO''@|0|g' \
	      -e 's|@''REPLACE_FTELL''@|0|g' \
	      -e 's|@''REPLACE_FTELLO''@|0|g' \
	      -e 's|@''REPLACE_GETDELIM''@|0|g' \
	      -e 's|@''REPLACE_GETLINE''@|0|g' \
	      -e 's|@''REPLACE_OBSTACK_PRINTF''@|0|g' \
	      -e 's|@''REPLACE_PERROR''@|0|g' \
	      -e 's|@''REPLACE_POPEN''@|0|g' \
	      -e 's|@''REPLACE_PRINTF''@|0|g' \
	      -e 's|@''REPLACE_REMOVE''@|0|g' \
	      -e 's|@''REPLACE_RENAME''@|0|g' \
	      -e 's|@''REPLACE_RENAMEAT''@|0|g' \
	      -e 's|@''REPLACE_SNPRINTF''@|0|g' \
	      -e 's|@''REPLACE_SPRINTF''@|0|g' \
	      -e 's|@''REPLACE_STDIO_READ_FUNCS''@|0|g' \
	      -e 's|@''REPLACE_STDIO_WRITE_FUNCS''@|0|g' \
	      -e 's|@''REPLACE_TMPFILE''@|0|g' \
	      -e 's|@''REPLACE_VASPRINTF''@|0|g' \
	      -e 's|@''REPLACE_VDPRINTF''@|0|g' \
	      -e 's|@''REPLACE_VFPRINTF''@|0|g' \
	      -e 's|@''REPLACE_VPRINTF''@|0|g' \
	      -e 's|@''REPLACE_VSNPRINTF''@|0|g' \
	      -e 's|@''REPLACE_VSPRINTF''@|0|g' \
	      -e 's|@''ASM_SYMBOL_PREFIX''@|"_"|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h'; \
	} > stdio.h-t && \
	mv stdio.h-t stdio.h
rm -f stdlib.h-t stdlib.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_STDLIB_H''@|<stdlib.h>|g' \
	      -e 's/@''GNULIB__EXIT''@/0/g' \
	      -e 's/@''GNULIB_ATOLL''@/0/g' \
	      -e 's/@''GNULIB_CALLOC_POSIX''@/0/g' \
	      -e 's/@''GNULIB_CANONICALIZE_FILE_NAME''@/0/g' \
	      -e 's/@''GNULIB_GETLOADAVG''@/0/g' \
	      -e 's/@''GNULIB_GETSUBOPT''@/0/g' \
	      -e 's/@''GNULIB_GRANTPT''@/0/g' \
	      -e 's/@''GNULIB_MALLOC_POSIX''@/1/g' \
	      -e 's/@''GNULIB_MBTOWC''@/1/g' \
	      -e 's/@''GNULIB_MKDTEMP''@/0/g' \
	      -e 's/@''GNULIB_MKOSTEMP''@/0/g' \
	      -e 's/@''GNULIB_MKOSTEMPS''@/0/g' \
	      -e 's/@''GNULIB_MKSTEMP''@/1/g' \
	      -e 's/@''GNULIB_MKSTEMPS''@/0/g' \
	      -e 's/@''GNULIB_POSIX_OPENPT''@/0/g' \
	      -e 's/@''GNULIB_PTSNAME''@/0/g' \
	      -e 's/@''GNULIB_PTSNAME_R''@/0/g' \
	      -e 's/@''GNULIB_PUTENV''@/0/g' \
	      -e 's/@''GNULIB_RANDOM''@/0/g' \
	      -e 's/@''GNULIB_RANDOM_R''@/0/g' \
	      -e 's/@''GNULIB_REALLOC_POSIX''@/1/g' \
	      -e 's/@''GNULIB_REALPATH''@/0/g' \
	      -e 's/@''GNULIB_RPMATCH''@/0/g' \
	      -e 's/@''GNULIB_SETENV''@/0/g' \
	      -e 's/@''GNULIB_STRTOD''@/0/g' \
	      -e 's/@''GNULIB_STRTOLL''@/0/g' \
	      -e 's/@''GNULIB_STRTOULL''@/0/g' \
	      -e 's/@''GNULIB_SYSTEM_POSIX''@/0/g' \
	      -e 's/@''GNULIB_UNLOCKPT''@/0/g' \
	      -e 's/@''GNULIB_UNSETENV''@/0/g' \
	      -e 's/@''GNULIB_WCTOMB''@/0/g' \
	      < ./stdlib.in.h | \
	  sed -e 's|@''HAVE__EXIT''@|1|g' \
	      -e 's|@''HAVE_ATOLL''@|1|g' \
	      -e 's|@''HAVE_CANONICALIZE_FILE_NAME''@|1|g' \
	      -e 's|@''HAVE_DECL_GETLOADAVG''@|1|g' \
	      -e 's|@''HAVE_GETSUBOPT''@|1|g' \
	      -e 's|@''HAVE_GRANTPT''@|1|g' \
	      -e 's|@''HAVE_MKDTEMP''@|1|g' \
	      -e 's|@''HAVE_MKOSTEMP''@|1|g' \
	      -e 's|@''HAVE_MKOSTEMPS''@|1|g' \
	      -e 's|@''HAVE_MKSTEMP''@|1|g' \
	      -e 's|@''HAVE_MKSTEMPS''@|1|g' \
	      -e 's|@''HAVE_POSIX_OPENPT''@|1|g' \
	      -e 's|@''HAVE_PTSNAME''@|1|g' \
	      -e 's|@''HAVE_PTSNAME_R''@|1|g' \
	      -e 's|@''HAVE_RANDOM''@|1|g' \
	      -e 's|@''HAVE_RANDOM_H''@|1|g' \
	      -e 's|@''HAVE_RANDOM_R''@|1|g' \
	      -e 's|@''HAVE_REALPATH''@|1|g' \
	      -e 's|@''HAVE_RPMATCH''@|1|g' \
	      -e 's|@''HAVE_DECL_SETENV''@|1|g' \
	      -e 's|@''HAVE_STRTOD''@|1|g' \
	      -e 's|@''HAVE_STRTOLL''@|1|g' \
	      -e 's|@''HAVE_STRTOULL''@|1|g' \
	      -e 's|@''HAVE_STRUCT_RANDOM_DATA''@|1|g' \
	      -e 's|@''HAVE_SYS_LOADAVG_H''@|0|g' \
	      -e 's|@''HAVE_UNLOCKPT''@|1|g' \
	      -e 's|@''HAVE_DECL_UNSETENV''@|1|g' \
	      -e 's|@''REPLACE_CALLOC''@|0|g' \
	      -e 's|@''REPLACE_CANONICALIZE_FILE_NAME''@|0|g' \
	      -e 's|@''REPLACE_MALLOC''@|0|g' \
	      -e 's|@''REPLACE_MBTOWC''@|0|g' \
	      -e 's|@''REPLACE_MKSTEMP''@|0|g' \
	      -e 's|@''REPLACE_PTSNAME_R''@|0|g' \
	      -e 's|@''REPLACE_PUTENV''@|0|g' \
	      -e 's|@''REPLACE_RANDOM_R''@|0|g' \
	      -e 's|@''REPLACE_REALLOC''@|0|g' \
	      -e 's|@''REPLACE_REALPATH''@|0|g' \
	      -e 's|@''REPLACE_SETENV''@|0|g' \
	      -e 's|@''REPLACE_STRTOD''@|0|g' \
	      -e 's|@''REPLACE_UNSETENV''@|0|g' \
	      -e 's|@''REPLACE_WCTOMB''@|0|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _Noreturn/r ../build-aux/snippet/_Noreturn.h' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h'; \
	} > stdlib.h-t && \
	mv stdlib.h-t stdlib.h
rm -f string.h-t string.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_STRING_H''@|<string.h>|g' \
	      -e 's/@''GNULIB_FFSL''@/0/g' \
	      -e 's/@''GNULIB_FFSLL''@/0/g' \
	      -e 's/@''GNULIB_MBSLEN''@/0/g' \
	      -e 's/@''GNULIB_MBSNLEN''@/0/g' \
	      -e 's/@''GNULIB_MBSCHR''@/0/g' \
	      -e 's/@''GNULIB_MBSRCHR''@/0/g' \
	      -e 's/@''GNULIB_MBSSTR''@/0/g' \
	      -e 's/@''GNULIB_MBSCASECMP''@/0/g' \
	      -e 's/@''GNULIB_MBSNCASECMP''@/0/g' \
	      -e 's/@''GNULIB_MBSPCASECMP''@/0/g' \
	      -e 's/@''GNULIB_MBSCASESTR''@/0/g' \
	      -e 's/@''GNULIB_MBSCSPN''@/0/g' \
	      -e 's/@''GNULIB_MBSPBRK''@/0/g' \
	      -e 's/@''GNULIB_MBSSPN''@/0/g' \
	      -e 's/@''GNULIB_MBSSEP''@/0/g' \
	      -e 's/@''GNULIB_MBSTOK_R''@/0/g' \
	      -e 's/@''GNULIB_MEMCHR''@/1/g' \
	      -e 's/@''GNULIB_MEMMEM''@/0/g' \
	      -e 's/@''GNULIB_MEMPCPY''@/0/g' \
	      -e 's/@''GNULIB_MEMRCHR''@/0/g' \
	      -e 's/@''GNULIB_RAWMEMCHR''@/1/g' \
	      -e 's/@''GNULIB_STPCPY''@/0/g' \
	      -e 's/@''GNULIB_STPNCPY''@/0/g' \
	      -e 's/@''GNULIB_STRCHRNUL''@/1/g' \
	      -e 's/@''GNULIB_STRDUP''@/0/g' \
	      -e 's/@''GNULIB_STRNCAT''@/0/g' \
	      -e 's/@''GNULIB_STRNDUP''@/0/g' \
	      -e 's/@''GNULIB_STRNLEN''@/0/g' \
	      -e 's/@''GNULIB_STRPBRK''@/0/g' \
	      -e 's/@''GNULIB_STRSEP''@/0/g' \
	      -e 's/@''GNULIB_STRSTR''@/0/g' \
	      -e 's/@''GNULIB_STRCASESTR''@/1/g' \
	      -e 's/@''GNULIB_STRTOK_R''@/1/g' \
	      -e 's/@''GNULIB_STRERROR''@/1/g' \
	      -e 's/@''GNULIB_STRERROR_R''@/1/g' \
	      -e 's/@''GNULIB_STRSIGNAL''@/0/g' \
	      -e 's/@''GNULIB_STRVERSCMP''@/0/g' \
	      < ./string.in.h | \
	  sed -e 's|@''HAVE_FFSL''@|1|g' \
	      -e 's|@''HAVE_FFSLL''@|1|g' \
	      -e 's|@''HAVE_MBSLEN''@|0|g' \
	      -e 's|@''HAVE_MEMCHR''@|1|g' \
	      -e 's|@''HAVE_DECL_MEMMEM''@|1|g' \
	      -e 's|@''HAVE_MEMPCPY''@|1|g' \
	      -e 's|@''HAVE_DECL_MEMRCHR''@|1|g' \
	      -e 's|@''HAVE_RAWMEMCHR''@|0|g' \
	      -e 's|@''HAVE_STPCPY''@|1|g' \
	      -e 's|@''HAVE_STPNCPY''@|1|g' \
	      -e 's|@''HAVE_STRCHRNUL''@|0|g' \
	      -e 's|@''HAVE_DECL_STRDUP''@|1|g' \
	      -e 's|@''HAVE_DECL_STRNDUP''@|1|g' \
	      -e 's|@''HAVE_DECL_STRNLEN''@|1|g' \
	      -e 's|@''HAVE_STRPBRK''@|1|g' \
	      -e 's|@''HAVE_STRSEP''@|1|g' \
	      -e 's|@''HAVE_STRCASESTR''@|1|g' \
	      -e 's|@''HAVE_DECL_STRTOK_R''@|1|g' \
	      -e 's|@''HAVE_DECL_STRERROR_R''@|1|g' \
	      -e 's|@''HAVE_DECL_STRSIGNAL''@|1|g' \
	      -e 's|@''HAVE_STRVERSCMP''@|1|g' \
	      -e 's|@''REPLACE_STPNCPY''@|0|g' \
	      -e 's|@''REPLACE_MEMCHR''@|0|g' \
	      -e 's|@''REPLACE_MEMMEM''@|0|g' \
	      -e 's|@''REPLACE_STRCASESTR''@|1|g' \
	      -e 's|@''REPLACE_STRCHRNUL''@|0|g' \
	      -e 's|@''REPLACE_STRDUP''@|0|g' \
	      -e 's|@''REPLACE_STRSTR''@|0|g' \
	      -e 's|@''REPLACE_STRERROR''@|1|g' \
	      -e 's|@''REPLACE_STRERROR_R''@|1|g' \
	      -e 's|@''REPLACE_STRNCAT''@|0|g' \
	      -e 's|@''REPLACE_STRNDUP''@|0|g' \
	      -e 's|@''REPLACE_STRNLEN''@|0|g' \
	      -e 's|@''REPLACE_STRSIGNAL''@|0|g' \
	      -e 's|@''REPLACE_STRTOK_R''@|0|g' \
	      -e 's|@''UNDEFINE_STRTOK_R''@|0|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h'; \
	      < ./string.in.h; \
	} > string.h-t && \
	mv string.h-t string.h
rm -f strings.h-t strings.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''HAVE_STRINGS_H''@|1|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_STRINGS_H''@|<strings.h>|g' \
	      -e 's|@''GNULIB_FFS''@|0|g' \
	      -e 's|@''HAVE_FFS''@|1|g' \
	      -e 's|@''HAVE_STRCASECMP''@|1|g' \
	      -e 's|@''HAVE_DECL_STRNCASECMP''@|1|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
	      < ./strings.in.h; \
	} > strings.h-t && \
	mv strings.h-t strings.h
../build-aux/install-sh -c -d sys
../build-aux/install-sh -c -d sys
rm -f sys/select.h-t sys/select.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_SYS_SELECT_H''@|<sys/select.h>|g' \
	      -e 's|@''HAVE_SYS_SELECT_H''@|1|g' \
	      -e 's/@''GNULIB_PSELECT''@/0/g' \
	      -e 's/@''GNULIB_SELECT''@/1/g' \
	      -e 's|@''HAVE_WINSOCK2_H''@|0|g' \
	      -e 's|@''HAVE_PSELECT''@|1|g' \
	      -e 's|@''REPLACE_PSELECT''@|0|g' \
	      -e 's|@''REPLACE_SELECT''@|0|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
	      < ./sys_select.in.h; \
	} > sys/select.h-t && \
	mv sys/select.h-t sys/select.h
rm -f sys/ioctl.h-t sys/ioctl.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''HAVE_SYS_IOCTL_H''@|1|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_SYS_IOCTL_H''@|<sys/ioctl.h>|g' \
	      -e 's/@''GNULIB_IOCTL''@/1/g' \
	      -e 's|@''SYS_IOCTL_H_HAVE_WINSOCK2_H''@|0|g' \
	      -e 's|@''SYS_IOCTL_H_HAVE_WINSOCK2_H_AND_USE_SOCKETS''@|0|g' \
	      -e 's|@''REPLACE_IOCTL''@|1|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
	      < ./sys_ioctl.in.h; \
	} > sys/ioctl.h-t && \
	mv sys/ioctl.h-t sys/ioctl.h
../build-aux/install-sh -c -d sys
../build-aux/install-sh -c -d sys
rm -f sys/stat.h-t sys/stat.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_SYS_STAT_H''@|<sys/stat.h>|g' \
	      -e 's|@''WINDOWS_64_BIT_ST_SIZE''@|0|g' \
	      -e 's/@''GNULIB_FCHMODAT''@/0/g' \
	      -e 's/@''GNULIB_FSTAT''@/1/g' \
	      -e 's/@''GNULIB_FSTATAT''@/0/g' \
	      -e 's/@''GNULIB_FUTIMENS''@/1/g' \
	      -e 's/@''GNULIB_LCHMOD''@/0/g' \
	      -e 's/@''GNULIB_LSTAT''@/1/g' \
	      -e 's/@''GNULIB_MKDIRAT''@/0/g' \
	      -e 's/@''GNULIB_MKFIFO''@/0/g' \
	      -e 's/@''GNULIB_MKFIFOAT''@/0/g' \
	      -e 's/@''GNULIB_MKNOD''@/0/g' \
	      -e 's/@''GNULIB_MKNODAT''@/0/g' \
	      -e 's/@''GNULIB_STAT''@/1/g' \
	      -e 's/@''GNULIB_UTIMENSAT''@/0/g' \
	      -e 's|@''HAVE_FCHMODAT''@|1|g' \
	      -e 's|@''HAVE_FSTATAT''@|1|g' \
	      -e 's|@''HAVE_FUTIMENS''@|0|g' \
	      -e 's|@''HAVE_LCHMOD''@|1|g' \
	      -e 's|@''HAVE_LSTAT''@|1|g' \
	      -e 's|@''HAVE_MKDIRAT''@|1|g' \
	      -e 's|@''HAVE_MKFIFO''@|1|g' \
	      -e 's|@''HAVE_MKFIFOAT''@|1|g' \
	      -e 's|@''HAVE_MKNOD''@|1|g' \
	      -e 's|@''HAVE_MKNODAT''@|1|g' \
	      -e 's|@''HAVE_UTIMENSAT''@|1|g' \
	      -e 's|@''REPLACE_FSTAT''@|0|g' \
	      -e 's|@''REPLACE_FSTATAT''@|0|g' \
	      -e 's|@''REPLACE_FUTIMENS''@|0|g' \
	      -e 's|@''REPLACE_LSTAT''@|1|g' \
	      -e 's|@''REPLACE_MKDIR''@|0|g' \
	      -e 's|@''REPLACE_MKFIFO''@|0|g' \
	      -e 's|@''REPLACE_MKNOD''@|0|g' \
	      -e 's|@''REPLACE_STAT''@|1|g' \
	      -e 's|@''REPLACE_UTIMENSAT''@|0|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
	      < ./sys_stat.in.h; \
	} > sys/stat.h-t && \
	mv sys/stat.h-t sys/stat.h
rm -f sys/socket.h-t sys/socket.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_SYS_SOCKET_H''@|<sys/socket.h>|g' \
	      -e 's|@''HAVE_SYS_SOCKET_H''@|1|g' \
	      -e 's/@''GNULIB_CLOSE''@/1/g' \
	      -e 's/@''GNULIB_SOCKET''@/1/g' \
	      -e 's/@''GNULIB_CONNECT''@/1/g' \
	      -e 's/@''GNULIB_ACCEPT''@/1/g' \
	      -e 's/@''GNULIB_BIND''@/1/g' \
	      -e 's/@''GNULIB_GETPEERNAME''@/1/g' \
	      -e 's/@''GNULIB_GETSOCKNAME''@/1/g' \
	      -e 's/@''GNULIB_GETSOCKOPT''@/0/g' \
	      -e 's/@''GNULIB_LISTEN''@/1/g' \
	      -e 's/@''GNULIB_RECV''@/1/g' \
	      -e 's/@''GNULIB_SEND''@/1/g' \
	      -e 's/@''GNULIB_RECVFROM''@/0/g' \
	      -e 's/@''GNULIB_SENDTO''@/0/g' \
	      -e 's/@''GNULIB_SETSOCKOPT''@/1/g' \
	      -e 's/@''GNULIB_SHUTDOWN''@/0/g' \
	      -e 's/@''GNULIB_ACCEPT4''@/0/g' \
	      -e 's|@''HAVE_WINSOCK2_H''@|0|g' \
	      -e 's|@''HAVE_WS2TCPIP_H''@|0|g' \
	      -e 's|@''HAVE_STRUCT_SOCKADDR_STORAGE''@|1|g' \
	      -e 's|@''HAVE_STRUCT_SOCKADDR_STORAGE_SS_FAMILY''@|1|g' \
	      -e 's|@''HAVE_SA_FAMILY_T''@|1|g' \
	      -e 's|@''HAVE_ACCEPT4''@|1|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
	      < ./sys_socket.in.h; \
	} > sys/socket.h-t && \
	mv -f sys/socket.h-t sys/socket.h
../build-aux/install-sh -c -d sys
rm -f sys/time.h-t sys/time.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's/@''HAVE_SYS_TIME_H''@/1/g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_SYS_TIME_H''@|<sys/time.h>|g' \
	      -e 's/@''GNULIB_GETTIMEOFDAY''@/1/g' \
	      -e 's|@''HAVE_WINSOCK2_H''@|0|g' \
	      -e 's/@''HAVE_GETTIMEOFDAY''@/1/g' \
	      -e 's/@''HAVE_STRUCT_TIMEVAL''@/1/g' \
	      -e 's/@''REPLACE_GETTIMEOFDAY''@/0/g' \
	      -e 's/@''REPLACE_STRUCT_TIMEVAL''@/0/g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
	      < ./sys_time.in.h; \
	} > sys/time.h-t && \
	mv sys/time.h-t sys/time.h
../build-aux/install-sh -c -d sys
rm -f sys/types.h-t sys/types.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_SYS_TYPES_H''@|<sys/types.h>|g' \
	      -e 's|@''WINDOWS_64_BIT_OFF_T''@|0|g' \
	      < ./sys_types.in.h; \
	} > sys/types.h-t && \
	mv sys/types.h-t sys/types.h
../build-aux/install-sh -c -d sys
rm -f sys/uio.h-t sys/uio.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_SYS_UIO_H''@|<sys/uio.h>|g' \
	      -e 's|@''HAVE_SYS_UIO_H''@|1|g' \
	      < ./sys_uio.in.h; \
	} > sys/uio.h-t && \
	mv -f sys/uio.h-t sys/uio.h
../build-aux/install-sh -c -d sys
rm -f sys/wait.h-t sys/wait.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_SYS_WAIT_H''@|<sys/wait.h>|g' \
	      -e 's/@''GNULIB_WAITPID''@/1/g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
	      < ./sys_wait.in.h; \
	} > sys/wait.h-t && \
	mv sys/wait.h-t sys/wait.h
rm -f time.h-t time.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_TIME_H''@|<time.h>|g' \
	      -e 's/@''GNULIB_MKTIME''@/0/g' \
	      -e 's/@''GNULIB_NANOSLEEP''@/0/g' \
	      -e 's/@''GNULIB_STRPTIME''@/0/g' \
	      -e 's/@''GNULIB_TIMEGM''@/0/g' \
	      -e 's/@''GNULIB_TIME_R''@/0/g' \
	      -e 's|@''HAVE_DECL_LOCALTIME_R''@|1|g' \
	      -e 's|@''HAVE_NANOSLEEP''@|1|g' \
	      -e 's|@''HAVE_STRPTIME''@|1|g' \
	      -e 's|@''HAVE_TIMEGM''@|1|g' \
	      -e 's|@''REPLACE_LOCALTIME_R''@|GNULIB_PORTCHECK|g' \
	      -e 's|@''REPLACE_MKTIME''@|GNULIB_PORTCHECK|g' \
	      -e 's|@''REPLACE_NANOSLEEP''@|GNULIB_PORTCHECK|g' \
	      -e 's|@''REPLACE_TIMEGM''@|GNULIB_PORTCHECK|g' \
	      -e 's|@''PTHREAD_H_DEFINES_STRUCT_TIMESPEC''@|0|g' \
	      -e 's|@''SYS_TIME_H_DEFINES_STRUCT_TIMESPEC''@|0|g' \
	      -e 's|@''TIME_H_DEFINES_STRUCT_TIMESPEC''@|1|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
	      < ./time.in.h; \
	} > time.h-t && \
	mv time.h-t time.h
rm -f unistd.h-t unistd.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''HAVE_UNISTD_H''@|1|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_UNISTD_H''@|<unistd.h>|g' \
	      -e 's|@''WINDOWS_64_BIT_OFF_T''@|0|g' \
	      -e 's/@''GNULIB_CHDIR''@/0/g' \
	      -e 's/@''GNULIB_CHOWN''@/0/g' \
	      -e 's/@''GNULIB_CLOSE''@/1/g' \
	      -e 's/@''GNULIB_DUP''@/0/g' \
	      -e 's/@''GNULIB_DUP2''@/1/g' \
	      -e 's/@''GNULIB_DUP3''@/0/g' \
	      -e 's/@''GNULIB_ENVIRON''@/1/g' \
	      -e 's/@''GNULIB_EUIDACCESS''@/0/g' \
	      -e 's/@''GNULIB_FACCESSAT''@/0/g' \
	      -e 's/@''GNULIB_FCHDIR''@/0/g' \
	      -e 's/@''GNULIB_FCHOWNAT''@/0/g' \
	      -e 's/@''GNULIB_FDATASYNC''@/0/g' \
	      -e 's/@''GNULIB_FSYNC''@/0/g' \
	      -e 's/@''GNULIB_FTRUNCATE''@/0/g' \
	      -e 's/@''GNULIB_GETCWD''@/0/g' \
	      -e 's/@''GNULIB_GETDOMAINNAME''@/0/g' \
	      -e 's/@''GNULIB_GETDTABLESIZE''@/1/g' \
	      -e 's/@''GNULIB_GETGROUPS''@/0/g' \
	      -e 's/@''GNULIB_GETHOSTNAME''@/0/g' \
	      -e 's/@''GNULIB_GETLOGIN''@/0/g' \
	      -e 's/@''GNULIB_GETLOGIN_R''@/0/g' \
	      -e 's/@''GNULIB_GETPAGESIZE''@/0/g' \
	      -e 's/@''GNULIB_GETUSERSHELL''@/0/g' \
	      -e 's/@''GNULIB_GROUP_MEMBER''@/0/g' \
	      -e 's/@''GNULIB_ISATTY''@/0/g' \
	      -e 's/@''GNULIB_LCHOWN''@/0/g' \
	      -e 's/@''GNULIB_LINK''@/0/g' \
	      -e 's/@''GNULIB_LINKAT''@/0/g' \
	      -e 's/@''GNULIB_LSEEK''@/1/g' \
	      -e 's/@''GNULIB_PIPE''@/0/g' \
	      -e 's/@''GNULIB_PIPE2''@/1/g' \
	      -e 's/@''GNULIB_PREAD''@/0/g' \
	      -e 's/@''GNULIB_PWRITE''@/0/g' \
	      -e 's/@''GNULIB_READ''@/0/g' \
	      -e 's/@''GNULIB_READLINK''@/0/g' \
	      -e 's/@''GNULIB_READLINKAT''@/0/g' \
	      -e 's/@''GNULIB_RMDIR''@/0/g' \
	      -e 's/@''GNULIB_SETHOSTNAME''@/0/g' \
	      -e 's/@''GNULIB_SLEEP''@/0/g' \
	      -e 's/@''GNULIB_SYMLINK''@/0/g' \
	      -e 's/@''GNULIB_SYMLINKAT''@/0/g' \
	      -e 's/@''GNULIB_TTYNAME_R''@/0/g' \
	      -e 's/@''GNULIB_UNISTD_H_GETOPT''@/01/g' \
	      -e 's/@''GNULIB_UNISTD_H_NONBLOCKING''@/0/g' \
	      -e 's/@''GNULIB_UNISTD_H_SIGPIPE''@/1/g' \
	      -e 's/@''GNULIB_UNLINK''@/0/g' \
	      -e 's/@''GNULIB_UNLINKAT''@/0/g' \
	      -e 's/@''GNULIB_USLEEP''@/0/g' \
	      -e 's/@''GNULIB_WRITE''@/1/g' \
	      < ./unistd.in.h | \
	  sed -e 's|@''HAVE_CHOWN''@|1|g' \
	      -e 's|@''HAVE_DUP2''@|1|g' \
	      -e 's|@''HAVE_DUP3''@|1|g' \
	      -e 's|@''HAVE_EUIDACCESS''@|1|g' \
	      -e 's|@''HAVE_FACCESSAT''@|1|g' \
	      -e 's|@''HAVE_FCHDIR''@|1|g' \
	      -e 's|@''HAVE_FCHOWNAT''@|1|g' \
	      -e 's|@''HAVE_FDATASYNC''@|1|g' \
	      -e 's|@''HAVE_FSYNC''@|1|g' \
	      -e 's|@''HAVE_FTRUNCATE''@|1|g' \
	      -e 's|@''HAVE_GETDTABLESIZE''@|1|g' \
	      -e 's|@''HAVE_GETGROUPS''@|1|g' \
	      -e 's|@''HAVE_GETHOSTNAME''@|1|g' \
	      -e 's|@''HAVE_GETLOGIN''@|1|g' \
	      -e 's|@''HAVE_GETPAGESIZE''@|1|g' \
	      -e 's|@''HAVE_GROUP_MEMBER''@|1|g' \
	      -e 's|@''HAVE_LCHOWN''@|1|g' \
	      -e 's|@''HAVE_LINK''@|1|g' \
	      -e 's|@''HAVE_LINKAT''@|1|g' \
	      -e 's|@''HAVE_PIPE''@|1|g' \
	      -e 's|@''HAVE_PIPE2''@|0|g' \
	      -e 's|@''HAVE_PREAD''@|1|g' \
	      -e 's|@''HAVE_PWRITE''@|1|g' \
	      -e 's|@''HAVE_READLINK''@|1|g' \
	      -e 's|@''HAVE_READLINKAT''@|1|g' \
	      -e 's|@''HAVE_SETHOSTNAME''@|1|g' \
	      -e 's|@''HAVE_SLEEP''@|1|g' \
	      -e 's|@''HAVE_SYMLINK''@|1|g' \
	      -e 's|@''HAVE_SYMLINKAT''@|1|g' \
	      -e 's|@''HAVE_UNLINKAT''@|1|g' \
	      -e 's|@''HAVE_USLEEP''@|1|g' \
	      -e 's|@''HAVE_DECL_ENVIRON''@|0|g' \
	      -e 's|@''HAVE_DECL_FCHDIR''@|1|g' \
	      -e 's|@''HAVE_DECL_FDATASYNC''@|1|g' \
	      -e 's|@''HAVE_DECL_GETDOMAINNAME''@|1|g' \
	      -e 's|@''HAVE_DECL_GETLOGIN_R''@|1|g' \
	      -e 's|@''HAVE_DECL_GETPAGESIZE''@|1|g' \
	      -e 's|@''HAVE_DECL_GETUSERSHELL''@|1|g' \
	      -e 's|@''HAVE_DECL_SETHOSTNAME''@|1|g' \
	      -e 's|@''HAVE_DECL_TTYNAME_R''@|1|g' \
	      -e 's|@''HAVE_OS_H''@|0|g' \
	      -e 's|@''HAVE_SYS_PARAM_H''@|0|g' \
	  | \
	  sed -e 's|@''REPLACE_CHOWN''@|0|g' \
	      -e 's|@''REPLACE_CLOSE''@|0|g' \
	      -e 's|@''REPLACE_DUP''@|0|g' \
	      -e 's|@''REPLACE_DUP2''@|0|g' \
	      -e 's|@''REPLACE_FCHOWNAT''@|0|g' \
	      -e 's|@''REPLACE_FTRUNCATE''@|0|g' \
	      -e 's|@''REPLACE_GETCWD''@|0|g' \
	      -e 's|@''REPLACE_GETDOMAINNAME''@|0|g' \
	      -e 's|@''REPLACE_GETLOGIN_R''@|0|g' \
	      -e 's|@''REPLACE_GETGROUPS''@|0|g' \
	      -e 's|@''REPLACE_GETPAGESIZE''@|0|g' \
	      -e 's|@''REPLACE_ISATTY''@|0|g' \
	      -e 's|@''REPLACE_LCHOWN''@|0|g' \
	      -e 's|@''REPLACE_LINK''@|0|g' \
	      -e 's|@''REPLACE_LINKAT''@|0|g' \
	      -e 's|@''REPLACE_LSEEK''@|0|g' \
	      -e 's|@''REPLACE_PREAD''@|0|g' \
	      -e 's|@''REPLACE_PWRITE''@|0|g' \
	      -e 's|@''REPLACE_READ''@|0|g' \
	      -e 's|@''REPLACE_READLINK''@|0|g' \
	      -e 's|@''REPLACE_RMDIR''@|0|g' \
	      -e 's|@''REPLACE_SLEEP''@|0|g' \
	      -e 's|@''REPLACE_SYMLINK''@|0|g' \
	      -e 's|@''REPLACE_TTYNAME_R''@|0|g' \
	      -e 's|@''REPLACE_UNLINK''@|0|g' \
	      -e 's|@''REPLACE_UNLINKAT''@|0|g' \
	      -e 's|@''REPLACE_USLEEP''@|0|g' \
	      -e 's|@''REPLACE_WRITE''@|0|g' \
	      -e 's|@''UNISTD_H_HAVE_WINSOCK2_H''@|0|g' \
	      -e 's|@''UNISTD_H_HAVE_WINSOCK2_H_AND_USE_SOCKETS''@|0|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h'; \
	} > unistd.h-t && \
	mv unistd.h-t unistd.h
rm -f wchar.h-t wchar.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''HAVE_FEATURES_H''@|0|g' \
	      -e 's|@''NEXT_WCHAR_H''@|<wchar.h>|g' \
	      -e 's|@''HAVE_WCHAR_H''@|1|g' \
	      -e 's/@''GNULIB_BTOWC''@/1/g' \
	      -e 's/@''GNULIB_WCTOB''@/0/g' \
	      -e 's/@''GNULIB_MBSINIT''@/1/g' \
	      -e 's/@''GNULIB_MBRTOWC''@/1/g' \
	      -e 's/@''GNULIB_MBRLEN''@/0/g' \
	      -e 's/@''GNULIB_MBSRTOWCS''@/0/g' \
	      -e 's/@''GNULIB_MBSNRTOWCS''@/0/g' \
	      -e 's/@''GNULIB_WCRTOMB''@/1/g' \
	      -e 's/@''GNULIB_WCSRTOMBS''@/0/g' \
	      -e 's/@''GNULIB_WCSNRTOMBS''@/0/g' \
	      -e 's/@''GNULIB_WCWIDTH''@/0/g' \
	      -e 's/@''GNULIB_WMEMCHR''@/0/g' \
	      -e 's/@''GNULIB_WMEMCMP''@/0/g' \
	      -e 's/@''GNULIB_WMEMCPY''@/0/g' \
	      -e 's/@''GNULIB_WMEMMOVE''@/0/g' \
	      -e 's/@''GNULIB_WMEMSET''@/0/g' \
	      -e 's/@''GNULIB_WCSLEN''@/0/g' \
	      -e 's/@''GNULIB_WCSNLEN''@/0/g' \
	      -e 's/@''GNULIB_WCSCPY''@/0/g' \
	      -e 's/@''GNULIB_WCPCPY''@/0/g' \
	      -e 's/@''GNULIB_WCSNCPY''@/0/g' \
	      -e 's/@''GNULIB_WCPNCPY''@/0/g' \
	      -e 's/@''GNULIB_WCSCAT''@/0/g' \
	      -e 's/@''GNULIB_WCSNCAT''@/0/g' \
	      -e 's/@''GNULIB_WCSCMP''@/0/g' \
	      -e 's/@''GNULIB_WCSNCMP''@/0/g' \
	      -e 's/@''GNULIB_WCSCASECMP''@/0/g' \
	      -e 's/@''GNULIB_WCSNCASECMP''@/0/g' \
	      -e 's/@''GNULIB_WCSCOLL''@/0/g' \
	      -e 's/@''GNULIB_WCSXFRM''@/0/g' \
	      -e 's/@''GNULIB_WCSDUP''@/0/g' \
	      -e 's/@''GNULIB_WCSCHR''@/0/g' \
	      -e 's/@''GNULIB_WCSRCHR''@/0/g' \
	      -e 's/@''GNULIB_WCSCSPN''@/0/g' \
	      -e 's/@''GNULIB_WCSSPN''@/0/g' \
	      -e 's/@''GNULIB_WCSPBRK''@/0/g' \
	      -e 's/@''GNULIB_WCSSTR''@/0/g' \
	      -e 's/@''GNULIB_WCSTOK''@/0/g' \
	      -e 's/@''GNULIB_WCSWIDTH''@/0/g' \
	      < ./wchar.in.h | \
	  sed -e 's|@''HAVE_WINT_T''@|1|g' \
	      -e 's|@''HAVE_BTOWC''@|1|g' \
	      -e 's|@''HAVE_MBSINIT''@|1|g' \
	      -e 's|@''HAVE_MBRTOWC''@|1|g' \
	      -e 's|@''HAVE_MBRLEN''@|1|g' \
	      -e 's|@''HAVE_MBSRTOWCS''@|1|g' \
	      -e 's|@''HAVE_MBSNRTOWCS''@|1|g' \
	      -e 's|@''HAVE_WCRTOMB''@|1|g' \
	      -e 's|@''HAVE_WCSRTOMBS''@|1|g' \
	      -e 's|@''HAVE_WCSNRTOMBS''@|1|g' \
	      -e 's|@''HAVE_WMEMCHR''@|1|g' \
	      -e 's|@''HAVE_WMEMCMP''@|1|g' \
	      -e 's|@''HAVE_WMEMCPY''@|1|g' \
	      -e 's|@''HAVE_WMEMMOVE''@|1|g' \
	      -e 's|@''HAVE_WMEMSET''@|1|g' \
	      -e 's|@''HAVE_WCSLEN''@|1|g' \
	      -e 's|@''HAVE_WCSNLEN''@|1|g' \
	      -e 's|@''HAVE_WCSCPY''@|1|g' \
	      -e 's|@''HAVE_WCPCPY''@|1|g' \
	      -e 's|@''HAVE_WCSNCPY''@|1|g' \
	      -e 's|@''HAVE_WCPNCPY''@|1|g' \
	      -e 's|@''HAVE_WCSCAT''@|1|g' \
	      -e 's|@''HAVE_WCSNCAT''@|1|g' \
	      -e 's|@''HAVE_WCSCMP''@|1|g' \
	      -e 's|@''HAVE_WCSNCMP''@|1|g' \
	      -e 's|@''HAVE_WCSCASECMP''@|1|g' \
	      -e 's|@''HAVE_WCSNCASECMP''@|1|g' \
	      -e 's|@''HAVE_WCSCOLL''@|1|g' \
	      -e 's|@''HAVE_WCSXFRM''@|1|g' \
	      -e 's|@''HAVE_WCSDUP''@|1|g' \
	      -e 's|@''HAVE_WCSCHR''@|1|g' \
	      -e 's|@''HAVE_WCSRCHR''@|1|g' \
	      -e 's|@''HAVE_WCSCSPN''@|1|g' \
	      -e 's|@''HAVE_WCSSPN''@|1|g' \
	      -e 's|@''HAVE_WCSPBRK''@|1|g' \
	      -e 's|@''HAVE_WCSSTR''@|1|g' \
	      -e 's|@''HAVE_WCSTOK''@|1|g' \
	      -e 's|@''HAVE_WCSWIDTH''@|1|g' \
	      -e 's|@''HAVE_DECL_WCTOB''@|1|g' \
	      -e 's|@''HAVE_DECL_WCWIDTH''@|1|g' \
	  | \
	  sed -e 's|@''REPLACE_MBSTATE_T''@|0|g' \
	      -e 's|@''REPLACE_BTOWC''@|0|g' \
	      -e 's|@''REPLACE_WCTOB''@|0|g' \
	      -e 's|@''REPLACE_MBSINIT''@|0|g' \
	      -e 's|@''REPLACE_MBRTOWC''@|0|g' \
	      -e 's|@''REPLACE_MBRLEN''@|0|g' \
	      -e 's|@''REPLACE_MBSRTOWCS''@|0|g' \
	      -e 's|@''REPLACE_MBSNRTOWCS''@|0|g' \
	      -e 's|@''REPLACE_WCRTOMB''@|0|g' \
	      -e 's|@''REPLACE_WCSRTOMBS''@|0|g' \
	      -e 's|@''REPLACE_WCSNRTOMBS''@|0|g' \
	      -e 's|@''REPLACE_WCWIDTH''@|0|g' \
	      -e 's|@''REPLACE_WCSWIDTH''@|0|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h'; \
	} > wchar.h-t && \
	mv wchar.h-t wchar.h
rm -f wctype.h-t wctype.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's/@''HAVE_WCTYPE_H''@/1/g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_WCTYPE_H''@|<wctype.h>|g' \
	      -e 's/@''GNULIB_ISWBLANK''@/0/g' \
	      -e 's/@''GNULIB_WCTYPE''@/0/g' \
	      -e 's/@''GNULIB_ISWCTYPE''@/0/g' \
	      -e 's/@''GNULIB_WCTRANS''@/0/g' \
	      -e 's/@''GNULIB_TOWCTRANS''@/0/g' \
	      -e 's/@''HAVE_ISWBLANK''@/1/g' \
	      -e 's/@''HAVE_ISWCNTRL''@/1/g' \
	      -e 's/@''HAVE_WCTYPE_T''@/1/g' \
	      -e 's/@''HAVE_WCTRANS_T''@/1/g' \
	      -e 's/@''HAVE_WINT_T''@/1/g' \
	      -e 's/@''REPLACE_ISWBLANK''@/0/g' \
	      -e 's/@''REPLACE_ISWCNTRL''@/0/g' \
	      -e 's/@''REPLACE_TOWLOWER''@/0/g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
	      < ./wctype.in.h; \
	} > wctype.h-t && \
	mv wctype.h-t wctype.h
../build-aux/install-sh -c -d arpa
rm -f fcntl.h-t fcntl.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_FCNTL_H''@|<fcntl.h>|g' \
	      -e 's/@''GNULIB_FCNTL''@/1/g' \
	      -e 's/@''GNULIB_NONBLOCKING''@/0/g' \
	      -e 's/@''GNULIB_OPEN''@/1/g' \
	      -e 's/@''GNULIB_OPENAT''@/0/g' \
	      -e 's|@''HAVE_FCNTL''@|1|g' \
	      -e 's|@''HAVE_OPENAT''@|1|g' \
	      -e 's|@''REPLACE_FCNTL''@|0|g' \
	      -e 's|@''REPLACE_OPEN''@|1|g' \
	      -e 's|@''REPLACE_OPENAT''@|0|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
	      < ./fcntl.in.h; \
	} > fcntl.h-t && \
	mv fcntl.h-t fcntl.h
rm -f getopt.h-t getopt.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''HAVE_GETOPT_H''@|1|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_GETOPT_H''@|<getopt.h>|g' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      < ./getopt.in.h; \
	} > getopt.h-t && \
	mv -f getopt.h-t getopt.h
rm -f arpa/inet.h-t arpa/inet.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''HAVE_FEATURES_H''@|0|g' \
	      -e 's|@''NEXT_ARPA_INET_H''@|<arpa/inet.h>|g' \
	      -e 's|@''HAVE_ARPA_INET_H''@|1|g' \
	      -e 's/@''GNULIB_INET_NTOP''@/1/g' \
	      -e 's/@''GNULIB_INET_PTON''@/0/g' \
	      -e 's|@''HAVE_DECL_INET_NTOP''@|1|g' \
	      -e 's|@''HAVE_DECL_INET_PTON''@|1|g' \
	      -e 's|@''REPLACE_INET_NTOP''@|0|g' \
	      -e 's|@''REPLACE_INET_PTON''@|0|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
	      < ./arpa_inet.in.h; \
	} > arpa/inet.h-t && \
	mv arpa/inet.h-t arpa/inet.h
/usr/bin/make  install-recursive
depbase=`echo base32.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT base32.o -MD -MP -MF $depbase.Tpo -c -o base32.o base32.c &&\
	mv -f $depbase.Tpo $depbase.Po
depbase=`echo c-ctype.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT c-ctype.o -MD -MP -MF $depbase.Tpo -c -o c-ctype.o c-ctype.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
brew: superenv removed: -O2 -Wall
depbase=`echo c-strcasecmp.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT c-strcasecmp.o -MD -MP -MF $depbase.Tpo -c -o c-strcasecmp.o c-strcasecmp.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
depbase=`echo c-strncasecmp.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT c-strncasecmp.o -MD -MP -MF $depbase.Tpo -c -o c-strncasecmp.o c-strncasecmp.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
depbase=`echo cloexec.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT cloexec.o -MD -MP -MF $depbase.Tpo -c -o cloexec.o cloexec.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
depbase=`echo md5.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT md5.o -MD -MP -MF $depbase.Tpo -c -o md5.o md5.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
depbase=`echo sha1.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT sha1.o -MD -MP -MF $depbase.Tpo -c -o sha1.o sha1.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
depbase=`echo dirname-lgpl.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT dirname-lgpl.o -MD -MP -MF $depbase.Tpo -c -o dirname-lgpl.o dirname-lgpl.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
depbase=`echo basename-lgpl.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT basename-lgpl.o -MD -MP -MF $depbase.Tpo -c -o basename-lgpl.o basename-lgpl.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
depbase=`echo stripslash.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT stripslash.o -MD -MP -MF $depbase.Tpo -c -o stripslash.o stripslash.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
depbase=`echo exitfail.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT exitfail.o -MD -MP -MF $depbase.Tpo -c -o exitfail.o exitfail.c &&\
	mv -f $depbase.Tpo $depbase.Po
depbase=`echo fatal-signal.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT fatal-signal.o -MD -MP -MF $depbase.Tpo -c -o fatal-signal.o fatal-signal.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
brew: superenv removed: -O2 -Wall
depbase=`echo fd-hook.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT fd-hook.o -MD -MP -MF $depbase.Tpo -c -o fd-hook.o fd-hook.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
depbase=`echo fd-safer-flag.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT fd-safer-flag.o -MD -MP -MF $depbase.Tpo -c -o fd-safer-flag.o fd-safer-flag.c &&\
	mv -f $depbase.Tpo $depbase.Po
depbase=`echo dup-safer-flag.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT dup-safer-flag.o -MD -MP -MF $depbase.Tpo -c -o dup-safer-flag.o dup-safer-flag.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
brew: superenv removed: -O2 -Wall
depbase=`echo gettime.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT gettime.o -MD -MP -MF $depbase.Tpo -c -o gettime.o gettime.c &&\
	mv -f $depbase.Tpo $depbase.Po
depbase=`echo localcharset.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT localcharset.o -MD -MP -MF $depbase.Tpo -c -o localcharset.o localcharset.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
brew: superenv removed: -O2 -Wall
depbase=`echo pipe2.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT pipe2.o -MD -MP -MF $depbase.Tpo -c -o pipe2.o pipe2.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
depbase=`echo pipe2-safer.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT pipe2-safer.o -MD -MP -MF $depbase.Tpo -c -o pipe2-safer.o pipe2-safer.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
depbase=`echo quotearg.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT quotearg.o -MD -MP -MF $depbase.Tpo -c -o quotearg.o quotearg.c &&\
	mv -f $depbase.Tpo $depbase.Po
depbase=`echo sockets.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT sockets.o -MD -MP -MF $depbase.Tpo -c -o sockets.o sockets.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
brew: superenv removed: -O2 -Wall
depbase=`echo spawn-pipe.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT spawn-pipe.o -MD -MP -MF $depbase.Tpo -c -o spawn-pipe.o spawn-pipe.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
depbase=`echo stat-time.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT stat-time.o -MD -MP -MF $depbase.Tpo -c -o stat-time.o stat-time.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
depbase=`echo tempname.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT tempname.o -MD -MP -MF $depbase.Tpo -c -o tempname.o tempname.c &&\
	mv -f $depbase.Tpo $depbase.Po
depbase=`echo glthread/threadlib.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT glthread/threadlib.o -MD -MP -MF $depbase.Tpo -c -o glthread/threadlib.o glthread/threadlib.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
brew: superenv removed: -O2 -Wall
depbase=`echo timespec.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT timespec.o -MD -MP -MF $depbase.Tpo -c -o timespec.o timespec.c &&\
	mv -f $depbase.Tpo $depbase.Po
depbase=`echo tmpdir.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT tmpdir.o -MD -MP -MF $depbase.Tpo -c -o tmpdir.o tmpdir.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
brew: superenv removed: -O2 -Wall
depbase=`echo dup-safer.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT dup-safer.o -MD -MP -MF $depbase.Tpo -c -o dup-safer.o dup-safer.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
depbase=`echo fd-safer.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT fd-safer.o -MD -MP -MF $depbase.Tpo -c -o fd-safer.o fd-safer.c &&\
	mv -f $depbase.Tpo $depbase.Po
depbase=`echo pipe-safer.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT pipe-safer.o -MD -MP -MF $depbase.Tpo -c -o pipe-safer.o pipe-safer.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
brew: superenv removed: -O2 -Wall
depbase=`echo utimens.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT utimens.o -MD -MP -MF $depbase.Tpo -c -o utimens.o utimens.c &&\
	mv -f $depbase.Tpo $depbase.Po
depbase=`echo wait-process.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT wait-process.o -MD -MP -MF $depbase.Tpo -c -o wait-process.o wait-process.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
brew: superenv removed: -O2 -Wall
depbase=`echo xmalloc.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT xmalloc.o -MD -MP -MF $depbase.Tpo -c -o xmalloc.o xmalloc.c &&\
	mv -f $depbase.Tpo $depbase.Po
depbase=`echo xalloc-die.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT xalloc-die.o -MD -MP -MF $depbase.Tpo -c -o xalloc-die.o xalloc-die.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
brew: superenv removed: -O2 -Wall
depbase=`echo asnprintf.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT asnprintf.o -MD -MP -MF $depbase.Tpo -c -o asnprintf.o asnprintf.c &&\
	mv -f $depbase.Tpo $depbase.Po
depbase=`echo error.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT error.o -MD -MP -MF $depbase.Tpo -c -o error.o error.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
brew: superenv removed: -O2 -Wall
depbase=`echo futimens.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT futimens.o -MD -MP -MF $depbase.Tpo -c -o futimens.o futimens.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
depbase=`echo getopt.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT getopt.o -MD -MP -MF $depbase.Tpo -c -o getopt.o getopt.c &&\
	mv -f $depbase.Tpo $depbase.Po
depbase=`echo getopt1.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT getopt1.o -MD -MP -MF $depbase.Tpo -c -o getopt1.o getopt1.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
brew: superenv removed: -O2 -Wall
depbase=`echo getpass.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT getpass.o -MD -MP -MF $depbase.Tpo -c -o getpass.o getpass.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
depbase=`echo ioctl.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT ioctl.o -MD -MP -MF $depbase.Tpo -c -o ioctl.o ioctl.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
depbase=`echo lstat.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT lstat.o -MD -MP -MF $depbase.Tpo -c -o lstat.o lstat.c &&\
	mv -f $depbase.Tpo $depbase.Po
depbase=`echo open.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT open.o -MD -MP -MF $depbase.Tpo -c -o open.o open.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
brew: superenv removed: -O2 -Wall
depbase=`echo printf-args.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT printf-args.o -MD -MP -MF $depbase.Tpo -c -o printf-args.o printf-args.c &&\
	mv -f $depbase.Tpo $depbase.Po
depbase=`echo printf-parse.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT printf-parse.o -MD -MP -MF $depbase.Tpo -c -o printf-parse.o printf-parse.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
brew: superenv removed: -O2 -Wall
depbase=`echo rawmemchr.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT rawmemchr.o -MD -MP -MF $depbase.Tpo -c -o rawmemchr.o rawmemchr.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
depbase=`echo regex.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT regex.o -MD -MP -MF $depbase.Tpo -c -o regex.o regex.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
depbase=`echo stat.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT stat.o -MD -MP -MF $depbase.Tpo -c -o stat.o stat.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
depbase=`echo strcasestr.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT strcasestr.o -MD -MP -MF $depbase.Tpo -c -o strcasestr.o strcasestr.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
depbase=`echo strchrnul.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT strchrnul.o -MD -MP -MF $depbase.Tpo -c -o strchrnul.o strchrnul.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
depbase=`echo strerror.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT strerror.o -MD -MP -MF $depbase.Tpo -c -o strerror.o strerror.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
depbase=`echo strerror-override.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT strerror-override.o -MD -MP -MF $depbase.Tpo -c -o strerror-override.o strerror-override.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
depbase=`echo strerror_r.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT strerror_r.o -MD -MP -MF $depbase.Tpo -c -o strerror_r.o strerror_r.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
depbase=`echo vasnprintf.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT vasnprintf.o -MD -MP -MF $depbase.Tpo -c -o vasnprintf.o vasnprintf.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
rm -f t-charset.alias charset.alias && \
	/bin/sh ./config.charset 'x86_64-apple-darwin12.3.0' > t-charset.alias && \
	mv t-charset.alias charset.alias
rm -f t-ref-add.sed ref-add.sed && \
	sed -e '/^#/d' -e 's/@''PACKAGE''@/wget/g' ref-add.sin > t-ref-add.sed && \
	mv t-ref-add.sed ref-add.sed
rm -f t-ref-del.sed ref-del.sed && \
	sed -e '/^#/d' -e 's/@''PACKAGE''@/wget/g' ref-del.sin > t-ref-del.sed && \
	mv t-ref-del.sed ref-del.sed
depbase=`echo glthread/lock.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	cc -DHAVE_CONFIG_H -I. -I../src     -O2 -Wall -MT glthread/lock.o -MD -MP -MF $depbase.Tpo -c -o glthread/lock.o glthread/lock.c &&\
	mv -f $depbase.Tpo $depbase.Po
brew: superenv removed: -O2 -Wall
rm -f libgnu.a
ar cru libgnu.a base32.o c-ctype.o c-strcasecmp.o c-strncasecmp.o cloexec.o md5.o sha1.o dirname-lgpl.o basename-lgpl.o stripslash.o exitfail.o fatal-signal.o fd-hook.o fd-safer-flag.o dup-safer-flag.o gettime.o localcharset.o glthread/lock.o pipe2.o pipe2-safer.o quotearg.o sockets.o spawn-pipe.o stat-time.o tempname.o glthread/threadlib.o timespec.o tmpdir.o dup-safer.o fd-safer.o pipe-safer.o utimens.o wait-process.o xmalloc.o xalloc-die.o asnprintf.o error.o futimens.o getopt.o getopt1.o getpass.o ioctl.o lstat.o open.o printf-args.o printf-parse.o rawmemchr.o regex.o stat.o strcasestr.o strchrnul.o strerror.o strerror-override.o strerror_r.o vasnprintf.o 
/usr/bin/ranlib: file: libgnu.a(fd-hook.o) has no symbols
/usr/bin/ranlib: file: libgnu.a(threadlib.o) has no symbols
ranlib libgnu.a
ranlib: file: libgnu.a(fd-hook.o) has no symbols
ranlib: file: libgnu.a(threadlib.o) has no symbols
if test no = no; then \
	  case 'darwin12.3.0' in \
	    darwin[56]*) \
	      need_charset_alias=true ;; \
	    darwin* | cygwin* | mingw* | pw32* | cegcc*) \
	      need_charset_alias=false ;; \
	    *) \
	      need_charset_alias=true ;; \
	  esac ; \
	else \
	  need_charset_alias=false ; \
	fi ; \
	if $need_charset_alias; then \
	  /bin/sh /private/tmp/wget-bBaH/wget-1.14/build-aux/install-sh -d /Users/meleeman/.homebrew/Cellar/wget/1.14/lib ; \
	fi ; \
	if test -f /Users/meleeman/.homebrew/Cellar/wget/1.14/lib/charset.alias; then \
	  sed -f ref-add.sed /Users/meleeman/.homebrew/Cellar/wget/1.14/lib/charset.alias > /Users/meleeman/.homebrew/Cellar/wget/1.14/lib/charset.tmp ; \
	  /usr/bin/install -c -m 644 /Users/meleeman/.homebrew/Cellar/wget/1.14/lib/charset.tmp /Users/meleeman/.homebrew/Cellar/wget/1.14/lib/charset.alias ; \
	  rm -f /Users/meleeman/.homebrew/Cellar/wget/1.14/lib/charset.tmp ; \
	else \
	  if $need_charset_alias; then \
	    sed -f ref-add.sed charset.alias > /Users/meleeman/.homebrew/Cellar/wget/1.14/lib/charset.tmp ; \
	    /usr/bin/install -c -m 644 /Users/meleeman/.homebrew/Cellar/wget/1.14/lib/charset.tmp /Users/meleeman/.homebrew/Cellar/wget/1.14/lib/charset.alias ; \
	    rm -f /Users/meleeman/.homebrew/Cellar/wget/1.14/lib/charset.tmp ; \
	  fi ; \
	fi
make[5]: Nothing to be done for `install-data-am'.
Making install in src
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT cmpt.o -MD -MP -MF .deps/cmpt.Tpo -c -o cmpt.o cmpt.c
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT connect.o -MD -MP -MF .deps/connect.Tpo -c -o connect.o connect.c
brew: superenv removed: -O2 -Wall
brew: superenv removed: -O2 -Wall
mv -f .deps/cmpt.Tpo .deps/cmpt.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT convert.o -MD -MP -MF .deps/convert.Tpo -c -o convert.o convert.c
brew: superenv removed: -O2 -Wall
mv -f .deps/connect.Tpo .deps/connect.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT cookies.o -MD -MP -MF .deps/cookies.Tpo -c -o cookies.o cookies.c
brew: superenv removed: -O2 -Wall
mv -f .deps/convert.Tpo .deps/convert.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT ftp.o -MD -MP -MF .deps/ftp.Tpo -c -o ftp.o ftp.c
brew: superenv removed: -O2 -Wall
mv -f .deps/cookies.Tpo .deps/cookies.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT css_.o -MD -MP -MF .deps/css_.Tpo -c -o css_.o css_.c
brew: superenv removed: -O2 -Wall
mv -f .deps/ftp.Tpo .deps/ftp.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT css-url.o -MD -MP -MF .deps/css-url.Tpo -c -o css-url.o css-url.c
brew: superenv removed: -O2 -Wall
mv -f .deps/css-url.Tpo .deps/css-url.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT ftp-basic.o -MD -MP -MF .deps/ftp-basic.Tpo -c -o ftp-basic.o ftp-basic.c
mv -f .deps/css_.Tpo .deps/css_.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT ftp-ls.o -MD -MP -MF .deps/ftp-ls.Tpo -c -o ftp-ls.o ftp-ls.c
brew: superenv removed: -O2 -Wall
brew: superenv removed: -O2 -Wall
mv -f .deps/ftp-basic.Tpo .deps/ftp-basic.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT hash.o -MD -MP -MF .deps/hash.Tpo -c -o hash.o hash.c
brew: superenv removed: -O2 -Wall
mv -f .deps/ftp-ls.Tpo .deps/ftp-ls.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT host.o -MD -MP -MF .deps/host.Tpo -c -o host.o host.c
brew: superenv removed: -O2 -Wall
mv -f .deps/hash.Tpo .deps/hash.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT html-parse.o -MD -MP -MF .deps/html-parse.Tpo -c -o html-parse.o html-parse.c
brew: superenv removed: -O2 -Wall
mv -f .deps/host.Tpo .deps/host.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT html-url.o -MD -MP -MF .deps/html-url.Tpo -c -o html-url.o html-url.c
brew: superenv removed: -O2 -Wall
mv -f .deps/html-url.Tpo .deps/html-url.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT http.o -MD -MP -MF .deps/http.Tpo -c -o http.o http.c
brew: superenv removed: -O2 -Wall
mv -f .deps/html-parse.Tpo .deps/html-parse.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT init.o -MD -MP -MF .deps/init.Tpo -c -o init.o init.c
brew: superenv removed: -O2 -Wall
mv -f .deps/init.Tpo .deps/init.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT log.o -MD -MP -MF .deps/log.Tpo -c -o log.o log.c
brew: superenv removed: -O2 -Wall
mv -f .deps/log.Tpo .deps/log.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT main.o -MD -MP -MF .deps/main.Tpo -c -o main.o main.c
brew: superenv removed: -O2 -Wall
mv -f .deps/main.Tpo .deps/main.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT netrc.o -MD -MP -MF .deps/netrc.Tpo -c -o netrc.o netrc.c
brew: superenv removed: -O2 -Wall
mv -f .deps/netrc.Tpo .deps/netrc.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT progress.o -MD -MP -MF .deps/progress.Tpo -c -o progress.o progress.c
brew: superenv removed: -O2 -Wall
mv -f .deps/http.Tpo .deps/http.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT ptimer.o -MD -MP -MF .deps/ptimer.Tpo -c -o ptimer.o ptimer.c
brew: superenv removed: -O2 -Wall
mv -f .deps/ptimer.Tpo .deps/ptimer.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT recur.o -MD -MP -MF .deps/recur.Tpo -c -o recur.o recur.c
brew: superenv removed: -O2 -Wall
mv -f .deps/progress.Tpo .deps/progress.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT res.o -MD -MP -MF .deps/res.Tpo -c -o res.o res.c
brew: superenv removed: -O2 -Wall
mv -f .deps/recur.Tpo .deps/recur.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT retr.o -MD -MP -MF .deps/retr.Tpo -c -o retr.o retr.c
brew: superenv removed: -O2 -Wall
mv -f .deps/res.Tpo .deps/res.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT spider.o -MD -MP -MF .deps/spider.Tpo -c -o spider.o spider.c
brew: superenv removed: -O2 -Wall
mv -f .deps/spider.Tpo .deps/spider.Po
mv -f .deps/retr.Tpo .deps/retr.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT url.o -MD -MP -MF .deps/url.Tpo -c -o url.o url.c
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT warc.o -MD -MP -MF .deps/warc.Tpo -c -o warc.o warc.c
brew: superenv removed: -O2 -Wall
brew: superenv removed: -O2 -Wall
mv -f .deps/warc.Tpo .deps/warc.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT utils.o -MD -MP -MF .deps/utils.Tpo -c -o utils.o utils.c
brew: superenv removed: -O2 -Wall
mv -f .deps/url.Tpo .deps/url.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT exits.o -MD -MP -MF .deps/exits.Tpo -c -o exits.o exits.c
brew: superenv removed: -O2 -Wall
mv -f .deps/exits.Tpo .deps/exits.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT build_info.o -MD -MP -MF .deps/build_info.Tpo -c -o build_info.o build_info.c
brew: superenv removed: -O2 -Wall
mv -f .deps/build_info.Tpo .deps/build_info.Po
echo '/* version.c */' > version.c
echo '/* Autogenerated by Makefile - DO NOT EDIT */' >> version.c
echo '' >> version.c
echo 'const char *version_string = "1.14";' >> version.c
echo 'const char *compilation_string = "'cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall'";' \
	    | sed -e 's/[\\"]/\\&/g' -e 's/\\"/"/' -e 's/\\";$/";/' >> version.c
echo 'const char *link_string = "'cc  -O2 -Wall \
	  -lssl -lcrypto -lz -ldl -lz -lz   ftp-opie.o openssl.o http-ntlm.o ../lib/libgnu.a'";' \
	    | sed -e 's/[\\"]/\\&/g' -e 's/\\"/"/' -e 's/\\";$/";/' >> version.c
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT ftp-opie.o -MD -MP -MF .deps/ftp-opie.Tpo -c -o ftp-opie.o ftp-opie.c
brew: superenv removed: -O2 -Wall
mv -f .deps/ftp-opie.Tpo .deps/ftp-opie.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT openssl.o -MD -MP -MF .deps/openssl.Tpo -c -o openssl.o openssl.c
brew: superenv removed: -O2 -Wall
mv -f .deps/utils.Tpo .deps/utils.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT http-ntlm.o -MD -MP -MF .deps/http-ntlm.Tpo -c -o http-ntlm.o http-ntlm.c
brew: superenv removed: -O2 -Wall
mv -f .deps/http-ntlm.Tpo .deps/http-ntlm.Po
cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/Users/meleeman/.rvm/etc/wgetrc\" -DLOCALEDIR=\"/Users/meleeman/.homebrew/Cellar/wget/1.14/share/locale\" -I.  -I../lib -I../lib   -O2 -Wall -MT version.o -MD -MP -MF .deps/version.Tpo -c -o version.o version.c
brew: superenv removed: -O2 -Wall
mv -f .deps/version.Tpo .deps/version.Po
mv -f .deps/openssl.Tpo .deps/openssl.Po
cc  -O2 -Wall   -o wget cmpt.o connect.o convert.o cookies.o ftp.o css_.o css-url.o ftp-basic.o ftp-ls.o hash.o host.o html-parse.o html-url.o http.o init.o log.o main.o netrc.o progress.o ptimer.o recur.o res.o retr.o spider.o url.o warc.o utils.o exits.o build_info.o  version.o ftp-opie.o openssl.o http-ntlm.o ../lib/libgnu.a -lssl -lcrypto -lz -ldl -lz -lz  
brew: superenv removed: -O2 -Wall
make[3]: Nothing to be done for `install-data-am'.
 ../build-aux/install-sh -c -d '/Users/meleeman/.homebrew/Cellar/wget/1.14/bin'
  /usr/bin/install -c wget '/Users/meleeman/.homebrew/Cellar/wget/1.14/bin'
Making install in doc
make[3]: Nothing to be done for `install-exec-am'.
/bin/sh /private/tmp/wget-bBaH/wget-1.14/build-aux/install-sh -d /Users/meleeman/.rvm/etc
./texi2pod.pl -D VERSION="1.14" ./wget.texi wget.pod
 ../build-aux/install-sh -c -d '/Users/meleeman/.homebrew/Cellar/wget/1.14/share/info'
 /usr/bin/install -c -m 644 ./wget.info '/Users/meleeman/.homebrew/Cellar/wget/1.14/share/info'
 install-info --info-dir='/Users/meleeman/.homebrew/Cellar/wget/1.14/share/info' '/Users/meleeman/.homebrew/Cellar/wget/1.14/share/info/wget.info'
/usr/bin/pod2man --center="GNU Wget" --release="GNU Wget 1.14" wget.pod > wget.1
/bin/sh /private/tmp/wget-bBaH/wget-1.14/build-aux/install-sh -d /Users/meleeman/.homebrew/Cellar/wget/1.14/share/man/man1
/usr/bin/install -c -m 644 wget.1 /Users/meleeman/.homebrew/Cellar/wget/1.14/share/man/man1/wget.1
Making install in po
if test "wget" = "gettext-tools"; then \
	  ../build-aux/install-sh -c -d /Users/meleeman/.homebrew/Cellar/wget/1.14/share/gettext/po; \
	  for file in Makefile.in.in remove-potcdate.sin quot.sed boldquot.sed en@quot.header en@boldquot.header insert-header.sin Rules-quot   Makevars.template; do \
	    /usr/bin/install -c -m 644 ./$file \
			    /Users/meleeman/.homebrew/Cellar/wget/1.14/share/gettext/po/$file; \
	  done; \
	  for file in Makevars; do \
	    rm -f /Users/meleeman/.homebrew/Cellar/wget/1.14/share/gettext/po/$file; \
	  done; \
	else \
	  : ; \
	fi
Making install in tests
make[3]: Nothing to be done for `install-exec-am'.
make[3]: Nothing to be done for `install-data-am'.
Making install in util
make[3]: Nothing to be done for `install-exec-am'.
make[3]: Nothing to be done for `install-data-am'.
make[3]: Nothing to be done for `install-exec-am'.
make[3]: Nothing to be done for `install-data-am'.
