{ config, pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    extraLuaConfig = builtins.readFile ./options.lua;

    plugins = with pkgs.vimPlugins;
    let
      in [
      {
        plugin = alpha-nvim;
        type = "lua";
        config = builtins.readFile(./alpha.lua);
      }
      {
        plugin = onedark-nvim;
        type = "lua";
        config = builtins.readFile(./onedark.lua);
      }
#    vim-nix
#    gruvbox-community
#    nvim-tree-lua
#    nvim-web-devicons
      ];
  }; 
}
