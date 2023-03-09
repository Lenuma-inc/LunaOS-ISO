# hybrid-linux-archiso
Codespace with Sources for Building Hybrid ISO

## Roadmap
* [ ] ISO
  * [x] Packages
    * [x] Add vulkan drivers to ISO
    * [x] Add codecs to ISO
    * [ ] Minimal Gnome installation
    * [x] Boot on Mesa by default

  * [x] Calamares
    * [ ] Support Offline installation
    * [ ] Set dracut as default initramfs generator
    * [ ] Add systemd-boot support for UEFI
    * [x] Nvidia auto-install
    * [x] Architechture auto-detect
    * [x] Pacstrap support
    * [ ] Add more packages to installer

  * [x] Gnome
    * [x] Create Gnome Settings
      * [x] Extensions
        * [x] Blur My Shell
        * [x] AppIndicator/KStatusNotifierItem
        * [x] GSConnect
        * [x] Bluetooth Quick Connect
        * [x] Dock From Dash
        * [x] Pano

      * [x] Tweaks
        * [x] Support x11-fractional-scaling
        * [x] Center New Windows
        * [x] Noto Font as default font
        * [x] MesloLGS NF as defalut mono font

    * [x] Build optimized gnome-shell and mutter for x86_64v2 and x86_64v3

  * [x] Hybrid Tweaks
    * [x] Increased limits for Esync functionality
    * [x] Modprobe Tweaks
      * [x] i915 driver
        * [x] Framebuffer compress
        * [x] Intel Fastboot
      * [x] Disabling Watchdogs
      * [x] AMDGPU full GPU control
      * [x] Loaded modules for gamepads


    * [x] Profile.d Tweaks
      * [x] Set RADV as defalut Vulkan driver for AMDGPU
      * [x] Add RADV Tweaks
        * [x] Enable Graphics Pipeline Library
        * [x] Enable Ray-Tracing Support
        * [x] Enable Video Decoding support
      * [x] OBS-vkcapture fix for recording on X11
      * [x] Qt-apps XCursor fix
      * [x] VA-API Tweaks
      * [x] Wayland Env Vars

    * [x] Sysctl Tweaks
      * [x] Kernel
        * [x] Disabled nmi_watchdog
        * [x] Minimized system startup exhaust
        * [x] CachyOS Sched Tuning

      * [x] Virtual Memory
        * [x] Swapping setted to 20(Use swap when you need it, giving priority to RAM)
        * [x] Dirty Ratio setted to 20
        * [x] Page Cluster setted to 0(Writes 1 page of memory to the swap)
        * [x] Background Dirty Ratio setted to 10
        * [x] Dirty Writeback Centisecs setted to 1000
        * [x] Max Map Count setted to 16777216(Fixes startup/performance in some games)

      * [x] Network Tweaks
        * [x] IPv4 Tweaks
        * [x] IPv6 Tweaks
        * [x] Optimize TCP

      * [x] Other
        * [x] i915.perf_stream_paranoid setted to 0(Fixes performance regression)

    * [x] Udev Tweaks
      * [x] AMD Radeon Power Management Tweaks
      * [x] HPET Tweaks
      * [x] SATA Performance Tweaks
      * [x] I/O Schedules Tweaks
      * [x] HDD Sata Tweaks
      * [x] Other I/O Tweaks

    * [x] Services(Package)
      * [x] ananicy-cpp
      * [x] zram-generator
      * [x] systemd-oomd
      * [x] uksmd
      * [x] irqbalance
      * [x] pci-latency(included in Hybrid Tweaks)
      * [x] optimize-interruptfreq.service(included in Hybrid Tweaks)
  
  * [x] Nvidia-Tweaks
    * [x] Support for dracut
    * [x] Enable Performance mode by default

  * [ ] Software
    * [ ] Create a Wellcome App(Like a Manjaro Hello)
    * [ ] Find a good alternative for Pamac
    * [ ] Create a Hybrid Tweaker
      * [ ] Disable unneeded Gnome services
      * [ ] Enable/Disable Cloudflare DNS
      * [ ] Enable/Disable AdGuard DNS


