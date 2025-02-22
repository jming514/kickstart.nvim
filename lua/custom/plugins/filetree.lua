vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require('neo-tree').setup {
			event_handlers = {
				{
					event = "file_opened",
					handler = function(file_path)
						-- auto close
						require('neo-tree.command').execute({ action = 'close' })
					end
				}
			},
			filesystem = {
				follow_current_file = {
					enabled = true
				}
			}
		}
	end,
}
