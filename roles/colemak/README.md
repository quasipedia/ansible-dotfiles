# colemak

This role install the colemak keyboard layout (GB flavour) on the target.

There is a control-variable (`colemak_default`) that can be set to either
`local` or `global`.  As the name suggests, a global default will make
the entire system (from grub onwards) to default to the colemak layout.

The `local` installation will apply to the user only, via executing `loadkeys`
at login.  This roles handle the `groups` and `setuid` permission for the
executable, as to not require sudo permission.

The default is value of `colemak_default` is `local`.
