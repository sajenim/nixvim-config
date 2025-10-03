{...}: {
  keymaps = [
    # Find namespace indicator for whichkey
    {
      mode = ["n"];
      key = "<leader>f";
      action = "<NOP>";
      options = {
        desc = "+find";
      };
    }

    # Find files and content
    {
      mode = ["n"];
      key = "<leader>ff";
      action = "<cmd>Telescope find_files<CR>";
      options = {
        desc = "Find project files";
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<leader>fg";
      action = "<cmd>Telescope live_grep<CR>";
      options = {
        desc = "Find pattern";
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<leader>fh";
      action = "<cmd>Telescope help_tags<CR>";
      options = {
        desc = "Find help tags";
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<leader>fc";
      action = "<cmd>Telescope commands<CR>";
      options = {
        desc = "Find commands";
        silent = true;
      };
    }
  ];
}
