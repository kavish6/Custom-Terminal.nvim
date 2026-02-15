local log = require("custom-terminal.util.log")
if _G.CUSTOM_TERM_LOADED then
	return
end
vim.api.nvim_create_autocmd("CmdlineEnter", {
	pattern = { "*" },
	callback = function()
		log.notify("Terminal opened")
	end,
})

vim.api.nvim_create_autocmd("CmdlineLeave", {
	pattern = { "*" },
	callback = function()
		log.notify("Terminal closed")
	end,
})
_G.CUSTOM_TERM_LOADED = true
