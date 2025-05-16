{...}: {
  plugins.dap-ui = {
    enable = true;
  };

  keymaps = [
    {
      key = "<leader>du";
      action = {
        __raw = "require('dapui').toggle";
      };
      options = {
        silent = true;
        desc = "Toggle UI";
      };
    }
  ];
}
