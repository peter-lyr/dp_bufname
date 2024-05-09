local M = {}

local sta, B = pcall(require, 'dp_base')

M.source = B.getsource(debug.getinfo(1)['source'])
M.lua = B.getlua(M.source)

if not sta then return print('Dp_base is required!', debug.getinfo(1)['source']) end

if B.check_plugins {
      'folke/which-key.nvim',
    } then
  return
end

function M.decrypt()
  B.decrypt()
end

function M.encrypt()
  B.encrypt()
end

require 'which-key'.register {
  ['<leader>b'] = { name = 'bufname', },
  ['<leader>bc'] = { name = 'bufname.crypt', },
  ['<leader>bcd'] = { function() M.decrypt() end, 'bufname.crypt: decrypt', mode = { 'n', 'v', }, silent = true, },
  ['<leader>bce'] = { function() M.encrypt() end, 'bufname.crypt: encrypt', mode = { 'n', 'v', }, silent = true, },
}

return M