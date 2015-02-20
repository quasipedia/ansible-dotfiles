#!/usr/bin/env sh

# Create the directory infrastruture for a new ansible role

if [ $# != 1 ]; then
	echo
	echo " ansible-role - Create the directory infrastruture for a new ansible role"
	echo
	echo " Usage:"
	echo "     ansible-role NEW-ROLE-NAME"
	echo
	exit 1
fi

ROLE=$1
BASEDIR=roles/$1
mkdir -p $BASEDIR
# Create the readme file
echo -e "# $ROLE\n\nThis role..." > $BASEDIR/README.md
# Create the default main.yml files
for dir in defaults handlers meta tasks vars; do
	file=$BASEDIR/$dir/main.yml
  mkdir -p "$(dirname "$file")" && touch "$file"
done
# Cerate the default empty directories
for dir in files templates; do
	mkdir -p $BASEDIR/$dir
done
