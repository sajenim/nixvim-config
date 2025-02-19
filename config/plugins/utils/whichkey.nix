{...}: {
  plugins.which-key = {
    enable = true;
  };

  # Prefixes, No operation.
  keymaps = [
    {
      mode = "n";
      key = "<leader>s";
      action = "<Nop>";
      options = {
        desc = "+search";
      };
    }

    {
      mode = "n";
      key = "<leader>h";
      action = "<Nop>";
      options = {
        desc = "+hunks";
      };
    }

    {
      mode = "n";
      key = "<leader>t";
      action = "<Nop>";
      options = {
        desc = "+toggle";
      };
    }

    {
      mode = "n";
      key = "<leader>b";
      action = "<Nop>";
      options = {
        desc = "+buffer";
      };
    }

    {
      mode = ["n" "v"];
      key = "<leader>c";
      action = "<Nop>";
      options = {
        desc = "+comment";
      };
    }

    {
      mode = "n";
      key = "<leader>g";
      action = "<Nop>";
      options = {
        desc = "+git";
      };
    }

    {
      mode = "n";
      key = "<leader>l";
      action = "<Nop>";
      options = {
        desc = "+list";
      };
    }
  ];
}
