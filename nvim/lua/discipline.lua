local M = {}

function M.cowboy()
	for _, key in ipairs({ "h", "j", "k", "l", "+", "-", "w", "b" }) do
		local count = 0
		local timer = assert(vim.uv.new_timer())
		local map = key
		vim.keymap.set("n", key, function()
			if vim.v.count > 0 then
				count = 0
			end
			if count >= 10 and vim.bo.buftype ~= "nofile" then
				vim.schedule(function()
					vim.notify("Hold it Cowboy!", vim.log.levels.WARN, {
						icon = "🤠",
						id = "cowboy",
						keep = function()
							return count >= 10
						end,
					})
				end)
			else
				count = count + 1
				timer:start(1000, 0, function()
					count = 0
				end)
				return map
			end
		end, { expr = true, silent = true })
	end
end

return M
