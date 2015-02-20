# ssh-keys

This role install the user's rsa_id.pub key on the local machine onto the 
target one (as `authorized_key`).

This would allow to SSH into the machine without the need for typing the
password.

Because of the security implications, the default behaviour is to skip this
task.  You must explicitly set the `ssh_keys_install` variable to `yes` for it
to work.