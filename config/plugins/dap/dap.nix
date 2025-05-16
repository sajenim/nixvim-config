{...}: {
  plugins.dap = {
    enable = true;
  };

  keymaps = [
    # Prefix: dap
    {
      mode = ["n" "v"];
      key = "<leader>d";
      action = "<NOP>";
      options = {
        silent = true;
        desc = "+dap";
      };
    }


    # Session management:
    {
      mode = ["n" "v"];
      key = "<leader>dc";
      action = "<cmd>DapContinue<cr>";
      options = {
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<leader>dd";
      action = "<cmd>DapDisconnect<cr>";
      options = {
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<leader>dn";
      action = "<cmd>DapNew<cr>";
      options = {
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<leader>dt";
      action = "<cmd>DapTerminate<cr>";
      options = {
        silent = true;
      };
    }


    # Stepping:
    {
      mode = ["n"];
      key = "<leader>dr";
      action = "<cmd>DapRestartFrame<cr>";
      options = {
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<leader>di";
      action = "<cmd>DapStepInto<cr>";
      options = {
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<leader>dO";
      action = "<cmd>DapStepOut<cr>";
      options = {
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<leader>do";
      action = "<cmd>DapStepOver<cr>";
      options = {
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<leader>dp";
      action = "<cmd>DapPause<cr>";
      options = {
        silent = true;
      };
    }


    # Repl:
    {
      mode = ["n"];
      key = "<leader>dE";
      action = "<cmd>DapEval<cr>";
      options = {
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<leader>dR";
      action = "<cmd>DapToggleRepl<cr>";
      options = {
        silent = true;
      };
    }


    # Breakpoints:
    {
      mode = ["n"];
      key = "<leader>dB";
      action = "<cmd>DapClearBreakpoints<cr>";
      options = {
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<leader>db";
      action = "<cmd>DapToggleBreakpoint<cr>";
      options = {
        silent = true;
      };
    }
  ];
}
