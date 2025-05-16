{...}: {
  imports = [
    # General configuration.
    ./keymaps.nix
    ./options.nix

    # Themes
    ./plugins/themes/default.nix

    # Completion
    ./plugins/cmp/cmp.nix

    # Debug Adapter Protocol
    ./plugins/dap/dap.nix
    ./plugins/dap/dap-ui.nix
    ./plugins/dap/dap-virtual-text.nix
    ./plugins/dap/dap-python.nix

    # Editor plugins and configurations
    ./plugins/editor/buffers.nix
    ./plugins/editor/comment.nix
    ./plugins/editor/sessions.nix
    ./plugins/editor/treesitter.nix

    # UI plugins
    ./plugins/ui/lualine.nix
    ./plugins/ui/nvim-tree.nix
    ./plugins/ui/web-devicons.nix
    ./plugins/ui/whichkey.nix

    # LSP and formatting
    ./plugins/lsp/conform.nix
    ./plugins/lsp/lsp.nix

    # Git
    ./plugins/git/fugitive.nix
    ./plugins/git/gitsigns.nix
    ./plugins/git/lazygit.nix

    # Utils
    ./plugins/utils/markdown-preview.nix
    ./plugins/utils/render-markdown.nix
    ./plugins/utils/oil.nix
    ./plugins/utils/telescope.nix
    ./plugins/utils/todo-comments.nix
    ./plugins/utils/vimtex.nix
  ];
}
