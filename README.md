# Konfigurasi NixOS

Repository ini berisi konfigurasi NixOS saya, yang dikelola menggunakan [flakes](https://nixos.wiki/wiki/Flakes).

## Daftar Isi

- [Gambaran Umum](#gambaran-umum)
- [Pengaturan Sistem](#pengaturan-sistem)
- [Struktur Flake](#struktur-flake)

## Gambaran Umum

Konfigurasi ini disesuaikan untuk kebutuhan pribadi saya di sistem `x86_64-linux`. Fokus utama adalah performa dan
stabilitas, menggunakan kernel 5.15 untuk responsivitas yang optimal serta
modul `linux_5_15.rtw89` untuk mendukung jaringan nirkabel.

## Pengaturan Sistem

1. **Versi NixOS**: [unstable]
2. **Kernel**: 5.15
3. **Modul**:
    - [lwfinger/rtw89](https://github.com/lwfinger/rtw89) untuk jaringan nirkabel

## Struktur Flake

Konfigurasi ini mengikuti struktur [nix-starter-configs](https://github.com/Misterio77/nix-starter-configs), sehingga
dapat direproduksi dan mudah dikelola di berbagai sistem.
Berkas `flake.nix` mencakup beberapa modul untuk mengorganisir konfigurasi sistem secara modular.

### Susunan Direktori:

```bash
.
├── flake.lock
├── flake.nix
├── home
│    ├── applications
│    │   ├── browsers
│    │   │   ├── chromium.nix
│    │   │   ├── default.nix
│    │   │   └── librewolf.nix
│    │   ├── communication
│    │   │   ├── default.nix
│    │   │   ├── discord.nix
│    │   │   └── telegram.nix
│    │   ├── default.nix
│    │   ├── development
│    │   │   ├── default.nix
│    │   │   ├── helix.nix
│    │   │   └── jetbrains.nix
│    │   └── terminal
│    │       ├── alacritty.nix
│    │       ├── default.nix
│    │       └── zellij.nix
│    ├── default.nix
│    ├── desktop
│    │   ├── default.nix
│    │   └── fonst.nix
│    ├── development
│    │   ├── default.nix
│    │   ├── git.nix
│    │   ├── go.nix
│    │   ├── java.nix
│    │   ├── javascript.nix
│    │   ├── php.nix
│    │   └── python.nix
│    ├── packages
│    │   ├── default.nix
│    │   ├── development.nix
│    │   ├── system.nix
│    │   └── utils.nix
│    ├── services
│    └── shell
│        ├── default.nix
│        ├── fish.nix
│        └── startship.nix
├── nixos
│    ├── common
│    │   ├── aplication
│    │   │   ├── default.nix
│    │   │   └── steam.nix
│    │   ├── audio
│    │   │   ├── default.nix
│    │   │   └── pipewire.nix
│    │   ├── dekstop
│    │   │   ├── default.nix
│    │   │   └── plasma.nix
│    │   ├── global
│    │   │   ├── default.nix
│    │   │   ├── fonts.nix
│    │   │   ├── locale.nix
│    │   │   └── nix.nix
│    │   ├── security
│    │   │   ├── default.nix
│    │   │   ├── doas.nix
│    │   │   ├── polkit.nix
│    │   │   └── rtkit.nix
│    │   ├── users
│    │   │   ├── default.nix
│    │   │   ├── extragroups.nix
│    │   │   └── xxmuggle.nix
│    │   └── virtualization
│    │       ├── default.nix
│    │       ├── docker.nix
│    │       └── vbox.nix
│    ├── default.nix
│    └── hardware
│        ├── boot.nix
│        ├── default.nix
│        ├── filesystems.nix
│        ├── hardware.nix
│        └── networking.nix
└── README.md



