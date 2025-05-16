{...}: {
  plugins.dap-ui = {
    enable = true;
  };

  keymaps = [
    {
      mode = ["n"];
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
