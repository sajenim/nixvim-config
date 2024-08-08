{...}: {
  imports = [
    ./neoclip.nix # Persistent clipboard.
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
      # File Pickers
      "<leader>ff" = {
        action = "find_files";
        options = {
          desc = "Find project files";
        };
      };
      "<leader>/" = {
        action = "live_grep";
        options = {
          desc = "Grep (root dir)";
        };
      };

      # Vim Pickers
      "<leader>fb" = {
        action = "buffers";
        options = {
          desc = "Find open buffers";
        };
      };
      "<leader>:" = {
        action = "command_history";
        options = {
          desc = "Command History";
        };
      };
      "<leader>sc" = {
        action = "commands";
        options = {
          desc = "Search Commands";
        };
      };

      # Git Pickers
      "<leader>lc" = {
        action = "git_bcommits";
        options = {
          desc = "List buffers commits";
        };
      };
      "<leader>lC" = {
        action = "git_commits";
        options = {
          desc = "List git commits";
        };
      };
      "<leader>lb" = {
        action = "git_branches";
        options = {
          desc = "List git branches";
        };
      };
      "<leader>ld" = {
        action = "git_status";
        options = {
          desc = "List git diff";
        };
      };
      "<leader>ls" = {
        action = "git_stash";
        options = {
          desc = "List git stash";
        };
      };

      # Extensions
      "<leader>p" = {
        action = "neoclip";
        options.desc = "Persistent Clipboard";
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
