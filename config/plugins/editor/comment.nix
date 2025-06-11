{...}: {
  plugins.comment = {
    enable = true;

    settings = {
      toggler = {
        line = "<leader>/n";
      };

      opleader = {
        line = "<leader>/l";
        block = "<leader>/b";
      };

      extra = {
        above = "<leader>/o";
        below = "<leader>/e";
        eol = "<leader>/i";
      };

      mappings = {
        basic = true;
        extra = true;
      };
    };
  };

  keymaps = [
    { 
      mode = ["n" "v"];
      key = "<leader>/";
      action = "<Nop>";
      options = {
        desc = "+comment";
      };
    }
  ];
}
