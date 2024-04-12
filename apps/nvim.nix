{ config, pkgs, ... }
{
  programs.neovim = {
    enabled = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
  };
}
