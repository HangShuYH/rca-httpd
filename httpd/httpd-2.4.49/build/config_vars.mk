exp_exec_prefix = /home/sh/httpd-2.4.49-trace
rel_exec_prefix =
exp_bindir = /home/sh/httpd-2.4.49-trace/bin
rel_bindir = bin
exp_sbindir = /home/sh/httpd-2.4.49-trace/bin
rel_sbindir = bin
exp_libdir = /home/sh/httpd-2.4.49-trace/lib
rel_libdir = lib
exp_libexecdir = /home/sh/httpd-2.4.49-trace/modules
rel_libexecdir = modules
exp_mandir = /home/sh/httpd-2.4.49-trace/man
rel_mandir = man
exp_sysconfdir = /home/sh/httpd-2.4.49-trace/conf
rel_sysconfdir = conf
exp_datadir = /home/sh/httpd-2.4.49-trace
rel_datadir =
exp_installbuilddir = /home/sh/httpd-2.4.49-trace/build
rel_installbuilddir = build
exp_errordir = /home/sh/httpd-2.4.49-trace/error
rel_errordir = error
exp_iconsdir = /home/sh/httpd-2.4.49-trace/icons
rel_iconsdir = icons
exp_htdocsdir = /home/sh/httpd-2.4.49-trace/htdocs
rel_htdocsdir = htdocs
exp_manualdir = /home/sh/httpd-2.4.49-trace/manual
rel_manualdir = manual
exp_cgidir = /home/sh/httpd-2.4.49-trace/cgi-bin
rel_cgidir = cgi-bin
exp_includedir = /home/sh/httpd-2.4.49-trace/include
rel_includedir = include
exp_localstatedir = /home/sh/httpd-2.4.49-trace
rel_localstatedir =
exp_runtimedir = /home/sh/httpd-2.4.49-trace/logs
rel_runtimedir = logs
exp_logfiledir = /home/sh/httpd-2.4.49-trace/logs
rel_logfiledir = logs
exp_proxycachedir = /home/sh/httpd-2.4.49-trace/proxy
rel_proxycachedir = proxy
EGREP = /usr/bin/grep -E
PCRE_LIBS = -L/home/sh/httpd-2.4.49-trace/lib -lpcre
SHLTCFLAGS = -prefer-pic
LTCFLAGS = -prefer-non-pic -static
MKINSTALLDIRS = $(abs_srcdir)/build/mkdir.sh
INSTALL = $(LIBTOOL) --mode=install $(abs_srcdir)/build/install.sh -c
MATH_LIBS = -lm
CRYPT_LIBS = -lcrypt
DTRACE = true
PICFLAGS =
PILDFLAGS =
MOD_AUTHN_FILE_LDADD =
MOD_AUTHN_CORE_LDADD =
MOD_AUTHZ_HOST_LDADD =
MOD_AUTHZ_GROUPFILE_LDADD =
MOD_AUTHZ_USER_LDADD =
MOD_AUTHZ_CORE_LDADD =
MOD_ACCESS_COMPAT_LDADD =
MOD_AUTH_BASIC_LDADD =
INSTALL_DSO = yes
MOD_SO_LDADD =
MOD_REQTIMEOUT_LDADD =
MOD_FILTER_LDADD =
MOD_HTTP_LDADD =
MOD_MIME_LDADD =
MOD_LOG_CONFIG_LDADD =
MOD_ENV_LDADD =
MOD_HEADERS_LDADD =
MOD_SETENVIF_LDADD =
MOD_VERSION_LDADD =
htpasswd_LTFLAGS =
htdigest_LTFLAGS =
rotatelogs_LTFLAGS =
logresolve_LTFLAGS =
htdbm_LTFLAGS =
ab_LTFLAGS =
checkgid_LTFLAGS =
htcacheclean_LTFLAGS =
httxt2dbm_LTFLAGS =
fcgistarter_LTFLAGS =
NONPORTABLE_SUPPORT = checkgid fcgistarter
APACHECTL_ULIMIT = ulimit -S -n `ulimit -H -n`
MPM_SUBDIRS = event
MPM_LIB = server/mpm/event/libevent.la
MOD_MPM_EVENT_LDADD =
MOD_UNIXD_LDADD =
MOD_STATUS_LDADD =
MOD_AUTOINDEX_LDADD =
MOD_DIR_LDADD =
MOD_ALIAS_LDADD =
progname = httpd
OS = unix
OS_DIR = unix
BUILTIN_LIBS = modules/aaa/libmod_authn_file.la modules/aaa/libmod_authn_core.la modules/aaa/libmod_authz_host.la modules/aaa/libmod_authz_groupfile.la modules/aaa/libmod_authz_user.la modules/aaa/libmod_authz_core.la modules/aaa/libmod_access_compat.la modules/aaa/libmod_auth_basic.la modules/core/libmod_so.la modules/filters/libmod_reqtimeout.la modules/filters/libmod_filter.la modules/http/libmod_http.la modules/http/libmod_mime.la modules/loggers/libmod_log_config.la modules/metadata/libmod_env.la modules/metadata/libmod_headers.la modules/metadata/libmod_setenvif.la modules/metadata/libmod_version.la modules/arch/unix/libmod_unixd.la modules/generators/libmod_status.la modules/generators/libmod_autoindex.la modules/mappers/libmod_dir.la modules/mappers/libmod_alias.la
SHLIBPATH_VAR = LD_LIBRARY_PATH
OS_SPECIFIC_VARS =
PRE_SHARED_CMDS = echo ""
POST_SHARED_CMDS = echo ""
shared_build =
INSTALL_SUEXEC = setuid
AP_LIBS = $(MOD_AUTHN_FILE_LDADD) $(MOD_AUTHN_CORE_LDADD) $(MOD_AUTHZ_HOST_LDADD) $(MOD_AUTHZ_GROUPFILE_LDADD) $(MOD_AUTHZ_USER_LDADD) $(MOD_AUTHZ_CORE_LDADD) $(MOD_ACCESS_COMPAT_LDADD) $(MOD_AUTH_BASIC_LDADD) $(MOD_SO_LDADD) $(MOD_REQTIMEOUT_LDADD) $(MOD_FILTER_LDADD) $(MOD_HTTP_LDADD) $(MOD_MIME_LDADD) $(MOD_LOG_CONFIG_LDADD) $(MOD_ENV_LDADD) $(MOD_HEADERS_LDADD) $(MOD_SETENVIF_LDADD) $(MOD_VERSION_LDADD) $(MOD_MPM_EVENT_LDADD) $(MOD_UNIXD_LDADD) $(MOD_STATUS_LDADD) $(MOD_AUTOINDEX_LDADD) $(MOD_DIR_LDADD) $(MOD_ALIAS_LDADD) /home/sh/rca_httpd/httpd/apr-util-1.6.3/libaprutil-1.la -lexpat /home/sh/rca_httpd/httpd/apr-1.6.5/libapr-1.la -lcrypt -lpthread
AP_BUILD_SRCLIB_DIRS =
AP_CLEAN_SRCLIB_DIRS =
HTTPD_VERSION = 2.4.49
HTTPD_MMN = 20120211
abs_srcdir = /home/sh/rca_httpd/httpd/httpd-2.4.49
bindir = ${exec_prefix}/bin
sbindir = ${exec_prefix}/bin
cgidir = ${datadir}/cgi-bin
logfiledir = ${localstatedir}/logs
exec_prefix = ${prefix}
datadir = ${prefix}
localstatedir = ${prefix}
mandir = ${prefix}/man
libdir = ${exec_prefix}/lib
libexecdir = ${exec_prefix}/modules
htdocsdir = ${datadir}/htdocs
manualdir = ${datadir}/manual
includedir = ${prefix}/include
errordir = ${datadir}/error
iconsdir = ${datadir}/icons
sysconfdir = ${prefix}/conf
installbuilddir = ${datadir}/build
runtimedir = ${localstatedir}/logs
proxycachedir = ${localstatedir}/proxy
other_targets =
progname = httpd
prefix = /home/sh/httpd-2.4.49-trace
AWK = gawk
CC = gcc
CPP = gcc -E
CXX =
CPPFLAGS =
CFLAGS = -march=skylake -g -ggdb -fno-builtin -fno-inline
CXXFLAGS =
LTFLAGS = --silent
LDFLAGS = -march=skylake -g -ggdb -fno-builtin -fno-inline
LT_LDFLAGS =
SH_LDFLAGS =
HTTPD_LDFLAGS = -export-dynamic
UTIL_LDFLAGS =
LIBS = -L/home/sh/rca_httpd/httpd/apr-1.6.5/.libs -L/home/sh/rca_httpd/httpd/apr-util-1.6.3/.libs -L/home/sh/rca_httpd/httpd/pcre-8.00/.libs
DEFS =
INCLUDES =
NOTEST_CPPFLAGS =
NOTEST_CFLAGS =
NOTEST_CXXFLAGS =
NOTEST_LDFLAGS =
NOTEST_LIBS =
EXTRA_CPPFLAGS = -DLINUX -D_REENTRANT -D_GNU_SOURCE
EXTRA_CFLAGS = -O2
EXTRA_CXXFLAGS =
EXTRA_LDFLAGS =
EXTRA_LIBS =
EXTRA_INCLUDES = -I. -I$(top_srcdir)/os/$(OS_DIR) -I$(top_srcdir)/include -I/home/sh/rca_httpd/httpd/apr-1.6.5/include -I/home/sh/rca_httpd/httpd/apr-util-1.6.3/include -I/home/sh/httpd-2.4.49-trace/include -I$(top_srcdir)/modules/aaa -I$(top_srcdir)/modules/cache -I$(top_srcdir)/modules/core -I$(top_srcdir)/modules/database -I$(top_srcdir)/modules/filters -I$(top_srcdir)/modules/ldap -I$(top_srcdir)/modules/loggers -I$(top_srcdir)/modules/lua -I$(top_srcdir)/modules/proxy -I$(top_srcdir)/modules/http2 -I$(top_srcdir)/modules/session -I$(top_srcdir)/modules/ssl -I$(top_srcdir)/modules/test -I$(top_srcdir)/server -I$(top_srcdir)/modules/md -I$(top_srcdir)/modules/arch/unix -I$(top_srcdir)/modules/dav/main -I$(top_srcdir)/modules/generators -I$(top_srcdir)/modules/mappers
INTERNAL_CPPFLAGS =
LIBTOOL = /home/sh/rca_httpd/httpd/apr-1.6.5/libtool $(LTFLAGS)
SHELL = /bin/bash
RSYNC = /usr/bin/rsync
SVN =
MODULE_DIRS = aaa core filters http loggers metadata arch/unix generators mappers
MODULE_CLEANDIRS = arch/win32 cache database debugging echo examples experimental ldap lua proxy session slotmem ssl test http2 md proxy/balancers cluster dav/main dav/fs dav/lock
PORT = 80
SSLPORT = 443
CORE_IMPLIB_FILE =
CORE_IMPLIB =
SH_LIBS =
SH_LIBTOOL = $(LIBTOOL)
MK_IMPLIB =
MKDEP = $(CC) -MM
INSTALL_PROG_FLAGS =
MPM_MODULES =
ENABLED_MPM_MODULE =
DSO_MODULES =
ENABLED_DSO_MODULES =
LOAD_ALL_MODULES = no
APR_BINDIR = /home/sh/httpd-2.4.49-trace/bin
APR_INCLUDEDIR = /home/sh/rca_httpd/httpd/apr-1.6.5/include
APR_VERSION = 1.6.5
APR_CONFIG = /home/sh/httpd-2.4.49-trace/bin/apr-1-config
APU_BINDIR = /home/sh/httpd-2.4.49-trace/bin
APU_INCLUDEDIR = /home/sh/rca_httpd/httpd/apr-util-1.6.3/include
APU_VERSION = 1.6.3
APU_CONFIG = /home/sh/httpd-2.4.49-trace/bin/apu-1-config