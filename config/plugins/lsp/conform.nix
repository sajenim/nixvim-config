{pkgs, ...}: {
  plugins.conform-nvim = {
    enable = true;

    settings = {
      # Run the formatter on file save.
      format_on_save = {
        lspFallback = true;
        timeoutMs = 500;
      };

      # Map of filetype to formatters.
      formattersByFt = {
        c = ["clang-format"];
        haskell = ["stylish-haskell"];
        lua = ["stylua"];
        nix = ["alejandra"];
      };

      # Receive notificaton when a formatter errors.
      notifyOnError = true;
    };
  };

  # Install our formatters.
  extraPackages = with pkgs; [
    alejandra
    clang-tools
    stylish-haskell
    stylua
  ];
}
