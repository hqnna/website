{
  inputs = {
    utils.url = "github:numtide/flake-utils/main";
  };

  outputs = { nixpkgs, utils, ... }:
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
