local log = require("custom-terminal.util.log")
_G.CUSTOM_TERM = {
	config = {
		debug = true,
	},
}
if _G.CUSTOM_TERM_LOADED then
	return
end
vim.api.nvim_create_autocmd("CmdlineEnter", {
	pattern = { "*" },
	callback = function()
		log.notify("debug", vim.log.levels.DEBUG, true, "Terminal opened")
	end,
})

vim.api.nvim_create_autocmd("CmdlineLeave", {
	pattern = { "*" },
	callback = function()
		log.notify("Terminal closed")
	end,
})
_G.CUSTOM_TERM_LOADED = true
