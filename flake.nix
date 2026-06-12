{
  description = "motya's nix configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nix-darwin.url = "github:nix-darwin/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";

    helium.url = "github:amaanq/helium-flake";
    helium.inputs.nixpkgs.follows = "nixpkgs";

    # home-manager
    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

  };
  outputs =
    {
      self,
      nix-darwin,
      nixpkgs,
      home-manager,
      helium,
      ...
    }:
    {
      darwinConfigurations."amia" = nix-darwin.lib.darwinSystem {
        modules = [
          ./hosts/amia
          home-manager.darwinModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.motya = import ./modules/common/home-manager.nix;
          }
        ];
      };

      nixosConfigurations."enanan" = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/enanan
          home-manager.nixosModules.home-manager
          {
            environment.systemPackages = [
              helium.packages.x86_64-linux.default
            ];
          }
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.motya = import ./modules/common/home-manager.nix;
          }
        ];
      };

      nixosConfigurations."kanade" = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/kanade
        ];
      };
    };
}