* [x] Repo
  * [x] Hybrid Core auto-build
    * [ ] Find good capacity and storage for auto-build
    * [x] Add GRUB Auto-update hook
    * [x] Patched Neofetch Package
    * [x] Patched lsb-release
    * [x] Kernel Auto-build
    * [ ] LTS Kernel Auto-build
    * [x] Legacy Nvidia drivers(nvidia-390xx and high)
    * [x] [amdgpu-pro-installer](https://aur.archlinux.org/pkgbase/amdgpu-pro-installer) Auto-build
    * [x] [winesync](https://aur.archlinux.org/pkgbase/winesync) Auto-build

  * [x] Hybrid Extra auto-build
    * [ ] Find good capacity and storage for auto-build
    * [x] [Ananicy-cpp](https://aur.archlinux.org/pkgbase/ananicy-cpp) and [ananicy-rules](https://aur.archlinux.org/pkgbase/ananicy-rules) Auto-build
    * [x] [uksmd](https://aur.archlinux.org/pkgbase/uksmd) Auto-build
    * [x] [amd-vulkan-prefixes](https://aur.archlinux.org/pkgbase/amd-vulkan-prefixes) Auto-build
    * [x] [obs-studio-amf](https://gitlab.com/hybrid-project-developers/pkgbuilds/hybrid-extra-pkgbuilds/obs-studio-amf) and plugins Auto-build
      * [x] Running with AMDVLK-Pro driver for AMF
    * [x] [asusctl](https://aur.archlinux.org/pkgbase/asusctl) Auto-build
    * [x] [asusctltray-git](https://aur.archlinux.org/pkgbase/asusctltray-git) Auto-build
    * [x] [fossilize-git](https://aur.archlinux.org/pkgbase/fossilize-git) Auto-build
    * [x] [nvlax-git](https://aur.archlinux.org/pkgbase/nvlax-git) Auto-build
    * [ ] [gnome-shell-extension-blur-my-shell](https://aur.archlinux.org/pkgbase/gnome-shell-extension-blur-my-shell) Auto-build
    * [ ] [gnome-shell-extension-pano-git](https://aur.archlinux.org/pkgbase/gnome-shell-extension-pano-git) Auto-build
    * [ ] [gnome-shell-extension-bluetooth-quick-connect](https://aur.archlinux.org/pkgbase/gnome-shell-extension-bluetooth-quick-connect) Auto-build
    * [ ] [gnome-shell-extension-gsconnect](https://aur.archlinux.org/pkgbase/gnome-shell-extension-gsconnect) Auto-build
    * [ ] [gnome-shell-extension-dock-from-dash-git](https://aur.archlinux.org/pkgbase/gnome-shell-extension-dock-from-dash-git) Auto-build
    * [ ] [gnome-shell-performance](https://aur.archlinux.org/pkgbase/gnome-shell-performance) Auto-build
    * [ ] [mutter-x11-scaling](https://aur.archlinux.org/pkgbase/mutter-x11-scaling) Auto-build
    * [ ] [hybrid-gnome-meta](https://gitlab.com/hybrid-project-developers/pkgbuilds/hybrid-extra-pkgbuilds/hybrid-gnome-meta) Auto-build
    * [x] [openoffice-bin](https://aur.archlinux.org/pkgbase/openoffice-bin) Auto-build
    * [x] [xorg-xwayland-hidpi-vsync-fix](https://gitlab.com/hybrid-project-developers/pkgbuilds/hybrid-extra-pkgbuilds/xorg-xwayland-hidpi-vsync-fix) Auto-build
    * [x] [alac-git](https://aur.archlinux.org/pkgbase/alac-git), [daala-git](https://aur.archlinux.org/pkgbase/daala-git), [davs2](https://aur.archlinux.org/pkgbase/davs2) and [openjpeg](https://aur.archlinux.org/pkgbase/openjpeg)(lib32 in process) codecs Auto-Build
  * [ ] Package and Repo Signing
  * [ ] Simplify Repository Control
  * [ ] Unbind most of the dependencies from chaotic-aur

* [x] Kernel
  * [x] Support Latest Kernel Version
    * [ ] Add built-in DDC/CI support
  * [ ] Support LTS Kernel Version(In process)
    * [ ] Add built-in DDC/CI support

* [ ] Website
  * [x] Find a domain - [hybridproject.ml](https://hybridproject.ml/)
  * [x] Find a web-hosting - [InfinityFree](https://infinityfree.net/)
  * [x] Create a Forum - [forum.hybridproject.ml](https://forum.hybridproject.ml/)
    * [ ] Find a mail hosting with custom domain
  * [ ] Create Website
