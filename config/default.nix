{ ... }:

{
  imports = [
    # General configuration.
    ./keymaps.nix
    ./options.nix

    # Themes
    ./plugins/themes/default.nix

    # Completion
    ./plugins/cmp/cmp.nix

    # Snippets
    ./plugins/snippets/luasnip.nix

    # Editor plugins and configurations
    ./plugins/editor/bufdelete.nix
    ./plugins/editor/comment.nix
    ./plugins/editor/neo-tree.nix
    ./plugins/editor/treesitter.nix

    # UI plugins
    ./plugins/ui/lualine.nix

    # LSP and formatting
    ./plugins/lsp/lsp.nix

    # Git
    ./plugins/git/fugitive.nix
    ./plugins/git/gitsigns.nix
    ./plugins/git/lazygit.nix

    # Utils
    ./plugins/utils/markdown-preview.nix
    ./plugins/utils/telescope.nix
    ./plugins/utils/whichkey.nix
  ];
}

