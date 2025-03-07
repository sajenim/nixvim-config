{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    gruvbox-material
  ];

  extraConfigLua = ''
    vim.o.termguicolors = true
    vim.g.gruvbox_material_background = 'medium'
    vim.g.gruvbox_material_enable_italic = 1
    vim.cmd.colorscheme('gruvbox-material')
  '';
}
