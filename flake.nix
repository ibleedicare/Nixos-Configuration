{
  description = "Nixos Configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    disko.url = "github:nix-community/disko/latest";
    disko.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, disko, nixpkgs }: {
    nixosConfigurations.vm = {
      modules = [
        ./configuration.nix
	./disko-config.nix
      ];
    };
  };
}
