{pkgs, ...}: {
  plugins.conform-nvim = {
    enable = true;

    # Run the formatter on file save.
    formatOnSave = {
      lspFallback = true;
      timeoutMs = 500;
    };
    # Receive notificaton when a formatter errors.
    notifyOnError = true;

    # Map of filetype to formatters.
    formattersByFt = {
      c = ["clang-format"];
      nix = ["alejandra"];
    };
  };

  # Install our formatters.
  extraPackages = with pkgs; [
    alejandra
  ];

  extraConfigLua = "require('conform').setup({
    format_on_save = function(bufnr)
      -- Disable autoformat on certain filetypes
      local ignore_filetypes = { 'haskell', }
      if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then
        return
      end
    end,
  })";
}
