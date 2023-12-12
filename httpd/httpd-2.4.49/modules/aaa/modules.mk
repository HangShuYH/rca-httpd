libmod_authn_file.la: mod_authn_file.lo
	$(MOD_LINK) mod_authn_file.lo $(MOD_AUTHN_FILE_LDADD)
libmod_authn_core.la: mod_authn_core.lo
	$(MOD_LINK) mod_authn_core.lo $(MOD_AUTHN_CORE_LDADD)
libmod_authz_host.la: mod_authz_host.lo
	$(MOD_LINK) mod_authz_host.lo $(MOD_AUTHZ_HOST_LDADD)
libmod_authz_groupfile.la: mod_authz_groupfile.lo
	$(MOD_LINK) mod_authz_groupfile.lo $(MOD_AUTHZ_GROUPFILE_LDADD)
libmod_authz_user.la: mod_authz_user.lo
	$(MOD_LINK) mod_authz_user.lo $(MOD_AUTHZ_USER_LDADD)
libmod_authz_core.la: mod_authz_core.lo
	$(MOD_LINK) mod_authz_core.lo $(MOD_AUTHZ_CORE_LDADD)
libmod_access_compat.la: mod_access_compat.lo
	$(MOD_LINK) mod_access_compat.lo $(MOD_ACCESS_COMPAT_LDADD)
libmod_auth_basic.la: mod_auth_basic.lo
	$(MOD_LINK) mod_auth_basic.lo $(MOD_AUTH_BASIC_LDADD)
DISTCLEAN_TARGETS = modules.mk
static =  libmod_authn_file.la libmod_authn_core.la libmod_authz_host.la libmod_authz_groupfile.la libmod_authz_user.la libmod_authz_core.la libmod_access_compat.la libmod_auth_basic.la
shared = 
