# vju
Use vju (Juju and Vagrant) command to get a fresh Juju local, which haves a clean way to rumble from your host.

### Dependencies:
- vagrant plugin install vagrant-triggers 

**Only tested in Mac OSX Yosemite.**


## Examples:
```
vju up                      => vagrant up
vju down                    => vagrant suspend
vju alias demo/0 demo.local => Will add something like '10.0.3.175  demo.local' at the end of /etc/hosts file.
```
