# vju
Use vju (Juju and Vagrant) command to get a fresh Juju local, which haves a clean way to rumble from your host.

### Dependencies:
- Vagrant.
- VirtualBox.
- Vagrant plugin vagrant-triggers. Use "vju init" and it will install.

### Suggested:
- SSHFS to access files into the containers. In [Mac OSX](https://github.com/osxfuse/osxfuse/wiki/SSHFS).

### Install with Brew.
```
git clone https://github.com/sebas5384/vju.git
cd ./vju
brew install brew-formula/vju.rb
vju help
```

**Only tested in Mac OSX Yosemite.**

## Examples:
```
#####################
# Vagrant commands. #
#####################

# Initialize vju by creating a Vagrant file and downloading dependencies.
vju init

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
vju set mysql dataset-size='1024M'
vju resolved -r mysql/# <-- Number of the unit.
```
