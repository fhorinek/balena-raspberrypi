FILESEXTRAPATHS:append := ":${THISDIR}/files"

SRC_URI:append = " \
	file://hailo_pci.conf \
	"
do_install:append:raspberrypi5() {
	# Install hailo AI accelerator rules
	install -D -m 0644 ${WORKDIR}/hailo_pci.conf ${D}/etc/modprobe.d/hailo_pci.conf
}

