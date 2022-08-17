require('base')
require('highlights')
require('maps')

local has = function(x) 
  return vim.fn.has(x) == 1
end


local is_ubuntu = has "Ubuntu"

if is_ubuntu then
  require('linux')
end
