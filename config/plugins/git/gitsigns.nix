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
      mode = ["n"];
      key = "<leader>gS";
      action = "<cmd>Gitsigns stage_buffer<cr>";
      options = {
        silent = true;
        desc = "Stage Buffer";
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
      mode = ["n"];
      key = "<leader>gR";
      action = "<cmd>Gitsigns reset_buffer<cr>";
      options = {
        silent = true;
        desc = "Reset Buffer";
      };
    }

    {
      mode = ["n"];
      key = "<leader>gb";
      action = "<cmd>Gitsigns toggle_current_line_blame<cr>";
      options = {
        silent = true;
        desc = "Toggle Blame";
      };
    }

    {
      mode = ["n"];
      key = "<leader>gB";
      action = "<cmd>Gitsigns blame<cr>";
      options = {
        silent = true;
        desc = "View Blame";
      };
    }

    {
      mode = ["n"];
      key = "[h";
      action = "<cmd>Gitsigns prev_hunk<cr>";
      options = {
        silent = true;
        desc = "Goto Previous Hunk";
      };
    }

    {
      mode = ["n"];
      key = "]h";
      action = "<cmd>Gitsigns next_hunk<cr>";
      options = {
        silent = true;
        desc = "Goto Next Hunk";
      };
    }
  ];
}
