{ pkgs, lib, ... }:

with lib;
with import ../../lib;

{
  programs.fish = {
    enable = true;
    shellInit = ''
      # TODO: Create better greeting
      set fish_greeting
    '';
    interactiveShellInit = ''
      source (jump shell fish | psub)
    '';
    shellAbbrs = {
      pbcopy = "xclip -selection clipboard";
      pbpaste = "xclip -o -selection clipboard";
      nrs = "sudo nixos-rebuild switch";
      nrt = "sudo nixos-rebuild test";
      nrn = ''nix repl "<nixpkgs>"'';
      serve = "nix run nixpkgs.caddy -c caddy -host 0.0.0.0 -port 8000 browse";
    };
  };

  home.activation.fish = execute ''
    ln -sf /etc/nixos/home/fish/functions/fish_prompt.fish ~/.config/fish/functions/
  '';
}
