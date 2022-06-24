-- Para Salvar com 'Ctrl + S' nos modos: Normal, Inserção e Visual
-- Precisa adicionar a linha: stty -ixon , ao seu ~/.bashrc
vim.cmd([[ nnoremap <C-s> :w<CR> ]])
vim.cmd([[ inoremap <C-s> <Esc>:w<CR>l ]])
vim.cmd([[ vnoremap <C-s> <Esc>:w<CR> ]])

-- Selecionar tudo com 'Ctrl + A'
vim.cmd([[ map <C-a> ggVG ]])

-- altere para sua(s) linguagens preferidas
vim.cmd([[
	function! AutoCpp()
	  call append(0, '#include <iostream>')
	  call append(1, '')
	  call append(2, 'int main( int argc , char **argv ){')
	  call append(3, "  std::cout << \"Olá, Mundo!\" << '\\n';")
	  call append(4, '  return 0;')
	  call append(5, '}')
	  call cursor(4, 17)
	endfunction
	autocmd BufNewFile *.cpp :call AutoCpp()
]])
