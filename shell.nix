{ pkgs ? import <nixpkgs> {} }:

(pkgs.buildFHSEnv {
  name = "signal-dev";
  targetPkgs = pkgs: (with pkgs; [
    nodejs_24
    pnpm
    python3
    pkg-config

    libgbm          
    libGL
    libdrm
    libxkbcommon
    nss
    nspr
    at-spi2-atk
    at-spi2-core
    cups
    dbus
    expat
    gtk3
    pango
    cairo
    glib
    fontconfig
    freetype
    alsa-lib
    libpulseaudio
    libnotify
    libsecret      
    systemd         
    vulkan-loader

    xorg.libX11
    xorg.libXcomposite
    xorg.libXdamage
    xorg.libXext
    xorg.libXfixes
    xorg.libXrandr
    xorg.libXtst
    xorg.libxcb
    xorg.libXScrnSaver

    glibcLocales
  ]);

  profile = ''
    export LOCALE_ARCHIVE=${pkgs.glibcLocales}/lib/locale/locale-archive
    export LC_ALL=C.UTF-8
  '';

  runScript = "bash";
}).env
