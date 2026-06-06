return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
	{"<leader>f", "<cmd>NvimTreeToggle<cr>", desc = "Toggle File Tree"}	
  },
  config = function()
    require("nvim-tree").setup({
       sort = {
          sorter = "case_sensitive",
       },
       view = {
          width = 30,
       },
       renderer = {
          group_empty = true,
       },
       filters = {
          dotfiles = true,
       },
    })
  end,
}
