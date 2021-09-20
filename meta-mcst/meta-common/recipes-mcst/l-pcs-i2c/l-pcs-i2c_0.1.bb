SUMMARY = "Elbrus PCS I2C kernel driver"
DESCRIPTION = "Elbrus PCS I2C kernel driver"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://LICENSE;md5=b234ee4d69f5fce4486a80fdaf4a4263"

inherit module

SRC_URI = " \
            file://Makefile  \
            file://l-pcs-i2c.c \
            file://LICENSE \
          "

S = "${WORKDIR}"

RPROVIDES_${PN} += "kernel-module-l-pcs-i2c"