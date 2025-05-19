{...}: {
  plugins.smart-splits = {
    enable = true;

    settings = {
      multiplexer_integration = "WezTerm";
    };
  };

  keymaps = [
    # moving between splits
    {
      mode = ["n"];
      key = "<C-Left>";
      action = {
        __raw = "require('smart-splits').move_cursor_left";
      };
    }

    {
      mode = ["n"];
      key = "<C-Down>";
      action = {
        __raw = "require('smart-splits').move_cursor_down";
      };
    }

    {
      mode = ["n"];
      key = "<C-Up>";
      action = {
        __raw = "require('smart-splits').move_cursor_up";
      };
    }

    {
      mode = ["n"];
      key = "<C-Right>";
      action = {
        __raw = "require('smart-splits').move_cursor_right";
      };
    }

    # swapping buffers between windows
    {
      mode = ["n"];
      key = "<C-S-Left>";
      action = {
        __raw = "require('smart-splits').swap_buf_left";
      };
    }

    {
      mode = ["n"];
      key = "<C-S-Down>";
      action = {
        __raw = "require('smart-splits').swap_buf_down";
      };
    }

    {
      mode = ["n"];
      key = "<C-S-Up>";
      action = {
        __raw = "require('smart-splits').swap_buf_up";
      };
    }

    {
      mode = ["n"];
      key = "<C-S-Right>";
      action = {
        __raw = "require('smart-splits').swap_buf_right";
      };
    }

    # resizing splits
    {
      mode = ["n"];
      key = "<C-A-Left>";
      action = {
        __raw = "require('smart-splits').resize_left";
      };
    }

    {
      mode = ["n"];
      key = "<C-A-Down>";
      action = {
        __raw = "require('smart-splits').resize_down";
      };
    }

    {
      mode = ["n"];
      key = "<C-A-Up>";
      action = {
        __raw = "require('smart-splits').resize_up";
      };
    }

    {
      mode = ["n"];
      key = "<C-A-Right>";
      action = {
        __raw = "require('smart-splits').resize_right";
      };
    }
  ];
}
