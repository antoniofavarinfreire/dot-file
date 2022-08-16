local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

--Incremente/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

--Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

--New tab
keymap.set('n', '<C-n>', ':tabedit<Return>', { silent = true })

--Split window
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

--Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 's<left>', '<C-w>h')
keymap.set('', 's<up>', '<C-w>k')
keymap.set('', 's<down>', '<C-w>j')
keymap.set('', 's<right>', '<c-w>l')

--Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><righ>','<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')
