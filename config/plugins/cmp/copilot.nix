{...}: {
  plugins.copilot-vim = {
    enable = true;
    settings = {
      # Disable Copilot by default.
      enabled = 0;
      # Use the following workspace folders to improve suggestions.
      workspace_folders = [
        "/home/sajenim/.repositories/personal"
      ];
    };
  };

  keymaps = [
    { 
      mode = ["n" "v"];
      key = "<leader>c";
      action = "<Nop>";
      options = {
        desc = "+copilot";
      };
    }
 
    {
      mode = ["n"];
      key = "<leader>ce"; 
      action = "<cmd>Copilot enable<cr>";
      options = {
        silent = true;
        desc = "Enable inline suggestions";
      };
    }
  
    {
      mode = ["n"];
      key = "<leader>cd";
      action = "<cmd>Copilot disable<cr>";
      options = {
        silent = true;
        desc = "Disable inline suggestions";
      };
    }
  ];
}
