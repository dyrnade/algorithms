let
  pkgs = import <nixpkgs> { };
in
  {
    algorithms = pkgs.haskellPackages.callPackage ./default.nix { };
  }
