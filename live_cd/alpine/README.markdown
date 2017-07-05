[Alpine Linux](https://alpinelinux.org/) LiveCD for Tsung loadtests
===================================================================

These directions utilize a load user in a load group with the
`user_id` and `group_id` of 301.

* SSH keys are required for all loadtesting clients and monitored servers
   `ssh-keygen -f id_rsa.load -N '' -t rsa`
   `ssh-keygen -f ssh_host_ed25519_key -N '' -t ed25519`
   `ssh-keygen -f ssh_host_rsa_key -N '' -t rsa`
   `ssh-keygen -f ssh_host_dsa_key -N '' -t dsa`
   `ssh-keygen -f ssh_host_ecdsa_key -N '' -t ecdsa -b 521`
   The monitored servers require the load user exist with the same ssh
   configuration that will be created for the load test clients.
   An example of creating the load user on Ubuntu is:
  1. `addgroup --gid 301 load`
  2. `adduser --disabled-password --gecos '' --ingroup load load`
* Setup the Alpine Linux [installation](https://www.alpinelinux.org/downloads/) (based on [custom ISO wiki page](Based on https://wiki.alpinelinux.org/wiki/How_to_make_a_custom_ISO_image_with_mkimage), as `root`):
  1. `apk add alpine-sdk build-base apk-tools alpine-conf busybox fakeroot syslinux xorriso`
     (if UEFI, add "`mtools dosfstools grub-efi`")
  2. `apk update`
  3. `adduser build -G abuild`
  4. `passwd build`
  5. `addgroup sudo`
    (modify `/etc/sudoers` to allow sudo group)
  6. `adduser build sudo`
  7. `su build`
  8. `cd ~`
  9. `abuild-keygen -i -a`
  10. `git clone git://git.alpinelinux.org/aports`
  11. `mkdir ~/iso`
  12. modify `genapkovl-load.sh` based on your network configuration and insert
     the contents of the SSH key files generated above
     (all necessary changes are marked with `XXX`).  Please note that the
     `root` and `load` users are not given a password unless you choose to
     change their shadow entries in this file.
  13. `./iso.sh x86_64 load` (or) `./iso.sh x86 load`
     (the images are put into the `~/iso` directory)

