{...}: {
  # Autocompletion plugin
  plugins.cmp = {
    enable = true;
    # Options provided to the require('cmp').setup function.
    settings = {
      # The sources to use
      sources = [
        {name = "nvim_lsp";} # LSP source for cmp
        {name = "luasnip";} # Snippets source for cmp
        {name = "path";} # Filesystem paths
      ];
      # The snippet expansion function.
      snippet.expand =
        #Lua
        ''
          function(args)
            require('luasnip').lsp_expand(args.body)
          end
        '';
      # cmp mappings declaration
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
    # Scans the sources array and enable the corresponding plugins if they are known to nixvim.
    autoEnableSources = true;
  };
}
