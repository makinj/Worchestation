def samba_install(mach)
  modname="samba"
  mach.copy_config(modname, "")
  mach.vm.network "forwarded_port", guest: 139, host: 1139
  mach.vm.network "forwarded_port", guest: 445, host: 1445
  mach.vm.network "forwarded_port", guest: 137, host: 1137, protocol: 'udp'
  mach.vm.network "forwarded_port", guest: 138, host: 1138, protocol: 'udp'

  mach.run_mod_script(modname, "install.sh")
end
