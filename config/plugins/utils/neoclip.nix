{ pkgs, ... }:

{
  extraPlugins = [(pkgs.vimUtils.buildVimPlugin {
    name = "neoclip";
    src = pkgs.fetchFromGitHub {
      owner = "AckslD";
      repo = "nvim-neoclip.lua";
      rev = "709c97f";
      hash = "sha256-8ZPmxVM4dzjJxAYUHRMCiAQBxZEGHtsgSCNlCZBRBWo=";
    };
  })];

  extraConfigLua = "require('neoclip').setup({
    default_register = {'\"', '+'}
  })";
}

