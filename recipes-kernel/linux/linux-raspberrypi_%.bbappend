# Disable CONFIG_SOUND    
FILESEXTRAPATHS:prepend := "${THISDIR}:"
SRC_URI:append = " file://disable-sound.cfg"
KERNEL_CONFIG_FRAGMENTS:append = " disable-sound.cfg"

# Add patch for CVE-2025-38352
SRC_URI:append = " file://0001-posix-cpu-timers-fix-race-between-handle_posix_cpu_timers-and-posix_cpu_timer_del-CVE-2025-38352.patch"

# The following CVE as ignored
CVE_STATUS[CVE-2023-3079] = "ignored: This vulnerability affects Chromium/V8 only. Chromium is not included in this image, therefore it is not applicable."
CVE_STATUS[CVE-2024-53150] = "ignored: Affects the Linux sound subsystem (CONFIG_SOUND); CONFIG_SOUND is disabled (CONFIG_SOUND=n), therefore not applicable."
CVE_STATUS[CVE-2024-53197] = "ignored: Affects the Linux sound subsystem (CONFIG_SOUND); CONFIG_SOUND is disabled (CONFIG_SOUND=n), therefore not applicable."
