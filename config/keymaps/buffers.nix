{...}: {
  keymaps = [
    # Buffer namespace indicator for whichkey
    {
      mode = ["n"];
      key = "<leader>b";
      action = "<NOP>";
      options = {
        desc = "+buffer";
      };
    }

    # Buffer deletion
    {
      mode = ["n"];
      key = "<leader>bq";
      action = {
        __raw = "function() require('snacks').bufdelete() end";
      };
      options = {
        desc = "Quit current buffer";
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<leader>bQ";
      action = {
        __raw = "function() require('snacks').bufdelete.other() end";
      };
      options = {
        desc = "Quit all other buffers";
        silent = true;
      };
    }

    # Buffer navigation (moved from keymaps.nix)
    {
      mode = ["n"];
      key = "<C-Left>";
      action = ":bprevious<CR>";
      options = {
        desc = "Previous buffer";
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<C-Right>";
      action = ":bnext<CR>";
      options = {
        desc = "Next buffer";
        silent = true;
      };
    }

    # Buffer listing
    {
      mode = ["n"];
      key = "<leader>bl";
      action = "<cmd>Telescope buffers<CR>";
      options = {
        desc = "List buffers";
        silent = true;
      };
    }
  ];
}
