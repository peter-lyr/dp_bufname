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

require 'dp_bufname.crypt'

return M
