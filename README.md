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

  * [ ] Gnome
    * [ ] Create Gnome Settings
      * [ ] Extensions
        * [ ] Blur My Shell
        * [ ] AppIndicator/KStatusNotifierItem
        * [ ] GSConnect
        * [ ] Bluetooth Quick Connect
        * [ ] Pano

      * [ ] Tweaks
        * [ ] Support x11-fractional-scaling
        * [ ] Center New Windows
        * [ ] Noto Font as default font
        * [ ] MesloLGS NF as defalut mono font

    * [ ] Build optimized gnome-shell and mutter for x86_64v2 and x86_64v3

  * [x] Tweaks
    * [x] Modprobe Tweaks
    * [x] Profile.d Tweaks
    * [x] Sysctl Tweaks
    * [x] Udev Tweaks
      * [x] AMD Radeon Power Management Tweaks
      * [x] HPET Tweaks
      * [x] SATA Performance Tweaks
      * [x] I/O Schedules Tweaks
      * [x] HDD Sata Tweaks
      * [x] Other I/O Tweaks

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
    * [ ] Add GRUB Auto-update hook
    * [x] Patched Neofetch Package
    * [x] Patched lsb-release
    * [x] Kernel Auto-build
    * [ ] LTS Kernel Auto-build
    * [x] Legacy Nvidia drivers(nvidia-390xx and high)
    * [ ] [Ananicy-cpp](https://aur.archlinux.org/pkgbase/ananicy-cpp) and [ananicy-rules](https://aur.archlinux.org/pkgbase/ananicy-rules) Auto-build
    * [x] [amdgpu-pro-installer](https://aur.archlinux.org/pkgbase/amdgpu-pro-installer) Auto-build
    * [x] [winesync](https://aur.archlinux.org/pkgbase/winesync) Auto-build

  * [x] Hybrid Extra auto-build
    * [ ] Find good capacity and storage for auto-build
    * [x] [uksmd](https://aur.archlinux.org/pkgbase/uksmd) Auto-build
    * [x] [amd-vulkan-prefixes](https://aur.archlinux.org/pkgbase/amd-vulkan-prefixes) Auto-build
    * [x] [obs-studio-amf](https://gitlab.com/hybrid-project-developers/pkgbuilds/hybrid-extra-pkgbuilds/obs-studio-amf) and plugins Auto-build
    * [x] [asusctl](https://aur.archlinux.org/pkgbase/asusctl) Auto-build
    * [ ] [asusctltray-git](https://aur.archlinux.org/pkgbase/asusctltray-git) Auto-build
    * [x] [fossilize-git](https://aur.archlinux.org/pkgbase/fossilize-git) Auto-build
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
