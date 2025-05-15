{...}: {
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
      # Find
      "<leader>ff" = {
        action = "find_files";
        options = {
          desc = "Find project files";
        };
      };
      "<leader>fg" = {
        action = "live_grep";
        options = {
          desc = "Find pattern";
        };
      };
      "<leader>fb" = {
        action = "buffers";
        options = {
          desc = "Find open buffers";
        };
      };
      "<leader>fh" = {
        action = "help_tags";
        options = {
          desc = "Find help tags";
        };
      };
      "<leader>fc" = {
        action = "commands";
        options = {
          desc = "Find commands";
        };
      };

      # Git List
      "<leader>glc" = {
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
