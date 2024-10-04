function ColorMyPencils(color)
	-- color = color or "rose-pine"
	color = color or "oggu"

	vim.cmd.colorscheme(color)
end

ColorMyPencils()
