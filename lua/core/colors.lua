vim.opt.termguicolors = true

function SetColor(color)
    color = color or "onedark"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "normal", {bg = "none"})
    vim.api.nvim_set_hl(0, "normalfloat", {bg = "none"})
    vim.api.nvim_set_hl(0, "colorcolumn", {bg = "none"})
    vim.api.nvim_set_hl(0, "linenr", {bg = "none"})
end

SetColor()

