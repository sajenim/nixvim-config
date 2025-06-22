{...}:{
  plugins.mini = {
    enable = true;

    # Extend and create a/i textobjects.
    modules.ai = {
      # Module mappings.
      mappings = {
        # Main textobject prefixes
        around = "a";
        inside = "i";

        # Next/last variants
        around_next = "an";
        inside_next = "in";
        around_last = "al";
        inside_last = "il";

        # Move cursor to corresponding edge of `a` textobject
        goto_left = "g[";
        goto_right = "g]";
      };

      # Number of lines within which textobject is searched
      n_lines = 50;

      # How to search for object
      search_method = "cover_or_next";
    };
  };
}
