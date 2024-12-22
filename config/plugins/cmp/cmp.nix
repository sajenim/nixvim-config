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
      snippet.expand = ''
        function(args)
          require('luasnip').lsp_expand(args.body)
        end
      '';
      # cmp mappings declaration
      mapping = {
        "<C-down>" = "cmp.mapping.select_next_item()";
        "<C-up>" = "cmp.mapping.select_prev_item()";
        "<C-esc>" = "cmp.mapping.abort()";
        "<C-CR>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })";
      };
    };
    # Scans the sources array and enable the corresponding plugins if they are known to nixvim.
    autoEnableSources = true;
  };
}
