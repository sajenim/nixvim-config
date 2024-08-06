{ pkgs, ... }:

{
  extraPlugins = [(pkgs.vimUtils.buildVimPlugin {
    name = "software-licenses";
    src = pkgs.fetchFromGitHub {
      owner = "chip";
      repo = "telescope-software-licenses.nvim";
      rev = "fb5fc33";
      hash = "sha256-luyCjkZSm1F6qoRpP5hHRAx4632u6JFuX2s7m2s8y60=";
    };
  })];
}

