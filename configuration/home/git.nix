{ pkgs, ... }:

{
  home.packages = with pkgs; [ gitAndTools.git-ignore ];
  programs.git = {
    enable = true;
    userName = "Sondre Nilsen";
    userEmail = "nilsen.sondre@gmail.com";
    signing = {
      signByDefault = true;
      key = "9CBF84633C7DDB10";
    };

    aliases = {
      s = "status";
      b = "branch -v";
      lg = "log --color --graph --oneline --decorate";
    };

    extraConfig = {
      push = {
        default = "current";
        followTags = "true";
      };
      pull = {
        default = "current";
      };
    };
  };
}