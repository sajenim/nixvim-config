{ ... }:

{
  plugins.telescope = {
    enable = true;

    keymaps = {
      "<leader>ff" = {
        action = "find_files";
        options.desc = "Find Files";
      };
      "<leader>fb" = {
        action = "buffers";
        options.desc = "Buffers";
      };
    };
  };
}

