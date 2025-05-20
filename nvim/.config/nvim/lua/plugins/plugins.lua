return {
    -- Lazy itself
    { "folke/lazy.nvim" },

    -- Dracula theme for nvim
    {
    	"Mofiqul/dracula.nvim",
	priority = 1000,
	config = function()
		vim.cmd("colorscheme dracula")
	end,
    },

    -- Autocompletion
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-nvim-lsp" },

    -- LSP Support
    { "neovim/nvim-lspconfig" },

    -- Fuzzy finder
    { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },

    -- Treesitter for syntax
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
        require("nvim-treesitter.configs").setup({
          ensure_installed = {
            "lua", "vim", "bash",
            "typescript", "scala", "groovy",
            "javascript", "css"
          },
          highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
          },
        })
      end,
    },

    -- NvimTree for project files
    {
        "nvim-tree/nvim-tree.lua",
        config = function()
          require("nvim-tree").setup({
		  renderer = {
		    icons = {
		      glyphs = {
			default = "#",
			symlink = "→",
			folder = {
			  default = "[ ]",
			  open = "[+]",
			  empty = "[]",
			  empty_open = "[+]",
			  symlink = "→",
			},
			git = {
			  unstaged = "✗",
			  staged = "✓",
			  unmerged = "U",
			  renamed = "➜",
			  untracked = "?",
			  deleted = "✖",
			  ignored = "◌"
			},
		      },
		    },
		  }
	})
        end,
    }
}

