{
  inputs = {
    utils.url = "github:numtide/flake-utils/main";
  };

  outputs = { self, nixpkgs, utils }:
    utils.lib.eachDefaultSystem(system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [(import ./nix/overlay.nix)];
        };
      in {
        devShells.default = pkgs.mkShell {
          nativeBuildInputs = with pkgs; [ zine-ssg ];
        };
      });
}

