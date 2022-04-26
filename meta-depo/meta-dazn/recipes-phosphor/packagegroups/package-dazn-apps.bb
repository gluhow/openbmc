SUMMARY = "DAZN Elbrus for DEPO"
PR = "r1"

inherit packagegroup

PROVIDES = "${PACKAGES}"
PACKAGES = " \
        ${PN}-chassis \
        ${PN}-fans \
        ${PN}-flash \
        ${PN}-system \
        "

PROVIDES += "virtual/obmc-chassis-mgmt"
PROVIDES += "virtual/obmc-fan-mgmt"
PROVIDES += "virtual/obmc-flash-mgmt"
PROVIDES += "virtual/obmc-system-mgmt"

RPROVIDES:${PN}-chassis += ""
RDEPENDS:${PN}-chassis = " \
    dazn-powerctrl \
    "
RPROVIDES:${PN}-fans += "virtual-obmc-fan-mgmt"
RPROVIDES:${PN}-flash += "virtual-obmc-flash-mgmt"
RPROVIDES:${PN}-system += "virtual-obmc-system-mgmt"

RDEPENDS:${PN}-system = " \
        webui-vue \
        dazn-powerctrl \
	id-button \
	entity-manager \
        dbus-sensors \
        phosphor-virtual-sensor \
        kernel-module-l-pcs-i2c \
        kernel-module-dp_lm63 \
        phosphor-pid-control \
        update-mac \
        ipmitool \  
        phosphor-gpio-monitor \  
        phosphor-sel-logger \    
	"