-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
		"lervag/vimtex",
		lazy = false, -- we don't want to lazy load VimTeX
		-- tag = "v2.15", -- uncomment to pin to a specific release
		init = function()
			-- VimTeX configuration goes here, e.g.
			vim.g.vimtex_view_method = "zathura"
			vim.g.vimtex_fold_enabled = 1
		end,
	},
	{
		"elixir-tools/elixir-tools.nvim",
		version = "*",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local elixir = require("elixir")
			local elixirls = require("elixir.elixirls")

			elixir.setup({
				nextls = { enable = false },
				elixirls = {
					enable = true,
					settings = elixirls.settings({
						dialyzerEnabled = false,
						enableTestLenses = false,
					}),
					on_attach = function(client, bufnr)
						vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>", { buffer = true, noremap = true })
						vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>", { buffer = true, noremap = true })
						vim.keymap.set("v", "<space>em", ":ElixirExpandMacro<cr>", { buffer = true, noremap = true })
					end,
				},
				projectionist = {
					enable = true,
				},
			})
		end,
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	{
		"neanias/everforest-nvim",
		version = false,
		lazy = false,
		priority = 1000, -- make sure to load this before all the other start plugins
		-- Optional; default configuration will be used if setup isn't called.
		config = function()
			require("everforest").setup({
				transparent_background_level = 2, -- Your config here
				background = "soft",
			})
		end,
	},
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("cyberdream").setup({
				-- Set light or dark variant
				variant = "default", -- use "light" for the light variant. Also accepts "auto" to set dark or light colors based on the current value of `vim.o.background`

				-- Enable transparent background
				transparent = true,

				-- Reduce the overall saturation of colours for a more muted look
				saturation = 1, -- accepts a value between 0 and 1. 0 will be fully desaturated (greyscale) and 1 will be the full color (default)

				-- Enable italics comments
				italic_comments = false,

				-- Replace all fillchars with ' ' for the ultimate clean look
				hide_fillchars = false,

				-- Apply a modern borderless look to pickers like Telescope, Snacks Picker & Fzf-Lua
				borderless_pickers = false,

				-- Set terminal colors used in `:terminal`
				terminal_colors = true,

				-- Improve start up time by caching highlights. Generate cache with :CyberdreamBuildCache and clear with :CyberdreamClearCache
				cache = false,

				-- Override highlight groups with your own colour values
				highlights = {
					-- Highlight groups to override, adding new groups is also possible
					-- See `:h highlight-groups` for a list of highlight groups or run `:hi` to see all groups and their current values

					-- Example:
					Comment = { fg = "#696969", bg = "NONE", italic = true },

					-- More examples can be found in `lua/cyberdream/extensions/*.lua`
				},
			})
		end,
	},
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" }, -- if you use the mini.nvim suite
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' },        -- if you use standalone mini plugins
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {},
	},
	{
		"ribru17/bamboo.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"bjarneo/aether.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"bjarneo/ethereal.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"bjarneo/hackerman.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"bjarneo/vantablack.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"bjarneo/white.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
	},
	{
		"sainnhe/everforest",
		lazy = false,
		priority = 1000,
	},
	{
		"kepano/flexoki-neovim",
		lazy = false,
		priority = 1000,
	},
	{
		"ellisonleao/gruvbox.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"tahayvr/matteblack.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"loctvl842/monokai-pro.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"shaunsingh/nord.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = false,
		priority = 1000,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"OldJobobo/miasma.nvim",
		lazy = false,
		priority = 1000,
		transparent = true,
	},
	{
		"OldJobobo/retro-82.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"omacom-io/lumon.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"xiyaowong/transparent.nvim",
	},
	{
		"chomosuke/typst-preview.nvim",
		lazy = false, -- or ft = 'typst'
		version = "1.*",
		opts = {}, -- lazy.nvim will implicitly calls `setup {}`
	},
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" }, -- if you use the mini.nvim suite
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' },        -- if you use standalone mini plugins
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {},
	},
}
