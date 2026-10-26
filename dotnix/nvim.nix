{ pkgs, ... }: {
  config.vim = {
    viAlias = false;
    vimAlias = false;

    lsp.enable = true;
    treesitter.enable = true;
    telescope.enable = true;

    opts = {
      # Tabs & Identation
      expandtab = true;
      tabstop = 2;
      shiftwidth = 2;
      softtabstop = 2;

      autoindent = true;
      smartindent = true;
    };

    theme = {
      enable = true;
      name = "catppuccin";
      style = "mocha";
    };

    visuals = {
      nvim-web-devicons.enable = true;
    };

    languages = {
      nix.enable = true;
      gleam.enable = true;
      java.enable = true;
    };
  };
}
