{
  lib,
  pkgs,
  ...
}: {
  plugins.conform-nvim = {
    enable = true;

    settings = {
      # Map of filetype to formatters.
      formatters_by_ft = {
        c = [
          "clang-format"
        ];
        lua = [
          "stylua"
        ];
        nix = [
          "alejandra"
        ];
        python = [
          "isort"
          "black"
        ];
      };

      # Install our formatters
      formatters = {
        alejandra = {
          command = lib.getExe pkgs.alejandra;
        };
        clang-format = {
          command = lib.getExe' pkgs.clang-tools "clang-format";
        };
        stylua = {
          command = lib.getExe pkgs.stylua;
        };
        isort = {
          command = lib.getExe pkgs.isort;
        };
        black = {
          command = lib.getExe pkgs.black;
        };
      };

      # Receive notificaton when a formatter errors.
      notifyOnError = true;
    };
  };

  # Keymaps for conform.nvim
  keymaps = [
    {
      mode = "";
      key = "<leader>f";
      action.__raw = ''
        function()
          require('conform').format { async = true, lsp_fallback = true }
        end
      '';
      options = {
        desc = "Format buffer";
      };
    }
  ];
}
