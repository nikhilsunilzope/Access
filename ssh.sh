#!/bin/bash

welcome(){
    echo "Welcome to my script. This script installs and uninstalls my SSH key"
    echo "You should only run this script when you need to give me access to your server"
    echo "As soon as I am finished working on your server you should uninstall the key"
    echo "THIS SCRIPT EFFECTS ONLY THE LOGGED IN USER"
}

break(){
    echo ""
    echo ""
}

options(){
    echo "Please select from one of the following options"
    echo ""
    echo "1| Install key"
    echo "2| Remove key"
    read option
}

installkey(){
    cd
    mkdir -p .ssh
    if grep -q "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCdgyfLkGQD84uCvc1KRN56SOT7RhWmskbL9lr1V7oyEtLSkuW04NHtJdtZUqrzACF3mJ8HIN3YTtYre6GeGBlw4b16HxvmCPhd2RGBN1JkB6sUPH9ubb5d16Mji19QHPbUF5pOoKXSxpCSjysQGPsZkZQvKeIXGg6cW3QcV6svBw2IAtXhV5LibjIV0fHYeH2XaNXxn7t2DlyZ/9b0SQwKfqXNITbRXZptvu93BvW7RmEIgRy4NLOCJvYuY8bSWtoZMAZ5IQ+zwz5JINIohg85ADgV36NqRThPyxoyo5ZVgKBfKNuvg7twuULHN4qT3+YXIWEyDrcpASa5BsvPoU45 nikhilzope" ".ssh/authorized_keys" -s ; then
    echo "ERROR: Key is already installed, please contact me if this is not the expected output."
    else 
    echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCdgyfLkGQD84uCvc1KRN56SOT7RhWmskbL9lr1V7oyEtLSkuW04NHtJdtZUqrzACF3mJ8HIN3YTtYre6GeGBlw4b16HxvmCPhd2RGBN1JkB6sUPH9ubb5d16Mji19QHPbUF5pOoKXSxpCSjysQGPsZkZQvKeIXGg6cW3QcV6svBw2IAtXhV5LibjIV0fHYeH2XaNXxn7t2DlyZ/9b0SQwKfqXNITbRXZptvu93BvW7RmEIgRy4NLOCJvYuY8bSWtoZMAZ5IQ+zwz5JINIohg85ADgV36NqRThPyxoyo5ZVgKBfKNuvg7twuULHN4qT3+YXIWEyDrcpASa5BsvPoU45 nikhilzope" >> ~/.ssh/authorized_keys
    echo "Key sucessfully installed"
    fi
}

removekey(){
    cd
    mkdir -p .ssh
    if grep -q "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCdgyfLkGQD84uCvc1KRN56SOT7RhWmskbL9lr1V7oyEtLSkuW04NHtJdtZUqrzACF3mJ8HIN3YTtYre6GeGBlw4b16HxvmCPhd2RGBN1JkB6sUPH9ubb5d16Mji19QHPbUF5pOoKXSxpCSjysQGPsZkZQvKeIXGg6cW3QcV6svBw2IAtXhV5LibjIV0fHYeH2XaNXxn7t2DlyZ/9b0SQwKfqXNITbRXZptvu93BvW7RmEIgRy4NLOCJvYuY8bSWtoZMAZ5IQ+zwz5JINIohg85ADgV36NqRThPyxoyo5ZVgKBfKNuvg7twuULHN4qT3+YXIWEyDrcpASa5BsvPoU45 nikhilzope" ".ssh/authorized_keys" -s ; then
    sed -i '/nikhilzope/d' .ssh/authorized_keys
    echo "Key sucessfully removed"
    else 
    echo "ERROR: Key not installed, please contact me if this is not the expected output."
    fi
}

welcome
break
options
case $option in 
    1)  installkey
    ;;
    2)  removekey
    ;;
    *)  echo "Your selection was not valid. Please try again:"
    options
esac
