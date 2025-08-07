require('trim').setup({
  patterns = {},
  ft_blocklist = {},
  trim_on_write = true,
  trim_trailing = true,
  trim_last_line = true,
  trim_first_line = true,
  highlight = false,
  notifications = true,
})


require('trim').setup({
  trim_trailing = true,
  trim_last_line = false,
  trim_first_line = true,
  trim_on_write = true,
  highlight = false,
  ft_blocklist = {"markdown"},      -- markdown ignored
})


-- -- default config
-- local default_config = {
--   ft_blocklist = {},
--   patterns = {},
--   trim_on_write = true,
--   trim_trailing = true,
--   trim_last_line = true,
--   trim_first_line = true,
--   highlight = false,
--   highlight_bg = '#ff0000', -- or 'red'
--   highlight_ctermbg = 'red',
--   notifications = true,
-- }
--
-- require('trim').setup({
--   -- if you want to ignore markdown file.
--   -- you can specify filetypes.
--   ft_blocklist = {"markdown"},
--
--   -- if you want to remove multiple blank lines
--   patterns = {
--     [[%s/\(\n\n\)\n\+/\1/]],   -- replace multiple blank lines with a single line
--   },
--
--   -- if you want to disable trim on write by default
--   trim_on_write = false,
--
--   -- highlight trailing spaces
--   highlight = true
-- })
