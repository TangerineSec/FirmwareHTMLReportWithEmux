enable_esw_port()
{
  #we need reset the phy before we power on the phy
  mii_mgr -s -p 0 -r 0 -v 0  >/dev/null
  mii_mgr -s -p 1 -r 0 -v 0  >/dev/null
  mii_mgr -s -p 2 -r 0 -v 0  >/dev/null
  mii_mgr -s -p 3 -r 0 -v 0  >/dev/null
  mii_mgr -s -p 4 -r 0 -v 0  >/dev/null
  
  #poweron the phy connect
  mii_mgr -s -p 0 -r 0 -v 3100  >/dev/null
  mii_mgr -s -p 1 -r 0 -v 3100  >/dev/null
  mii_mgr -s -p 2 -r 0 -v 3100  >/dev/null
  mii_mgr -s -p 3 -r 0 -v 3100  >/dev/null
  mii_mgr -s -p 4 -r 0 -v 3100  >/dev/null
  
  #giga phy
  mii_mgr -s -p 5 -r 0 -v 3100  >/dev/null
} 

boot_hook_add preinit_main enable_esw_port