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

  * [x] Hybrid Extra auto-build
    * [ ] Find good capacity and storage for auto-build
  * [ ] Package and Repo Signing
  * [ ] Simplify Repository Controll
  * [ ] Unbind most of the dependencies from chaotic-aur

* [ ] Website
  * [x] Find a domain - [hybridproject.ml](https://hybridproject.ml/)
  * [x] Find a web-hosting - [InfinityFree](https://infinityfree.net/)
  * [x] Create a Forum - [forum.hybridproject.ml](https://forum.hybridproject.ml/)
    * [ ] Find a mail hosting with custom domain
  * [ ] Create Website
