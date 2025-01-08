return {
   "nvim-neo-tree/neo-tree.nvim",
   branch = "v3.x",
   dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
   },
   config = function()
      vim.keymap.set('n', '<C-n>', ":Neotree filesystem toggle<CR>", {})
      require("neo-tree").setup({
         filesystem = {
            filtered_items = {
               hide_dotfiles = false,  -- Set this to `false` to show hidden files
            },
         },
      })
   end
}
