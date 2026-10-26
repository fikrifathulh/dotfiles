{
  description = "Personal Tools";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf = { 
      url = "github:NotAShelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nvf, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};

      neovim = (nvf.lib.neovimConfiguration {
        inherit pkgs;
        modules = [ ./nvim.nix ];
      }).neovim;
    in {
      packages.${system} = {
        default = pkgs.hello;
        neovim = neovim;
      };

      devShells.${system}.default = pkgs.mkShell {
        packages = with pkgs; [
          neovim
          gleam
          erlang
          rebar3
        ];
      };
    };
}
