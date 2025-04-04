{...}: {
  # Autocompletion plugin
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;

    # Options provided to the require('cmp').setup function.
    settings = {
      # The sources to use
      sources = [
        { # Language Server Protocol
          name = "nvim_lsp";
        }      

        { # Buffer Words
          name = "buffer";
        }       

        { # Filesystem paths
          name = "path";
        }

        { # Markdown
          name = "render_markdown";
        }
      ];

      # Key mappings for the completion menu.
      mapping = {
        "<esc>" =
          # Lua
          "cmp.mapping.close()";
        "<Down>" =
          # Lua
          "cmp.mapping(cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select}), {'i', 's'})";
        "<Up>" =
          # Lua
          "cmp.mapping(cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Select}), {'i', 's'})";
        "<Tab>" =
          # Lua
          "cmp.mapping.confirm({ select = true, behavior = cmp.ConfirmBehavior.Replace })";
      };
    };
  };
}
