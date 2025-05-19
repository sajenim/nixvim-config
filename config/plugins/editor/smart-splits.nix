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
      key = "<A-Left>";
      action = {
        __raw = "require('smart-splits').move_cursor_left";
      };
    }

    {
      mode = ["n"];
      key = "<A-Down>";
      action = {
        __raw = "require('smart-splits').move_cursor_down";
      };
    }

    {
      mode = ["n"];
      key = "<A-Up>";
      action = {
        __raw = "require('smart-splits').move_cursor_up";
      };
    }

    {
      mode = ["n"];
      key = "<A-Right>";
      action = {
        __raw = "require('smart-splits').move_cursor_right";
      };
    }

    # swapping buffers between windows
    {
      mode = ["n"];
      key = "<A-S-Left>";
      action = {
        __raw = "require('smart-splits').swap_buf_left";
      };
    }

    {
      mode = ["n"];
      key = "<A-S-Down>";
      action = {
        __raw = "require('smart-splits').swap_buf_down";
      };
    }

    {
      mode = ["n"];
      key = "<A-S-Up>";
      action = {
        __raw = "require('smart-splits').swap_buf_up";
      };
    }

    {
      mode = ["n"];
      key = "<A-S-Right>";
      action = {
        __raw = "require('smart-splits').swap_buf_right";
      };
    }

    # resizing splits
    {
      mode = ["n"];
      key = "<A-C-Left>";
      action = {
        __raw = "require('smart-splits').resize_left";
      };
    }

    {
      mode = ["n"];
      key = "<A-C-Down>";
      action = {
        __raw = "require('smart-splits').resize_down";
      };
    }

    {
      mode = ["n"];
      key = "<A-C-Up>";
      action = {
        __raw = "require('smart-splits').resize_up";
      };
    }

    {
      mode = ["n"];
      key = "<A-C-Right>";
      action = {
        __raw = "require('smart-splits').resize_right";
      };
    }
  ];
}
