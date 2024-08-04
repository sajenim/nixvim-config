{ ... }:

{
  plugins.lualine = {
    enable = true;
    globalstatus = true;
    theme = "gruvbox-material";

    # Load our extensions
    extensions = [
      "neo-tree"
    ];

    # Icons for our separators
    componentSeparators = { left = ""; right = ""; };
    sectionSeparators = { left = ""; right = ""; };

    # Display components in tabline
    tabline.lualine_a = [ { name = "buffers"; } ];

    # Lualine has sections as shown below
    # +-------------------------------------------------+
    # | A | B | C                             X | Y | Z |
    # +-------------------------------------------------+
    sections = {
      # Section A
      lualine_a = [ { name = "mode"; icon = ""; } ];

      # Section B
      lualine_b = [
        # Git branch
        { name = "branch"; icon = ""; }

        # Git diff status
        { name = "diff";
          extraConfig.symbols = {
            added = " ";
            modified = " ";
            removed = " ";
          };
        }

        # Diagnostic count from nvim_lsp
        { name = "diagnostics";
          extraConfig = {
            sources = [ "nvim_lsp" ];
            symbols = {
              error = " ";
              warn = " ";
              info = " ";
              hint = "󰝶 ";
            };
          };
        }
      ];

      # Section C
      lualine_c = [ { name = "filename"; extraConfig = { path = 1; }; } ];

      # Section X
      lualine_x = [
        { name = "encoding"; }
        { name = "fileformat"; }
        { name = "filetype"; }
      ];

      # Section Y
      lualine_y = [ { name = "progress"; } ];

      # Section Z
      lualine_z = [ { name = "location"; } ];
    };
  };
}

