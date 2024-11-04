{pkgs, ...}: {
  plugins.conform-nvim = {
    enable = true;

    # Run the formatter on file save.
    formatOnSave = {
      lspFallback = true;
      timeoutMs = 500;
    };
    # Receive notificaton when a formatter errors.
    notifyOnError = true;

    # Map of filetype to formatters.
    formattersByFt = {
      c = ["clang-format"];
      nix = ["alejandra"];
    };
  };

  # Install our formatters.
  extraPackages = with pkgs; [
    alejandra
    stylish-haskell
  ];
}
