{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    userSettings = {
      "editor.fontSize" = 16;
      "editor.fontLigatures" = true;
      "editor.fontFamily" = "PragmataPro Mono Liga";
      "editor.tabSize" = 2;
      "editor.lineNumbers" = "relative";
      "editor.formatOnSave" = true;
      "editor.formatOnPaste" = true;
      "editor.defaultFormatter" = "esbenp.prettier-vscode";
      "editor.suggestSelection" = "first";
      "editor.codeActionsOnSave" = { "source.fixAll" = true; };
      "emmet.showExpandedAbbreviation" = "never";
      "explorer.confirmDelete" = false;
      "javascript.updateImportsOnFileMove.enabled" = "always";
      "workbench.settings.useSplitJSON" = true;
      "workbench.settings.editor" = "json";
      "vim.leader" = "<space>";
      "vim.easymotion" = true;
      "vim.sneak" = true;
      "vim.incsearch" = true;
      "vim.useSystemClipboard" = true;
      "vim.useCtrlKeys" = true;
      "vim.hlsearch" = true;
      "vim.insertModeKeyBindings" = [{
        "before" = [ "j" "k" ];
        "after" = [ "<Esc>" ];
      }];
      "search.showLineNumbers" = true;
      "telemetry.enableTelemetry" = false;
      "typescript.updateImportsOnFileMove.enabled" = "always";
      "update.mode" = "none";
      "workbench.colorTheme" = "Default Light+";
      "workbench.iconTheme" = "vscode-icons";
    };
    extensions = [
      # bbenoist.Nix
      # bungcip.better-toml
      # cmstead.jsrefactor
      # CoenraadS.bracket-pair-colorizer
      # Compulim.compulim-vscode-closetag
      # dbaeumer.vscode-eslint
      # EditorConfig.EditorConfig
      # esbenp.prettier-vscode
      # formulahendry.auto-close-tag
      # formulahendry.auto-rename-tag
      # hex-ci.stylelint-plus
      # jpoissonnier.vscode-styled-components
      # mgmcdermott.vscode-language-babel
      # naumovs.color-highlight
      # silvenon.mdx
      # VisualStudioExptTeam.vscodeintellicode
      # vscode-icons-team.vscode-icons
      # vscodevim.vim
      # Zignd.html-css-class-completion
    ];
  };
}
