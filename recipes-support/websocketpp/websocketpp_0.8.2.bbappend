LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=caca8c57fc82d4528bfd694b3de9b7cf"

SRC_URI = "git://github.com/amini-allight/websocketpp.git;protocol=https;branch=develop"
SRCREV = "ee8cf4257e001d939839cff5b1766a835b749cd6"

# Remove the SKIP_RECIPE variable to ensure the recipe is not skipped
SKIP_RECIPE[websocketpp] = ""
