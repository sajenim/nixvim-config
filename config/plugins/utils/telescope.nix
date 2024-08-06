{ ... }:

{
  imports = [
    ./neoclip.nix           # Persistent clipboard.
    ./software-licenses.nix # View common software licenses.
  ];

  plugins.telescope = {
    enable = true;

    # Install some telescope extensions.
    extensions = {
      # Enable native fuzzy finder.
      fzf-native = {
        enable = true;
      };
    };

    # Configure our telescope keymaps.
    keymaps = {
      "<leader>ff" = {
        action = "find_files";
        options = {
          desc = "Find project files";
        };
      };
      "<leader>fb" = {
        action = "buffers";
        options = {
          desc = "Find open buffers";
        };
      };
      "<leader>/" = {
        action = "live_grep";
        options = {
          desc = "Grep (root dir)";
        };
      };
      "<leader>:" = {
        action = "command_history";
        options = {
          desc = "Command History";
        };
      };
      "<leader>p" = {
        action = "neoclip";
        options.desc = "Persistent Clipboard";
      };
      "<leader>sc" = {
        action = "commands";
        options = {
          desc = "Search Commands";
        };
      };
      "<leader>sl" = {
        action = "software-licenses find";
        options = {
          desc = "Search Software Licenses";
        };
      };
    };
  };
}

