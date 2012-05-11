#!/bin/bash

check_root() {

if [ $(id -u) -ne 0 ]; then
	echo "Not Root!!!!"
	exit 1
fi

}

copy_init_script() {
	
	cp src/vmbridge /etc/init.d/

}

# TODO check parmissions

check_root

copy_init_script
