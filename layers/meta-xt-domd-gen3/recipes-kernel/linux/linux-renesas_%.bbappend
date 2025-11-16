FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = " \
    file://defconfig \
    file://xen-chosen.dtsi \
    ${@bb.utils.contains('DISTRO_FEATURES', 'enable_virtio', ' file://vsock.cfg', '', d)} \
"

SRC_URI:remove = "file://0164-arm64-dts-renesas-Add-ulcb-kf-dtso-files.patch"

SRCREV = "38093f11d336ef488ac80466a35ad06668b2e07d"
