{...}:{
  plugins.snacks = {
    enable = true;

    settings = {
      bufdelete = {
        enabled = true;
      };

      scroll = {
        enabled = true;
      };
    };
  };

  keymaps = [
    {
      mode = ["n"];
      key = "<leader>q";
      action = {
        __raw = "function() require('snacks').bufdelete() end"; 
      };
      options = {
        desc = "Close current buffer";
        silent = true;
      };
    }
    
    {
      mode = ["n"];
      key = "<leader>Q";
      action = {
        __raw = "function() require('snacks').bufdelete.other() end";
      };
      options = {
        desc = "Close other buffers";
        silent = true;
      };
    }
  ];
}
