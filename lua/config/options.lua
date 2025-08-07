local options = {
    laststatus = 3,
    ruler = false, --disable extra numbering
    showmode = false, --not needed due to lualine
    showcmd = false,
    wrap = true, --toggle bound to leader W
    mouse = "a", --enable mouse
    clipboard = "unnamedplus", --system clipboard integration
    history = 100, --command line history
    swapfile = false, --swap just gets in the way, usually
    backup = false,
    undofile = true, --undos are saved to file
    cursorline = true, --highlight line
    ttyfast = true, --faster scrolling
    smoothscroll = true,
    title = true, --automatic window titlebar

    number = true, --numbering lines
    relativenumber = false, --toggle bound to leader nn
    numberwidth = 4,

    smarttab = true, --indentation stuff
    cindent = true,
    autoindent = false,
    expandtab = true,
    tabstop = 4, --visual width of tab
    shiftwidth = 4,

    foldmethod = "expr",
    foldlevel = 99, --disable folding, lower #s enable
    foldexpr = "nvim_treesitter#foldexpr()",

    termguicolors = true,

    ignorecase = true, --ignore case while searching
    smartcase = true, --but do not ignore if caps are used

    conceallevel = 2, --markdown conceal
    concealcursor = "nc",

    splitkeep = 'screen', --stablizie window open/close
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

-- Infinite undo
vim.opt.undofile = true
vim.opt.undodir  = vim.fn.expand("~/.vim/neovim_undo")

-- Back-ups (feel free to keep the same folder you used before)
vim.opt.backup = true
vim.opt.backupdir = vim.fn.expand("~/.vim/neovim_backups")
vim.opt.writebackup = true


vim.diagnostic.config({
    signs = false,
})
