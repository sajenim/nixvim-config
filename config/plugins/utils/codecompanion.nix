{...}: {
  plugins.codecompanion = {
    enable = true;

    settings = {
      adapters = {
        ollama = {
          __raw = ''
            function()
              return require('codecompanion.adapters').extend('ollama', {
                env = {
                  url = "http://127.0.0.1:11434",
                },
                schema = {
                  model = {
                    default = 'deepseek-coder-v2:latest',
                  },
                  num_ctx = {
                    default = 4096,
                  },
                  num_predict = {
                    default = -1,
                  },
                },
              })
            end
          '';
        };
      };
      opts = {
        log_level = "TRACE";
        send_code = true;
        use_default_actions = true;
        use_default_prompts = true;
      };
      strategies = {
        agent = {
          adapter = "ollama";
        };
        chat = {
          adapter = "ollama";
        };
        inline = {
          adapter = "ollama";
        };
      };
    };
  };

  keymaps = [
    {
      mode = ["n" "v"];
      key = "<leader>tc";
      action = "<cmd>CodeCompanionChat Toggle<cr>";
      options = {
        silent = true;
        desc = "Toggle CodeCompanion";
      };
    }
  ];
}
