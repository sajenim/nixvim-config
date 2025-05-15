{...}: {
  plugins.neo-tree = {
    enable = true;
    eventHandlers = {
      neo_tree_window_after_open = ''
        function(_)
          vim.cmd("wincmd =")
        end
      '';
    };
    closeIfLastWindow = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Neotree<cr>";
      options.desc = "focus_neotree";
    }
  ];
}
