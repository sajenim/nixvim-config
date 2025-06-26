{...}:{
  plugins.mini = {
    enable = true;

    # Extend and create a/i textobjects.
    modules.ai = {
      # Number of lines within which textobject is searched
      n_lines = 50;

      # How to search for object
      search_method = "cover_or_next";
    };

    # Go forward/backward with square brackets.
    modules.bracketed = { };

    modules.align = { };
  };
}
