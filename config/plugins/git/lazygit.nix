{...}: {
  plugins.lazygit = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>gL";
      action = "<cmd>LazyGit<cr>";
      options = {
        desc = "Open LazyGit";
      };
    }

    {
      mode = "n";
      key = "<leader>glr";
      action = {
        __raw = "require('telescope').extensions.lazygit.lazygit";
      };
      options = {
        desc = "List repositories";
      };
    }
  ];

  extraConfigLua = ''
    require("telescope").load_extension("lazygit")
  '';
}
