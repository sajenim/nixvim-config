{...}: {
  plugins.gitsigns = {
    enable = true;
  };

  keymaps = [
    {
      mode = ["n" "v"];
      key = "<leader>gs";
      action = "<cmd>Gitsigns stage_hunk<cr>";
      options = {
        silent = true;
        desc = "Stage Hunk";
      };
    }

    {
      mode = ["n" "v"];
      key = "<leader>gr";
      action = "<cmd>Gitsigns reset_hunk<cr>";
      options = {
        silent = true;
        desc = "Reset Hunk";
      };
    }

    {
      mode = "n";
      key = "<leader>gS";
      action = "<cmd>Gitsigns stage_buffer<cr>";
      options = {
        silent = true;
        desc = "Stage Buffer";
      };
    }

    {
      mode = "n";
      key = "<leader>gu";
      action = "<cmd>Gitsigns undo_stage_hunk<cr>";
      options = {
        silent = true;
        desc = "Undo Staged Hunk";
      };
    }

    {
      mode = "n";
      key = "<leader>gR";
      action = "<cmd>Gitsigns reset_buffer<cr>";
      options = {
        silent = true;
        desc = "Reset Buffer";
      };
    }

    {
      mode = "n";
      key = "<leader>gp";
      action = "<cmd>Gitsigns preview_hunk_inline<cr>";
      options = {
        silent = true;
        desc = "Preview Hunk";
      };
    }

    {
      mode = "n";
      key = "<leader>gb";
      action = "<cmd>Gitsigns blame<cr>";
      options = {
        silent = true;
        desc = "View Blame";
      };
    }

    {
      mode = "n";
      key = "<leader>gtb";
      action = "<cmd>Gitsigns toggle_current_line_blame<cr>";
      options = {
        silent = true;
        desc = "Toggle Blame";
      };
    }

    {
      mode = "n";
      key = "<leader>gd";
      action = "<cmd>Gitsigns diffthis<cr>";
      options = {
        silent = true;
        desc = "View Diff";
      };
    }

    {
      mode = "n";
      key = "<leader>gtd";
      action = "<cmd>Gitsigns toggle_deleted<cr>";
      options = {
        silent = true;
        desc = "Toggle Deleted";
      };
    }
  ];
}
