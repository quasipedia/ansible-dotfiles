# ansible-util

This role install a small script that allows to generate the directory tree
and canonical files for a new ansible role.  Example:

$> ansible-role foobar

will result in the following structure

    .
    ├── roles
    │   └── foobar
    │       ├── defaults
    │       │   └── main.yml
    │       ├── files
    │       ├── handlers
    │       │   └── main.yml
    │       ├── meta
    │       │   └── main.yml
    │       ├── README.md
    │       ├── tasks
    │       │   └── main.yml
    │       ├── templates
    │       └── vars
    │           └── main.yml
