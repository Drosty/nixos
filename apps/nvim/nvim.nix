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
    #    vim-nix
    #    gruvbox-community
    #    nvim-tree-lua
    #    nvim-web-devicons
      ];
  }; 
}
