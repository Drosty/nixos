{ config, pkgs, ... }:
{

 programs.neovim = {
    enable = true;
    extraLuaConfig = builtins.readfile ./apps/options.lua;

#     extraConfig = builtins.readFile ../nvim_copy/init.vim;
#    plugins = with pkgs.vimPlugins;
#      let
#      in [
#        vim-nix
#        gruvbox-community
#        nvim-tree-lua
#        nvim-web-devicons
#      ];
  }; 
}
