{...}: {
  imports = [
    # General Configuration
    ./keymaps.nix
    ./options.nix

    # Themes & Appearance
    ./plugins/themes/default.nix

    # Plugin Collections
    ./plugins/collections/mini.nix
    ./plugins/collections/snacks.nix

    # Completion & AI Assistancee
    ./plugins/cmp/cmp.nix
    ./plugins/cmp/copilot.nix
    ./plugins/cmp/copilot-chat.nix

    # Debugging (DAP)
    ./plugins/dap/dap.nix
    ./plugins/dap/dap-ui.nix
    ./plugins/dap/dap-virtual-text.nix
    ./plugins/dap/dap-python.nix

    # Editor Enhancements
    ./plugins/editor/commentary.nix
    ./plugins/editor/harpoon.nix
    ./plugins/editor/sessions.nix
    ./plugins/editor/smart-splits.nix
    ./plugins/editor/surround.nix
    ./plugins/editor/treesitter.nix

    # User Interface Plugins
    ./plugins/ui/lualine.nix
    ./plugins/ui/nvim-tree.nix
    ./plugins/ui/web-devicons.nix
    ./plugins/ui/whichkey.nix

    # LSP and Formatting
    ./plugins/lsp/conform.nix
    ./plugins/lsp/lsp.nix

    # Git Integration
    ./plugins/git/fugitive.nix
    ./plugins/git/gitsigns.nix

    # Markdown, Notes & Productivity
    ./plugins/notes/markdown-preview.nix
    ./plugins/notes/neorg.nix
    ./plugins/notes/render-markdown.nix
    ./plugins/notes/todo-comments.nix

    # Utilities
    ./plugins/utils/oil.nix
    ./plugins/utils/telescope.nix
    ./plugins/utils/vimtex.nix
  ];
}
