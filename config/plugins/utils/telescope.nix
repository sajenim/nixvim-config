{...}: {
  imports = [
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
      "<leader>/" = {
        action = "live_grep";
        options = {
          desc = "live_grep";
        };
      };
      "<leader>:" = {
        action = "command_history";
        options = {
          desc = "command_history";
        };
      };

      # Search
      "<leader>sb" = {
        action = "buffers";
        options = {
          desc = "Search open buffers";
        };
      };
      "<leader>sc" = {
        action = "commands";
        options = {
          desc = "Search Commands";
        };
      };
      "<leader>sf" = {
        action = "find_files";
        options = {
          desc = "Search project files";
        };
      };
      "<leader>sl" = {
        action = "software-licenses find";
        options = {
          desc = "Search Software Licenses";
        };
      };

      # List
      "<leader>glc" = {
        action = "git_bcommits";
        options = {
          desc = "List git commits";
        };
      };
      "<leader>glC" = {
        action = "git_commits";
        options = {
          desc = "List git commits";
        };
      };
      "<leader>glb" = {
        action = "git_branches";
        options = {
          desc = "List git branches";
        };
      };
      "<leader>gld" = {
        action = "git_status";
        options = {
          desc = "List git diff";
        };
      };
      "<leader>gls" = {
        action = "git_stash";
        options = {
          desc = "List git stash";
        };
      };
    };
  };
}
