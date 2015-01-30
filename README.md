# vju
Use vju (Juju and Vagrant) command to get a fresh Juju local, which haves a clean way to rumble from your host.

### Dependencies:
- vagrant plugin install vagrant-triggers 

### Install with Brew.
```
cd path/to/where/this/code/was/cloned
brew install brew-formula/vju.rb
```

**Only tested in Mac OSX Yosemite.**

## Examples:
```
#####################
# Vagrant commands. #
#####################

# vagrant up, and it will restart the Juju's agents.
vju up

# vagrant suspend
vju down

# vagrant ssh
vju in


########################################################
# Access the machine from your browser using a domain. #
########################################################

# Will add something like '10.0.3.175  demo.local' at the end of /etc/hosts file.
vju alias ubuntu/0 ubuntu.local

# Deploy an Ubuntu machine.
vju deploy ubuntu

# Deploy an Ubuntu machine called trusty-sandbox.
vju deploy ubuntu trusty-sandbox


###########################
# Any other Juju command. #
###########################

# Solve the dataset size problem when deploying MySql charm.
vju deploy mysql
vju set mysql dataset-size='512M'
vju resolved -r mysql/# <-- Number of the unit.
```
