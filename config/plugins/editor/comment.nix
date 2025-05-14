{...}: {
  plugins.comment = {
    enable = true;

    settings = {
      toggler = {
        line = "<leader>cl<Return>";
        block = "<leader>cb<Return>";
      };

      opleader = {
        line = "<leader>cl";
        block = "<leader>cb";
      };

      extra = {
        above = "<leader>c<Up>";
        below = "<leader>c<Down>";
        eol = "<leader>c<End>";
      };

      mappings = {
        basic = true;
        extra = true;
      };
    };
  };

  keymaps = [
    { # prefix: comment
      mode = ["n" "v"];
      key = "<leader>c";
      action = "<Nop>";
      options = {
        desc = "+comment";
      };
    }
  ];
}
