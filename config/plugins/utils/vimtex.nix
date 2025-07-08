{ pkgs, ... }: {
  plugins.vimtex = {
    enable = true;
    texlivePackage = pkgs.texliveFull;

    # Settings for the VimTeX plugin
    settings = {
      view_method = "zathura";
    };
  };

  # Additional packages for VimTeX
  extraPlugins = [
    pkgs.texlivePackages.enumitem
  ];
}
