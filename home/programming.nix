{ config, pkgs, ... }:

let
  sources = import ../nix/sources.nix;
  ghcide = import sources.ghcide-nix { };
  yarn = pkgs.yarn.override { nodejs = pkgs.nodejs-12_x; };
  pypacks = python-packages: with python-packages; [ ipython requests ];
  python-with-packages = pkgs.python37.withPackages pypacks;
in {
  home.packages = with pkgs; [
    # Go
    go

    # Node
    yarn
    nodejs-12_x

    # Haskell
    cabal-install
    cabal2nix
    (haskellPackages.ghcWithPackages (p: with p; [ xmobar ]))
    ghcid
    ghcide.ghcide-ghc865
    haskellPackages.apply-refact
    haskellPackages.brittany
    haskellPackages.hoogle
    hlint
    stack
    stylish-cabal

    # Python
    python-with-packages

    # Rust
    cargo-edit
    cargo-expand
    cargo-outdated
    rustup
  ];

  home.file.".npmrc".text = ''
    prefix = /home/sondre/.npm/
  '';
}
