# Dotfiles (and more) provisioned by ansible

If you know what dotfiles are and what ansible is, you should pretty much
understand what this repository does.   But if that is not the case:

> This repository provides a one-command way to setup and configure to your
> liking a brand new machine.

To be more specific: this repo allows to configure a machine the way _I_ like
it.  Unless you happen to have exactly the same tastes and preferences that I
do, you _will_ need to create your own ansible roles / tweak mines.


## Dependencies

- `ansible` installed on the local machine
- A sudo-enabled account on the target machine
- [If you need password for either SSH or sudo, `sshpass` installed on the
  local machine]


## How to run it

The general syntax is:

```sh
ansible-playbook <playbook> -i <hostname-or-ip>, [--user=<user> --ask-pass --ask-sudo-pass -vvvv]
```

Examples:

```sh
ansible-playbook create-user.yml -i 192.168.122.102, --user=root --ask-pass
ansible-playbook workstation.yml -i 192.168.122.102, -vvvv
```


## Available playbooks

Since I use Fedora as a workstation and the servers I need to work on are
CentOS, this ansible playbooks relies heavily on RPM's.

Currently there are three playbooks:

- **create-user**: This is a self-contained playbook rarely used on those
  system when a user need to be created by root after installation (currently:
  only legacy CentOS versions)
- **server**: sets console environment, preferences, plugins for CLI
  commands...
- **workstation**: almost a superset of _server_, also installs a number of
  software for the Gnome3 shell as well.

_server_ and _workstation_ depends from a playbook _common_ that can (but
shuold not) be run on its own.


## Available roles

I wrote this as the first file of the repository, and I am checking roles as
the work progresses...

###General:

- [X] **ansible-target**: make sure python binding for selinux are installed
- [X] **ssh-keys**: set up SSH to work without requiring a password
- [ ] **colemak-user**: set the colemak as default layout for the user
- [X] **zsh**: install and set up ZSH as the default shell for user
- [X] **python**: install both python 2 and 3 + pip, wheel, virtualenv...
- [X] **git**: git settings, plugins, etc...
- [ ] **antigen**: install antigen and the preference files
- [ ] **localbin-path**: make sure .local/bin is in the user's $PATH
- [ ] **vim**: vim settings, plugins, etc...
- [X] **ansible-util**: small ansible utils

###Workstation-specific:

- [ ] **colemak-host**: set colemak as the default layout for the machine
- [ ] **fusion**: install the fusion repo
- [ ] **boxes-util**: install a small utility for SSH into gnome-boxes VM's
- [ ] **fedy**: install fedy
- [ ] **graphics**: install proprietary graphic drivers
- [ ] **sublime**: install sublime text

###Server-specific:

- [ ] **epel**: install the EPEL repo