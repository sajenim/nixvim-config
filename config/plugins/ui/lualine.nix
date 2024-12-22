{...}: {
  plugins.lualine = {
    enable = true;

    settings = {
      options = {
        globalstatus = true;
        theme = "gruvbox-material";

        # Icons for our separators
        componentSeparators = {
          left = "";
          right = "";
        };

        sectionSeparators = {
          left = "";
          right = "";
        };
      };

      # Display components in tabline
      tabline = {
        lualine_a = [{__unkeyed-1 = "buffers";}];
        lualine_x = [{__unkeyed-1 = "hostname";}];
        lualine_z = [{__unkeyed-1 = "encoding";}];
      };

      # Lualine has sections as shown below
      # +-------------------------------------------------+
      # | A | B | C                             X | Y | Z |
      # +-------------------------------------------------+
      sections = {
        # Section A
        lualine_a = [{__unkeyed-1 = "mode";}];

        # Section B
        lualine_b = [
          # Git branch
          {
            __unkeyed-1 = "branch";
            icon = "";
          }

          # Git diff status
          {
            __unkeyed-1 = "diff";
            symbols = {
              added = "+";
              modified = "~";
              removed = "-";
            };
          }
        ];

        # Section C
        lualine_c = [{__unkeyed-1 = "filename";}];

        # Section X
        lualine_x = [
          # Diagnostic count from nvim_lsp
          {
            __unkeyed-1 = "diagnostics";
            sources = ["nvim_lsp"];
            symbols = {
              error = "error:";
              warn = "warning:";
              info = "info:";
              hint = "hint:";
            };
          }
        ];

        # Section Y
        lualine_y = [{__unkeyed-1 = "progress";}];

        # Section Z
        lualine_z = [{__unkeyed-1 = "location";}];
      };

      # Load our extensions
      extensions = [
        "neo-tree"
      ];
    };
  };
}
