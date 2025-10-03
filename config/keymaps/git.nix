{...}: {
  keymaps = [
    # Git namespace indicator for whichkey
    {
      mode = ["n"];
      key = "<leader>g";
      action = "<NOP>";
      options = {
        desc = "+git";
      };
    }

    # Git list namespace indicator for whichkey
    {
      mode = ["n"];
      key = "<leader>gl";
      action = "<NOP>";
      options = {
        desc = "+list";
      };
    }

    # Git staging (from gitsigns)
    {
      mode = ["n" "v"];
      key = "<leader>gs";
      action = "<cmd>Gitsigns stage_hunk<CR>";
      options = {
        desc = "Stage hunk";
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<leader>gS";
      action = "<cmd>Gitsigns stage_buffer<CR>";
      options = {
        desc = "Stage buffer";
        silent = true;
      };
    }

    # Git reset (from gitsigns)
    {
      mode = ["n" "v"];
      key = "<leader>gr";
      action = "<cmd>Gitsigns reset_hunk<CR>";
      options = {
        desc = "Reset hunk";
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<leader>gR";
      action = "<cmd>Gitsigns reset_buffer<CR>";
      options = {
        desc = "Reset buffer";
        silent = true;
      };
    }

    # Git blame (from gitsigns)
    {
      mode = ["n"];
      key = "<leader>gb";
      action = "<cmd>Gitsigns toggle_current_line_blame<CR>";
      options = {
        desc = "Toggle blame";
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<leader>gB";
      action = "<cmd>Gitsigns blame<CR>";
      options = {
        desc = "View blame";
        silent = true;
      };
    }

    # Git commit (from fugitive)
    {
      mode = ["n"];
      key = "<leader>gc";
      action = "<cmd>Git commit<CR>";
      options = {
        desc = "Commit changes";
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<leader>gC";
      action = "<cmd>Git commit --amend<CR>";
      options = {
        desc = "Amend changes";
        silent = true;
      };
    }

    # Git diff (from fugitive)
    {
      mode = ["n"];
      key = "<leader>gd";
      action = "<cmd>Git diff<CR>";
      options = {
        desc = "View diff";
        silent = true;
      };
    }

    # Git unstage (from fugitive)
    {
      mode = ["n"];
      key = "<leader>gu";
      action = "<cmd>Git restore --staged .<CR>";
      options = {
        desc = "Unstage all changes";
        silent = true;
      };
    }

    # Git push (from fugitive)
    {
      mode = ["n"];
      key = "<leader>gp";
      action = "<cmd>Git push<CR>";
      options = {
        desc = "Push changes to remote";
        silent = true;
      };
    }

    # Git list operations (from telescope)
    {
      mode = ["n"];
      key = "<leader>glc";
      action = "<cmd>Telescope git_commits<CR>";
      options = {
        desc = "List git commits";
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<leader>glb";
      action = "<cmd>Telescope git_branches<CR>";
      options = {
        desc = "List git branches";
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<leader>gld";
      action = "<cmd>Telescope git_status<CR>";
      options = {
        desc = "List git diff";
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<leader>gls";
      action = "<cmd>Telescope git_stash<CR>";
      options = {
        desc = "List git stash";
        silent = true;
      };
    }
  ];
}
