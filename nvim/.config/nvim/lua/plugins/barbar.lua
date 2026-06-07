return {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
	animation = true,
	clickable = true,
	exclude_ft = {'javascript'},
	exclude_name = {'package.json'},
	focus_on_close = 'left',
	highlight_inactive_file_icons = false,
	highlight_visible = true,
	icons = {
		buffer_index = false,
		buffer_number = false,
		button = '',
		diagnostics = {
		  [vim.diagnostic.severity.ERROR] = {enabled = true, icon = 'ﬀ'},
		  [vim.diagnostic.severity.WARN] = {enabled = false},
		  [vim.diagnostic.severity.INFO] = {enabled = false},
		  [vim.diagnostic.severity.HINT] = {enabled = true},
		},
		gitsigns = {
		  added = {enabled = true, icon = '+'},
		  changed = {enabled = true, icon = '~'},
		  deleted = {enabled = true, icon = '-'},
		},
		filetype = {
		  custom_colors = false,
		  enabled = true,
		},
		separator = {left = '▎', right = ''},
		separator_at_end = true,
		modified = {button = '●'},
		pinned = {button = '', filename = true},
		preset = 'default',
		alternate = {filetype = {enabled = false}},
		current = {buffer_index = true},
		inactive = {button = '×'},
		visible = {modified = {buffer_number = false}},
	},
	insert_at_end = true,
	maximum_padding = 1,
	minimum_padding = 1,
	maximum_length = 30,
	minimum_length = 0,
	semantic_letters = true,
	sidebar_filetypes = {
		NvimTree = true,
		undotree = {text = 'undotree'},
		['neo-tree'] = {event = 'BufWipeout'},
		Outline = {event = 'BufWinLeave', text = 'symbols-outline'},
	},
	letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',
	no_name_title = nil,
    },
    keys = {
       {"<A-1>", "<cmd>BufferGoto 1<cr>", desc = "Go to Buffer 1"},
       {"<A-2>", "<cmd>BufferGoto 2<cr>", desc = "Go to Buffer 2"},
       {"<A-3>", "<cmd>BufferGoto 3<cr>", desc = "Go to Buffer 3"},
       {"<A-4>", "<cmd>BufferGoto 4<cr>", desc = "Go to Buffer 4"},
       {"<A-5>", "<cmd>BufferGoto 5<cr>", desc = "Go to Buffer 5"},
       {"<A-6>", "<cmd>BufferGoto 6<cr>", desc = "Go to Buffer 6"},
       {"<A-7>", "<cmd>BufferGoto 7<cr>", desc = "Go to Buffer 7"},
       {"<A-8>", "<cmd>BufferGoto 8<cr>", desc = "Go to Buffer 8"},
       {"<A-9>", "<cmd>BufferGoto 9<cr>", desc = "Go to Buffer 9"},
       {"<A-0>", "<cmd>BufferLast<cr>", desc = "Go to last Buffer"},
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
