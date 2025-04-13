{...}: {
  imports = [
    # General configuration.
    ./keymaps.nix
    ./options.nix

    # Themes
    ./plugins/themes/default.nix

    # Completion
    ./plugins/cmp/cmp.nix
    ./plugins/cmp/copilot.nix

    # Editor plugins and configurations
    ./plugins/editor/autopairs.nix
    ./plugins/editor/bufdelete.nix
    ./plugins/editor/comment.nix
    ./plugins/editor/treesitter.nix

    # UI plugins
    ./plugins/ui/lualine.nix
    ./plugins/ui/neo-tree.nix
    ./plugins/ui/web-devicons.nix

    # LSP and formatting
    ./plugins/lsp/conform.nix
    ./plugins/lsp/lsp.nix

    # Git
    ./plugins/git/fugitive.nix
    ./plugins/git/gitsigns.nix
    ./plugins/git/lazygit.nix

    # Utils
    ./plugins/utils/markdown-preview.nix
    ./plugins/utils/obsidian.nix
    ./plugins/utils/render-markdown.nix
    ./plugins/utils/telescope.nix
    ./plugins/utils/todo-comments.nix
    ./plugins/utils/vimtex.nix
    ./plugins/utils/whichkey.nix
  ];
}
