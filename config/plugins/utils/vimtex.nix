{ pkgs, ... }: {
  plugins.vimtex = {
    enable = true;
    texlivePackage = pkgs.texliveFull;

    # Settings for the VimTeX plugin
    settings = {
      view_method = "zathura";
    };
  };
}
