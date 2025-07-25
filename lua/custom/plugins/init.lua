-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'lervag/vimtex',
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = 'zathura'
      vim.g.vimtex_fold_enabled = 1
    end,
  },
  {
    'rebelot/kanagawa.nvim',
    opts = {
      compile = false, -- enable compiling the colorscheme
      undercurl = true, -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false, -- do not set background color
      dimInactive = false, -- dim inactive window `:h hl-NormalNC`
      terminalColors = true, -- define vim.g.terminal_color_{0,17}
      colors = {
        theme = { all = { ui = { bg_gutter = 'none' }, syn = { statement = '#8ba4b0', keyword = '#8ba4b0' } } },
      },
      overrides = function(colors) -- add/modify highlights
        return {}
      end,
      theme = 'wave', -- Load "wave" theme
      background = { -- map the value of 'background' option to a theme
        dark = 'wave', -- try "dragon" !
        light = 'wave',
      },
    },
  },
}
