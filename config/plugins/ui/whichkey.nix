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
      mode = ["n" "v"];
      key = "<leader>g";
      action = "<Nop>";
      options = {
        desc = "+git";
      };
    }

    {
      mode = ["n"];
      key = "<leader>gl";
      action = "<Nop>";
      options = {
        desc = "+list";
      };
    }

    {
      mode = ["n"];
      key = "<leader>gt";
      action = "<Nop>";
      options = {
        desc = "+toggle";
      };
    }
  ];
}
