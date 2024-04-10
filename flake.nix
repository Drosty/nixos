{
  description = "NixOS";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-23.11";
  };

  outputs = {self, nixpkgs, ...}:
    let
      lib = nixpkgs.lib;
    in {
      nixosConfigurations = {
        chasenixos = lib.nixosSystem {
          system = "x86_64-linux";
          modules = [ ./configuration.nix ];
        };
      };
    };
  }

