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
        # Select next/previous item.
        "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
        "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
        # Scroll through documentation.
        "<C-s>" = "cmp.mapping.scroll_docs(-4)";
        "<C-t>" = "cmp.mapping.scroll_docs(4)";
        # Confirm selection.
        "<CR>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })";
        # Exit completion.
        "<C-e>" = "cmp.mapping.abort()";
      };
    };
    # Scans the sources array and enable the corresponding plugins if they are known to nixvim.
    autoEnableSources = true;
  };
}
