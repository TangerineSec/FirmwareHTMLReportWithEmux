disable_esw_port()
{
  #Phy power down
  mii_mgr -s -p 0 -r 0 -v 3900  >/dev/null
  mii_mgr -s -p 1 -r 0 -v 3900  >/dev/null
  mii_mgr -s -p 2 -r 0 -v 3900  >/dev/null
  mii_mgr -s -p 3 -r 0 -v 3900  >/dev/null
  mii_mgr -s -p 4 -r 0 -v 3900  >/dev/null
  
  #giga phy
  mii_mgr -s -p 5 -r 0 -v 3900  >/dev/null
} 

boot_hook_add preinit_main disable_esw_port
