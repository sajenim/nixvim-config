{...}: {
  plugins.lazygit = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>g<cr>";
      action = "<cmd>LazyGit<cr>";
      options = {
        desc = "Open LazyGit";
      };
    }

    {
      mode = "n";
      key = "<leader>glr";
      action = "<cmd>lua require(\"telescope\").extensions.lazygit.lazygit()<cr>";
      options = {
        desc = "List repositories";
      };
    }
  ];

  extraConfigLua = ''
    require("telescope").load_extension("lazygit")
  '';
}
