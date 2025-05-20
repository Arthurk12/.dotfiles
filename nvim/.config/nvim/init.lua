require("config.lazy")

-- Número absoluto + relativo
vim.opt.number = true           -- mostra o número da linha atual
vim.opt.relativenumber = true   -- mostra números relativos nas outras linhas

-- Identação
vim.opt.tabstop = 4             -- largura de um tab
vim.opt.shiftwidth = 4          -- indentação ao usar >>
vim.opt.expandtab = true        -- converte tab para espaços
vim.opt.smartindent = true      -- indentação automática

-- Aparência
vim.opt.termguicolors = true
vim.opt.cursorline = true       -- destaca a linha do cursor
vim.opt.signcolumn = "yes"      -- sempre mostra a coluna de sinais

-- Interface
vim.opt.scrolloff = 8           -- mantém 8 linhas visíveis ao redor do cursor
vim.opt.wrap = false            -- não quebra linha

-- Busca
vim.opt.ignorecase = true       -- busca sem case sensitive
vim.opt.smartcase = true        -- case sensitive se houver letra maiúscula
vim.opt.incsearch = true        -- mostra resultados conforme digita

-- Arquivos
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- Sistema
vim.opt.clipboard = "unnamedplus" -- usa o clipboard do sistema

