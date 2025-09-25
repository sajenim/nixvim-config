{...}: {
  # Autocompletion plugin
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;

    # Options provided to the require('cmp').setup function.
    settings = {
      # Disable autocompletion by default
      completion.autocomplete = false;

      # The sources to use
      sources = [
        # Language Server Protocol
        { name = "nvim_lsp"; }      

        # Buffer Words
        { name = "buffer"; }       

        # Filesystem paths
        { name = "path"; }

        # Markdown
        { name = "render_markdown"; }

        # VimTex
        { name = "vimtex"; }

        # Neorg
        { name = "neorg"; }
      ];

      # Key mappings for the completion menu.
      mapping = {
        # Confirm candidate on TAB immediately when there's only one completion entry
        "<Tab>" = /* lua */ ''
          cmp.mapping(function(fallback)
            local line, col = unpack(vim.api.nvim_win_get_cursor(0))

            -- When the selection menu is open select the next item
            if cmp.visible() then
              cmp.select_next_item({behavior = cmp.SelectBehavior.Select})
            -- Ensure we are mid word
            elseif col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil then
              -- Open the selection menu
              cmp.complete()
              -- Autocomplete when there is only 1 selection available
              if #cmp.get_entries() == 1 then
                cmp.confirm({ select = true })
              end
              -- Select the firt item
              cmp.select_next_item({behavior = cmp.SelectBehavior.Select})
            -- Keep regular functionality of tab
            else
              fallback()
            end
          end, {'i', 's'})
        '';

        # Confirm selection
        "<CR>" = /* lua */ ''
          cmp.mapping.confirm({ select = true })
        '';

        # Select the next item in the menu
        "<Down>" = /* lua */ ''
          cmp.mapping(cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select}), {'i', 's'})
        '';

        # Select the prev item in the menu
        "<Up>" = /* lua */ ''
          cmp.mapping(cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Select}), {'i', 's'})
        '';

        # Exit the completion menu
        "<esc>" = /* lua */ ''
          cmp.mapping.close()
        '';
      };
    };
  };
}
