return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    dependencies = {
      { "nvim-treesitter/nvim-treesitter-textobjects" },
      { 
        "nvim-treesitter/nvim-treesitter-context", 
        opts = { enable = true, mode = "topline" } 
      }
    },
    config = function()
      vim.api.nvim_create_autocmd("FileType", {
        callback = function()
          pcall(vim.treesitter.start)
        end,
      })

      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "markdown" },
        callback = function()
          pcall(function() require("treesitter-context").disable() end)
        end
      })
    end
  }
}

