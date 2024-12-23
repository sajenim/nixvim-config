{
  lib,
  pkgs,
  ...
}: {
  plugins.conform-nvim = {
    enable = true;

    settings = {
      # Run the formatter on file save.
      format_on_save = {
        lspFallback = true;
        timeoutMs = 500;
      };
      # Receive notificaton when a formatter errors.
      notifyOnError = true;

      # Map of filetype to formatters.
      formatters_by_ft = {
        c = ["clang-format"];
        haskell = ["stylish-haskell"];
        lua = ["stylua"];
        nix = ["alejandra"];
      };

      # Install our formatters
      formatters = {
        alejandra = {
          command = lib.getExe pkgs.alejandra;
        };
        clang-format = {
          command = lib.getExe' pkgs.clang-tools "clang-format";
        };
        stylish-haskell = {
          command = lib.getExe pkgs.stylish-haskell;
        };
        stylua = {
          command = lib.getExe pkgs.stylua;
        };
      };
    };
  };
}
