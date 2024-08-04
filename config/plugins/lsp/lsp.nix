{ ... }:

{
  plugins.lsp = {
    enable = true; # Enable neovim's built-in LSP.

    # Configure our language servers
    servers = {
      # C/C++
      clangd = {
        enable = true;
      };
      # Clojure
      clojure-lsp = {
        enable = true;
      };
      # Haskell
      hls = {
        enable = true;
      };
      # Lua
      lua-ls = {
        enable = true;
      };
      # Nix
      nil-ls = {
        enable = true;
      };
      # YAML
      yamlls = {
        enable = true;
      };
    };

    keymaps = {
      # nvim-lsp keymaps should be silent
      silent = true;
      # Configure keymaps for our diagnostics. 
      diagnostic = {
        "<leader>n" = "open_float"; # Show diagnostics in floating window.
        "<leader>o" = "goto_prev";  # Jump to previous diagnostic.
        "<leader>e" = "goto_next";  # Jump to next diagnostic.
      };
      # Configure keymaps for our lspbuf.
      lspBuf = {
        K = "hover";            # Displays hover information¹
        gr = "references";      # Lists all the references¹
        gd = "definition";      # Jumps to the definition¹
        gD = "declaration";     # Jumps to the declaration¹
        gi = "implementation";  # Lists all the implementations¹
        gt = "type_definition"; # Jumps to the definition of the type¹
        # ¹ for the symbol under the cursor
      };
    };
  };
}

