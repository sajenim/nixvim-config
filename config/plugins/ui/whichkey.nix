{...}: {
  plugins.which-key = {
    enable = true;
    settings = {
      preset = "modern";
    };
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
      key = "<leader>gl";
      action = "<Nop>";
      options = {
        desc = "+list";
      };
    }

    {
      mode = "n";
      key = "<leader>gt";
      action = "<Nop>";
      options = {
        desc = "+toggle";
      };
    }
  ];
}
