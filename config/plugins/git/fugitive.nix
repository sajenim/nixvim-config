{...}: {
  plugins.fugitive = {
    enable = true;
  };

  keymaps = [
    {
      mode = ["n"];
      key = "<leader>gc";
      action = "<cmd>Git commit<cr>";
      options = {
        silent = true;
        desc = "Commit Changes";
      };
    }

    {
      mode = ["n"];
      key = "<leader>gC";
      action = "<cmd>Git commit --amend<cr>";
      options = {
        silent = true;
        desc = "Ammend Changes";
      };
    }

    {
      mode = ["n"];
      key = "<leader>gd";
      action = "<cmd>Git diff<cr>";
      options = {
        silent = true;
        desc = "View diff";
      };
    }

    {
      mode = ["n"];
      key = "<leader>gu";
      action = "<cmd>Git restore --staged .<cr>";
      options = {
        silent = true;
        desc = "Unstage all changes";
      };
    }

    {
      mode = ["n"];
      key = "<leader>gp";
      action = "<cmd>Git push<cr>";
      options = {
        silent = true;
        desc = "Push changes to remote";
      };
    } 
  ];
}
