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
   config = function()
	require("telescope").setup {
	   extensions = {
              fzf = {
                 fuzzy = true,                    -- false will only do exact matching
                 override_generic_sorter = true,  -- override the generic sorter
                 override_file_sorter = true,     -- override the file sorter
                 case_mode = "smart_case"        -- or "ignore_case" or "respect_case"
                                                  -- the default case_mode is "smart_case"
              }
           }
	}
	require("telescope").load_extension('fzf')
   end
}
