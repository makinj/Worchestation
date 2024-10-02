def aws_install(mach)
  modname="aws"
  mach.run_mod_script(modname, "install.sh")
end
