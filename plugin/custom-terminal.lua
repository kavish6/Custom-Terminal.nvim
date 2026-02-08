if _G.CUSTOM_TERM_LOADED then
	return
end
vim.api.nvim_create_autocmd("CmdlineEnter", {
	pattern = { "*" },
	callback = function()
		vim.notify("Terminal opened")
	end,
})

vim.api.nvim_create_autocmd("CmdlineLeave", {
	pattern = { "*" },
	callback = function()
		vim.notify("Terminal closed")
	end,
})
_G.CUSTOM_TERM_LOADED = true
