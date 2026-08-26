{
  description = "motya's nix configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nix-darwin.url = "github:nix-darwin/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";

    helium.url = "github:amaanq/helium-flake";
    helium.inputs.nixpkgs.follows = "nixpkgs";

    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    agenix.url = "github:ryantm/agenix";
  };
  outputs =
    {
      self,
      nix-darwin,
      nixpkgs,
      home-manager,
      helium,
      agenix,
      ...
    }@ inputs:
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
        specialArgs = { inherit inputs; };
        modules = [
          ./hosts/enanan
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.motya = import ./modules/common/home-manager.nix;
          }
          agenix.nixosModules.default
        ];
      };

      nixosConfigurations."kanade" = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };
        modules = [
          ./hosts/kanade
          agenix.nixosModules.default
        ];
      };
    };
}
