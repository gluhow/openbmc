FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
             file://reimu.cfg \
             file://aspeed-bmc-mcst-ast2400.dtsi \
             file://aspeed-bmc-mcst-ast2500.dtsi \
             file://aspeed-bmc-mcst-ast2600.dtsi \
             file://0001-squashfs-generate-uuid-for-superblock.patch \
             file://0002-jffs2-hook-up-splice_write-callback.patch \
           "

# Merge source tree by original project with our layer of additional files
do_add_mcst_files () {
    WD=${WORKDIR}/../oe-local-files/
    [ -d ${WD} ] || WD=${WORKDIR}
    cp -r ${WD}/${KMACHINE}-bmc-mcst-${MACHINE}.dts \
          ${WD}/*.dtsi \
          ${STAGING_KERNEL_DIR}/arch/arm/boot/dts
}
addtask do_add_mcst_files after do_patch before do_kernel_configme
