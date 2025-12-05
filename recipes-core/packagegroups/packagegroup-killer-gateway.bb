SUMMARY = "Package group for Killer Gateway (headless gateway)"
LICENSE = "MIT"

inherit packagegroup

RDEPENDS:${PN} = "\
    openssh \
    sudo \
    chrony \
    rsyslog \
"
