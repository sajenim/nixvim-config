{...}: {
  plugins.gitsigns = {
    enable = true;
  };

  keymaps = [
    {
      mode = ["n" "v"];
      key = "<leader>hs";
      action = "<cmd>Gitsigns stage_hunk<cr>";
      options = {
        silent = true;
        desc = "Stage Hunk";
      };
    }

    {
      mode = ["n" "v"];
      key = "<leader>hr";
      action = "<cmd>Gitsigns reset_hunk<cr>";
      options = {
        silent = true;
        desc = "Reset Hunk";
      };
    }

    {
      mode = "n";
      key = "<leader>hS";
      action = "<cmd>Gitsigns stage_buffer<cr>";
      options = {
        silent = true;
        desc = "Stage Buffer";
      };
    }

    {
      mode = "n";
      key = "<leader>hu";
      action = "<cmd>Gitsigns undo_stage_hunk<cr>";
      options = {
        silent = true;
        desc = "Undo Staged Hunk";
      };
    }

    {
      mode = "n";
      key = "<leader>hR";
      action = "<cmd>Gitsigns reset_buffer<cr>";
      options = {
        silent = true;
        desc = "Reset Buffer";
      };
    }

    {
      mode = "n";
      key = "<leader>hp";
      action = "<cmd>Gitsigns preview_hunk_inline<cr>";
      options = {
        silent = true;
        desc = "Preview Hunk";
      };
    }

    {
      mode = "n";
      key = "<leader>hb";
      action = "<cmd>Gitsigns blame<cr>";
      options = {
        silent = true;
        desc = "View Blame";
      };
    }

    {
      mode = "n";
      key = "<leader>tb";
      action = "<cmd>Gitsigns toggle_current_line_blame<cr>";
      options = {
        silent = true;
        desc = "Toggle Blame";
      };
    }

    {
      mode = "n";
      key = "<leader>hd";
      action = "<cmd>Gitsigns diffthis<cr>";
      options = {
        silent = true;
        desc = "View Diff";
      };
    }

    {
      mode = "n";
      key = "<leader>td";
      action = "<cmd>Gitsigns toggle_deleted<cr>";
      options = {
        silent = true;
        desc = "Toggle Deleted";
      };
    }
  ];
}
