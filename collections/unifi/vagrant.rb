def unifi_install(mach)
  modname="unifi"
  mach.copy_config(modname, "")
  mach.vm.network "forwarded_port", guest: 8443, host: 8443

  mach.vb do |vbox|

    vbox.driver.execute ['usbfilter', 'add', '0', '--target', :id, '--name', 'unifieth', '--vendorid', '0x0b95', '--productid', '0x1790', '--serialnumber', '000050B6E1F377']
  end

  mach.run_mod_script(modname, "install.sh")
end
