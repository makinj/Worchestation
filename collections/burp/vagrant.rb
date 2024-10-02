def burp_install(mach)
  modname="burp"
  mach.copy_config(modname, "bin.tar.gz")
  mach.run_mod_script(modname, "install.sh")
end
