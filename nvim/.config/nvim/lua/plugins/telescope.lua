return {
   'nvim-telescope/telescope.nvim', version = '*',
   dependencies = {
	'nvim-lua/plenary.nvim',
	{'nvim-telescope/telescope-fzf-native.nvim', build = 'make'},
   },
   keys = {
      {"<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File"}, 	
      {"<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep"},
      {"<leader>gi", "<cmd>Telescope lsp_implementations<cr>", desc = "Go to implementation"},
      {"<leader>gd", "<cmd>Telescope lsp_definitions<cr>", desc = "Go to definition"},
   },
}
