{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "t0ast";
  home.homeDirectory = "/home/t0ast";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "25.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [

    bat
    bluetui
    btop
    dust
    eza
    fcitx5
    fcitx5-gtk
    fluent-icon-theme
    git
    gpu-screen-recorder
    gruvbox-dark-gtk
    gruvbox-kvantum
    hypridle
    # hyprlock
    kanshi
    kdePackages.ark
    kdePackages.dolphin
    kdePackages.fcitx5-configtool
    kdePackages.fcitx5-qt
    kdePackages.fcitx5-unikey
    # kdePackages.kdeconnect-kde
    kdePackages.qt6ct
    kdePackages.qtstyleplugin-kvantum
    # kitty # Can't figure out how to set the xkb layout lol
    mako
    neovim
    networkmanager_dmenu
    pwvucontrol
    ripgrep
    rofi
    rofi-calc
    swaybg
    ungoogled-chromium
    waybar
    wl-mirror
    yazi
    zathura
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  programs.git.settings = {
    userName = "t0ast";
    userEmail = "minhthinle69@gmail.com"; # Google bad, I know, but I don't use emails that much to justify a migration 
    extraConfig = {
      init.defaultBranch = "main";
    };
  };

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    ".config/fcitx5".source = dotfiles/fcitx5;
    ".config/kanshi".source = dotfiles/kanshi;
    ".config/mako".source = dotfiles/mako;
    ".config/niri".source = dotfiles/niri;
    ".config/qalculate".source = dotfiles/qalculate;
    ".config/rofi".source = dotfiles/rofi;
    ".config/sway".source = dotfiles/sway;
    ".config/yazi".source = dotfiles/yazi;
    ".config/hypr".source = dotfiles/hypr;
    ".config/kitty".source = dotfiles/kitty;
    ".config/networkmanager-dmenu".source = dotfiles/networkmanager-dmenu;
    ".config/nvim".source = dotfiles/nvim;
    ".config/starship.toml".source = dotfiles/starship.toml;
    ".config/waybar".source = dotfiles/waybar;
    ".config/zathura".source = dotfiles/zathura;
    ".zshrc".source = dotfiles/.zshrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  programs.neovim = {
    defaultEditor = true;
    vimAlias = true;
    viAlias = true;
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/t0ast/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    BAT_THEME = "gruvbox-dark";
    EDITOR = "nvim";
    GTK_IM_MODULE = "fcitx";
    MANPAGER = "bat -plman";
    MOZ_ENABLE_WAYLAND = "1";
    PAGER = "bat";
    QT_IM_MODULE = "fcitx";
    # QT_QPA_PLATFORMTHEME = "qt6ct";
    # QT_QPA_PLATFORM = "wayland";
    SDL_IM_MODULE = "fcitx";
    XDG_MENU_PREFIX = "arch-";
    XMODIFIERS = "@im=fcitx";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
