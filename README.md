# devstack-plugin-cephadm

## Instance specs

Tested on Centos 8 Stream and Ubuntu 20.04 LTS

Instance with 8 cores, 16GB RAM and two disks (one 50gigs, other 20gigs). Having two disks is required for at least one OSD to be deployed.

## Prereqs

It expects lvm, jq and podman to be previosly installed.

## How to enable this

Enable this plugin as any other plugin for DevStack, adding the following line to your local.conf

enable_plugin devstack-plugin-cephadm https://github.com/vkmc/devstack-plugin-cephadm
