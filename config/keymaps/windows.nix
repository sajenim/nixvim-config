{...}: {
  keymaps = [
    # Window namespace indicator for whichkey
    {
      mode = ["n"];
      key = "<leader>w";
      action = "<NOP>";
      options = {
        desc = "+window";
      };
    }

    # Window splits
    {
      mode = ["n"];
      key = "<leader>ws";
      action = "<C-w>s";
      options = {
        desc = "Split window horizontally";
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<leader>wv";
      action = "<C-w>v";
      options = {
        desc = "Split window vertically";
        silent = true;
      };
    }

    # Window closing
    {
      mode = ["n"];
      key = "<leader>wq";
      action = "<C-w>q";
      options = {
        desc = "Quit window";
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<leader>wQ";
      action = "<C-w>o";
      options = {
        desc = "Quit all other windows";
        silent = true;
      };
    }

    # Window maximize
    {
      mode = ["n"];
      key = "<leader>wm";
      action = {
        __raw = "require('maximize').toggle";
      };
      options = {
        desc = "Toggle maximize window";
        silent = true;
      };
    }

    # Cycle through splits
    {
      mode = ["n"];
      key = "<C-Up>";
      action = "<C-w>W";
      options = {
        desc = "Cycle to previous split";
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<C-Down>";
      action = "<C-w>w";
      options = {
        desc = "Cycle to next split";
        silent = true;
      };
    }

    # Rotate split layout
    {
      mode = ["n"];
      key = "<C-PageUp>";
      action = "<C-w>R";
      options = {
        desc = "Rotate splits counter-clockwise";
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<C-PageDown>";
      action = "<C-w>r";
      options = {
        desc = "Rotate splits clockwise";
        silent = true;
      };
    }
  ];
}
