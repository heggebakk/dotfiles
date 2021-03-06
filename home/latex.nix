{ pkgs, ... }:

{
  # TODO: Add LaTeX packages
  home.packages = with pkgs; [ zathura texlive.combined.scheme-full pympress ];

  home.file.".latexmkrc".text = ''
    # Use LuaLaTeX
    $lualatex='lualatex --interaction=nonstopmode --synctex=1 %O %S';
    $preview_continuous_mode = 1;
    # BibTeX with LuaLaTeX
    $bibtex_use = 2;
    # Create PDFs with LuaLaTeX
    $pdf_mode = 4;
    # Remove SyncTeX generated stuff
    @generated_exts = (@generated_exts, 'synctex.gz');
    # Automatically open generated PDFs;
    $pdf_previewer = 'zathura';
  '';
}
