def terraform_install(mach)
  modname="terraform"
  #mach.copy_config(modname, "")
  mach.run_mod_script(modname, "install.sh")
end
