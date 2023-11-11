#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/by-name/recovery:134217728:ca2dee8a7905b4ebb7a9190bf933172cd8e3c121; then
  applypatch  \
          --patch /vendor/recovery-from-boot.p \
          --source EMMC:/dev/block/by-name/boot:33554432:67dc27a51334bda8274a8d9ac243e3b13e3f6c12 \
          --target EMMC:/dev/block/by-name/recovery:134217728:ca2dee8a7905b4ebb7a9190bf933172cd8e3c121 && \
      log -t recovery "Installing new oplus recovery image: succeeded" && \
      setprop ro.boot.recovery.updated true || \
      log -t recovery "Installing new oplus recovery image: failed" && \
      setprop ro.boot.recovery.updated false
else
  log -t recovery "Recovery image already installed"
  setprop ro.boot.recovery.updated true
fi
