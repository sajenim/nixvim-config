{...}: {
  plugins.codecompanion = {
    enable = true;

    # Settings configuration
    settings = {
      # Adapter settings for ollama
      adapters = {
        ollama = {
          __raw = ''
            function()
              return require('codecompanion.adapters').extend('ollama', {
                env = {
                  url = "http://127.0.0.1:11434",
                },
                schema = {
                  model = { default = 'deepseek-coder-v2:latest' },
                  num_ctx = { default = 4096, },
                  num_predict = { default = -1, },
                },
              })
            end
          '';
        };
      };

      # General options for CodeCompanion
      opts = {
        log_level = "TRACE";
        send_code = true;
        use_default_actions = true;
        use_default_prompts = true;
      };

      # Display options
      display = {
        action_palette = {
          prompt = "Prompt ";
          provider = "telescope";
          opts = {
            show_default_actions = true;
            show_default_prompt_library = true;
          };
        };
      };

      # strategies configuration
      strategies = {
        agent = {adapter = "ollama";};
        chat = {adapter = "ollama";};
        inline = {adapter = "ollama";};
      };
    };
  };

  # Keymaps for CodeCompanion
  keymaps = [
    {
      mode = ["n" "v"];
      key = "<leader>tc";
      action = "<cmd>CodeCompanionChat<cr>";
      options = {
        silent = true;
        desc = "Toggle CodeCompanion Chat";
      };
    }

    {
      mode = ["n" "v"];
      key = "<leader>ta";
      action = "<cmd>CodeCompanionActions<cr>";
      options = {
        silent = true;
        desc = "Toggle CodeCompanion Actions";
      };
    }
  ];
}
