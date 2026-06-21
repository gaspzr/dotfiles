return {
  { 'nvim-tree/nvim-web-devicons' },

  { 
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
     -- require("lualine").setup({ options = { theme = "catppuccin" } })
    require("lualine").setup()
    end
  },

  { 
    'catppuccin/nvim', 
    name = "catppuccin", 
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        term_colors = true,
        styles = { functions = {"italic"}, types = {"bold"} },
        color_overrides = {
          mocha = {
            base = "#171717",
            surface2 = "#9A9A9A",
            text = "#F6F6F6"
          }
        },
        integrations = {
          barbar = true, telescope = true, treesitter = true, nvim_lsp = true, cmp = true
        }
      })
      vim.cmd.colorscheme "catppuccin"
    end
  },

  {
    'romgrk/barbar.nvim',
    config = function()
      require("barbar").setup({
        clickable = true,
        tabpages = false,
        insert_at_end = true,
        icons = {
          button = "",
          buffer_index = true,
          filetype = { enabled = true },
        }
      })

      local map = vim.keymap.set
      local opts = { silent = true }

      map("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts)
      map("n", "<A-.>", "<Cmd>BufferNext<CR>", opts)
      map("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
      map("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)
      
      map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
      map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
      map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
      map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
      map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
      map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
      map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
      map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
      map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
      map("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)
      
      map("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)
      map("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)
      map("n", "<A-b>", "<Cmd>BufferCloseAllButCurrent<CR>", opts)
    end
  },

  { 'numToStr/Comment.nvim', config = true },
  { 'kylechui/nvim-surround', version = "*", config = true }
}

