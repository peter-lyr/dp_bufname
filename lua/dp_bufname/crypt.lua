-- Copyright (c) 2024 liudepei. All Rights Reserved.
-- create at 2024/05/10 23:40:03 星期五

local B = require 'dp_base'

function M.decrypt()
  B.decrypt()
end

function M.encrypt()
  B.encrypt()
end

function M.decrypt_secret()
  B.decrypt_secret()
end

function M.encrypt_secret()
  B.encrypt_secret()
end

require 'which-key'.register {
  ['<leader>b'] = { name = 'bufname', },
  ['<leader>bc'] = { name = 'bufname.crypt', },
  ['<leader>bcd'] = { function() M.decrypt() end, 'bufname.crypt: decrypt', mode = { 'n', 'v', }, silent = true, },
  ['<leader>bce'] = { function() M.encrypt() end, 'bufname.crypt: encrypt', mode = { 'n', 'v', }, silent = true, },
  ['<leader>bc<leader>d'] = { function() M.decrypt_secret() end, 'bufname.crypt: decrypt_secret', mode = { 'n', 'v', }, silent = true, },
  ['<leader>bc<leader>e'] = { function() M.encrypt_secret() end, 'bufname.crypt: encrypt_secret', mode = { 'n', 'v', }, silent = true, },
}
