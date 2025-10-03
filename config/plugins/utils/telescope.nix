{...}: {
  plugins.telescope = {
    enable = true;

    # Install some telescope extensions.
    extensions = {
      # Enable native fuzzy finder.
      fzf-native = {
        enable = true;
      };
      # Enable telescope UI select.
      ui-select = {
        enable = true;
      };
    };

    # Configure telescope settings.
    settings = {
      defaults = {
        layout_strategy = "horizontal";
        # Reduce height / width of picker
        layout_config = {
          height = 0.8;
          width = 0.8;
        };
      };
    };
  };
}
