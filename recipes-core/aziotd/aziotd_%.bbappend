FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

PACKAGECONFIG[adu-ais] = ",,,"
SRC_URI += "${@bb.utils.contains('PACKAGECONFIG', 'adu-ais', 'file://adu.toml', '', d)}"

# Add in the required file for identity service to recognize adu auth requests
PACKAGECONFIG += "adu-ais"

do_install:append() {
    if ${@bb.utils.contains('PACKAGECONFIG', 'adu-ais', 'true', 'false', d)}; then
        install -m 640 ${UNPACKDIR}/adu.toml ${D}${sysconfdir}/aziot/identityd/config.d/adu.toml
        chown ${USER_AZIOTID}:${USER_AZIOTID} ${D}${sysconfdir}/aziot/identityd/config.d/adu.toml
    fi
}
