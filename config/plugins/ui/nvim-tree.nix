{...}: {
  plugins.nvim-tree = {
    enable = true;

    # Configure nvim-tree
    extraOptions = {
      # Set width of nvim-tree
      view = {
        width = 38;
      };

      # Hide dotfiles
      filters = {
        dotfiles = true;
      };

      # fix: nvim-tree / auto-session 
      sync_root_with_cwd = true;
      actions = {
        change_dir = {
          global = true;
        };
      }; 
      # https://github.com/zwhitchcox/auto-session-nvim-tree
    }; 
  };

  keymaps = [
    {
      mode = ["n"];
      key = "<leader>e";
      action = "<cmd>NvimTreeFocus<cr>";
      options = {
        desc = "Focus NvimTree";
      };
    }
  ];
}
