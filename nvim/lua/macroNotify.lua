local M = {}

-- Variables to track macro state
local current_register = nil
local notification_id = nil

-- Setup function to initialize the macro notification system
function M.setup()
	-- Create autocommand group for macro notifications
	vim.api.nvim_create_augroup("MacroNotify", { clear = true })

	-- Set up autocommands for recording state changes
	vim.api.nvim_create_autocmd("RecordingEnter", {
		group = "MacroNotify",
		callback = function()
			current_register = vim.fn.reg_recording()
			notification_id = vim.notify("Recording macro @" .. current_register, vim.log.levels.INFO, {
				title = "Macro Recording",
				icon = "⏺️",
				timeout = false,
			})
		end,
	})

	vim.api.nvim_create_autocmd("RecordingLeave", {
		group = "MacroNotify",
		callback = function()
			vim.notify("Finished recording macro @" .. current_register, vim.log.levels.INFO, {
				title = "Macro Recording",
				icon = "⏹️",
				replace = notification_id,
				timeout = 3000,
			})
			current_register = nil
		end,
	})
end

return M
