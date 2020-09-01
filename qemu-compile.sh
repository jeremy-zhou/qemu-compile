#!/bin/bash

yum install glib2-devel libfdt-devel pixman-devel zlib-devel -y
yum install libaio-devel libcap-devel libiscsi-devel python-sphinx -y
yum install libssh2-devel libxml2-devel libcap-ng-devel usbredir-devel -y
yum install libusb-devel  uuid-devel libjpeg-devel libcurl-devel texinfo -y
yum install gnutls-devel libcacard-devel libseccomp-devel -y
yum install systemtap-sdt-devel gtk3-devel cyrus-sasl-devel -y
yum install spice-server spice-server-devel spice-protocol -y
yum install lzo-devel snappy-devel gperftools-devel bzip2 -y
pip install sphinx

yum install -y wget
wget https://download.qemu.org/qemu-5.1.0.tar.xz
tar -xvf qemu-5.1.0.tar.xz
cd qemu-5.1.0
mkdir bin && cd bin
../configure --target-list=x86_64-softmmu --enable-gnutls --enable-docs --enable-lzo --enable-snappy --enable-gtk --enable-vnc --enable-vnc-sasl --enable-vnc-png --enable-vnc-jpeg --enable-curl --enable-kvm  --enable-linux-aio --enable-cap-ng --enable-vhost-net --enable-vhost-crypto --enable-spice --enable-usb-redir --enable-bzip2 --enable-coroutine-pool --enable-libxml2 --enable-replication --enable-tools --enable-capstone
make -j$nproc
