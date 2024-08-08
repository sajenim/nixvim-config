{...}: {
  config.opts = {
    # General
    number = true; # Display line numbers.
    showmode = false; # Do not show the mode we're editing in.
    swapfile = false; # Disable vim swapfile.
    clipboard = "unnamedplus"; # Use the clipboard for all operations.

    # Tabs & Spaces
    tabstop = 2; # Set the width of a tab character.
    softtabstop = 2; # Set the number of columns for a tab.
    shiftwidth = 2; # Set the number of spaces for each step of (auto)indent.
    expandtab = true; # Convert tabs to spaces.
  };
}
