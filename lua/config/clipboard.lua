local function osc52_copy(lines, _)
  local s = table.concat(lines, '\n')
  local base64 = vim.fn.system('base64 | tr -d "\n"', s)
  local osc = string.format('\x1b]52;c;%s\x07', base64)
  if os.getenv('TMUX') then
    osc = string.format('\x1bPtmux;\x1b%s\x1b\\', osc)
  end
  io.stderr:write(osc)
end

local function local_paste()
  return {
    vim.fn.split(vim.fn.getreg('"'), '\n'),
    vim.fn.getregtype('"'),
  }
end

vim.g.clipboard = {
  name = 'ManualOSC52',
  copy = {
    ['+'] = osc52_copy,
    ['*'] = osc52_copy,
  },
  paste = {
    ['+'] = local_paste,
    ['*'] = local_paste,
  },
}

vim.opt.clipboard = 'unnamedplus'
