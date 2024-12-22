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
        "<C-Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
        "<C-e>" = "cmp.mapping.select_next_item()";
        "<C-o>" = "cmp.mapping.select_prev_item()";
        "<C-esc>" = "cmp.mapping.abort()";
        "<C-b>" = "cmp.mapping.scroll_docs(-4)";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-CR>" = "cmp.mapping.confirm({ select = true })";
        "<S-CR>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })";
      };
    };
    # Scans the sources array and enable the corresponding plugins if they are known to nixvim.
    autoEnableSources = true;
  };
}
