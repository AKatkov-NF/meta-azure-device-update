SRC_URI = "git://github.com/dcriv/cpprestsdk.git;protocol=https;branch=support_boost_1.87_#1815"
SRCREV = "2112858d84110e0e58ef9c6bf6e575828acbd020"

FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
SRC_URI += "file://0001-Finish-updating-to-boost-1.87.patch"

ERROR_QA:remove = "patch-status"
WARN_QA:append = " patch-status"

# Remove the SKIP_RECIPE variable to ensure the recipe is not skipped
SKIP_RECIPE[cpprest] = ""
