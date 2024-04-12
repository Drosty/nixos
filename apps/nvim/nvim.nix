{ config, pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    extraLuaConfig = builtins.readFile ./options.lua;

    plugins = with pkgs.vimPlugins;
    let
      in [
      {
        plugin = onedark-nvim;
        type = "lua";
        config = builtins.readFile(./onedark.lua);
      }
      {
        plugin = alpha-nvim;
        type = "lua";
        config = builtins.readFile(./alpha.lua);
      }
      {
        plugin = nvim-treesitter;
        type = "lua";
        config = builtins.readFile(./treesitter.lua);
      }

#    gruvbox-community
#    nvim-tree-lua
#    nvim-web-devicons
      ];
  }; 
}
