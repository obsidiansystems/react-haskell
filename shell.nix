with (import <nixpkgs> {}).pkgs;
let modifiedHaskellPackages = haskellPackages.override {
      overrides = self: super: {
        ghcjs-base = haskellPackages.ghcjs-base;
        ghcjs-prim = haskellPackages.ghcjs-prim;
        react-haskell = self.callPackage ./. {};
      };
    };
in modifiedHaskellPackages.react-haskell.env
