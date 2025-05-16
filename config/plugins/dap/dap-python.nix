{ ... }: {
  plugins.dap-python = {
    enable = true;
  };

  keymaps = [
    {
      mode = ["n" "v"];
      key = "<leader>dP";
      action = "<NOP>";
      options = {
        silent = true;
        desc = "+python";
      };
    }

    {
      mode = ["n"];
      key = "<leader>dPm";
      action = {
        __raw = "require('dap-python').test_method";
      };
      options = {
        silent = true;
        desc = "Test method";
      };
    }

    {
      mode = ["n"];
      key = "<leader>dPc";
      action = {
        __raw = "require('dap-python').test_class";
      };
      options = {
        silent = true;
        desc = "Test Class";
      };
    }

    {
      mode = ["v"];
      key = "<leader>dPs";
      action = {
        __raw = "require('dap-python').debug_selection";
      };
      options = {
        silent = true;
        desc = "Debug selection";
      };
    }
  ];
}
