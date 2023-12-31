#!/bin/bash


# download Junk BoX Library
if [ -d jbxl ]; then
    rm -rf jbxl
fi


# download flotsam_XmlRpcGroup
if [ -d flotsam_XmlRpcGroup ]; then
    rm -rf flotsam_XmlRpcGroup
fi


# download opensim.helper
if [ -d opensim.helper ]; then
    rm -rf opensim.helper
fi


# download opensum.phplib
if [ -d opensim.phplib ]; then
    rm -rf opensim.phplib
fi


# download opensim.modules
if [ -d opensim.modules ]; then
    rm -rf opensim.modules
fi

if [ -f include/config.php ]; then
    mv -f include/config.php 'config.php.temp.$$$'
fi

rm -rf helper
rm -rf include
rm -rf sql

mkdir -p include

if [ -f 'config.php.temp.$$$'  ]; then
    mv -f 'config.php.temp.$$$' include/config.php
fi

