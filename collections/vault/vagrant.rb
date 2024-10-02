
def vault_install(mach)
  modname="vault"

  mach.setup_storage_drive(modname, 10240)
  mach.run_mod_ansible(modname, "vagrant-server-install.yml")
  mach.setup_portfwd(8443,8443)

end
