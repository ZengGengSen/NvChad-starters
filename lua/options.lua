require "nvchad.options"

local o = vim.o

o.relativenumber = true

o.foldmethod = "expr";
o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
o.foldlevel = 99

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
