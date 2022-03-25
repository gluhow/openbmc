FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

NAMES = " \
        bus@1e78a000/i2c-bus@140/lm96163@4c \
        bus@1e78a000/i2c-bus@1c0/lm96163@4c \
        bus@1e78a000/i2c-bus@c0/lm96163@4c \
        bus@1e78a000/i2c-bus@180/pcs@20 \
        bus@1e78a000/i2c-bus@180/pcs@21 \
        bus@1e78a000/i2c-bus@180/pcs@22 \
        bus@1e78a000/i2c-bus@180/pcs@23 \
        bus@1e78a000/i2c-bus@180/pcs@24 \
        bus@1e78a000/i2c-bus@180/pcs@25 \
        bus@1e78a000/i2c-bus@180/pcs@26 \
        \
        "
ITEMSFMT = "ahb/apb/{0}.conf"

ITEMS = "${@compose_list(d, 'ITEMSFMT', 'NAMES')}"

ENVS = "obmc/hwmon/{0}"
SYSTEMD_ENVIRONMENT_FILE:${PN}:append = " ${@compose_list(d, 'ENVS', 'ITEMS')}"
