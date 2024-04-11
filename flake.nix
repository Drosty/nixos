{
  description = "NixOS";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-23.11";
    home-manager.url = "github:nix-community/home-manager/release-23.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {self, nixpkgs, home-manager, ...}:
    let
    in {
      nixosConfigurations = {
        chasenixos = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [ ./configuration.nix ];
        };
      };
      homeConfigurations = {
	      ryan = home-manager.lib.homeManagerConfiguration {
          # lib = nixpkgs.lib;
          pkgs = nixpkgs.legacyPackages."x86_64-linux";
          modules = [ ./home.nix ];
	      };
        ryandrost = home-manager.lib.homeManagerConfiguration {
          # lib = nixpkgs.lib;
          pkgs = nixpkgs.legacyPackages."aarch64-darwin";
          modules = [ ./home-darwin.nix ];
        };
      };
    };
  }

