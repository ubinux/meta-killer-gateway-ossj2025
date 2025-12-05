# recipes-core/images/killer-gateway-image.bb
SUMMARY = "IoT Gateway image (OpenSSH, sudo, logging)"
LICENSE = "MIT"

require recipes-core/images/core-image-base.bb

# Package selection (via packagegroup or direct)
IMAGE_INSTALL:append = " packagegroup-killer-gateway"

# Image features: put ssh server here (not in distro)
IMAGE_FEATURES += " package-management ssh-server-openssh"

# Image formats: compressed WIC + block map for fast flashing
IMAGE_FSTYPES += " wic.bz2 wic.bmap"
