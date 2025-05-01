# Installs and configures the DeliveryOptimization Agent Service

LICENSE = "CLOSED"

SRC_URI = "\
    file://deliveryoptimization-agent.service \
"

SYSTEMD_SERVICE:${PN} = "deliveryoptimization-agent.service"

S = "${WORKDIR}/sources"
UNPACKDIR = "${S}"

do_install:append() {
    install -d ${D}${systemd_system_unitdir}
    install -m 0644 ${UNPACKDIR}/deliveryoptimization-agent.service ${D}${systemd_system_unitdir}
}

FILES:${PN} += "${systemd_system_unitdir}/deliveryoptimization-agent.service"
REQUIRED_DISTRO_FEATURES = "systemd"
RDEPENDS:${PN} += "deliveryoptimization-agent"

inherit allarch systemd features_check
