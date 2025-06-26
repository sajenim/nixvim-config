{ ... }: {
  plugins.copilot-chat = {
    enable = true;

    # Copilot Chat settings.
    settings = {
      # Model to use for Copilot Chat.
      model = "gpt-4.1";
      # Use all buffers for context.
      context = "buffers";
      # Use yanked text for selection.
      selection = "unnamed";
      # Don't highlight the selection.
      highlight_selection = false;
      # Window settings for Copilot Chat.
      window = {
        # Width of the chat window.
        width = 0.3;
      };
    };
  };

  # Keymaps for Copilot Chat.
  keymaps = [
    {
      mode = ["n" "v"];
      key = "<leader>ct";
      action = "<cmd>CopilotChatToggle<cr>";
      options = {
        silent = true;
        desc = "Toggle chat";
      };
    }

    {
      mode = ["n" "v"];
      key = "<leader>cp";
      action = "<cmd>CopilotChatPrompts<cr>";
      options = {
        silent = true;
        desc = "Select prompt";
      };
    }

    {
      mode = ["n"];
      key = "<leader>cm";
      action = "<cmd>CopilotChatModels<cr>";
      options = {
        silent = true;
        desc = "Select model";
      };
    }

    {
      mode = ["n"];
      key = "<leader>ca";
      action = "<cmd>CopilotChatAgents<cr>";
      options = {
        silent = true;
        desc = "Select agent";
      };
    }
  ];
}
