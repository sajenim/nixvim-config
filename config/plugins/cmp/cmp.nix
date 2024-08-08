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
        "<C-e>" = "cmp.mapping.select_next_item()";
        "<C-o>" = "cmp.mapping.select_prev_item()";
        # Scroll through documentation.
        "<C-s>" = "cmp.mapping.scroll_docs(-4)";
        "<C-t>" = "cmp.mapping.scroll_docs(4)";
        # Confirm selection.
        "<C-CR>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })";
        # Exit completion.
        "<C-Esc>" = "cmp.mapping.abort()";
      };
    };
    # Scans the sources array and enable the corresponding plugins if they are known to nixvim.
    autoEnableSources = true;
  };
}
