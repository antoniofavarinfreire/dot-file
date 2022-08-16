local status, packer = pcall(require, 'packer')
if(not status) then
  print("Packer is not installed")
  return 
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function (use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'onsails/lspkind.nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' --
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
 -- use 'neovim/nvim-lspconfig' --LSP
  use 'akinsho/flutter-tools.nvim' -- Flutter/dart

  --Snippets
  use 'SirVer/ultisnips'
  use 'honza/vim-snippets'
  use 'natebosch/dartlang-snippets'
end) 
