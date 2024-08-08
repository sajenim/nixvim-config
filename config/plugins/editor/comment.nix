{...}: {
  plugins.comment = {
    enable = true;
    settings = {
      # LHS of toggle mappings in NORMAL mode
      toggler = {
        # Line-comment toggle keymap
        line = "<leader>c<space>";
        # Block-comment toggle keymap
        block = "<leader>c<enter>";
      };
      # LHS of operator-pending mappings in NORMAL and VISUAL mode
      opleader = {
        # Line-comment keymap
        line = "<leader>c<space>";
        # Block-comment keymap
        block = "<leader>c<enter>";
      };
      # LHS of extra mappings
      extra = {
        # Add comment on the line above
        above = "<leader>co";
        # Add comment on the line below
        below = "<leader>ce";
        # Add comment at the end of line
        eol = "<leader>ca";
      };
    };
  };
}
