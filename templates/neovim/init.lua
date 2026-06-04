-- An example subset of your init.lua

local function source_matugen()
  local matugen_path = os.getenv("HOME") .. "/.config/nvim/colors.lua"  -- dofile doesn't expand $HOME or ~
  local file, err = io.open(matugen_path, "r")
  if err ~= nil then
    vim.cmd('colorscheme base16-catppuccin-mocha')
    vim.print("A matugen style file was not found, but that's okay! The colorscheme will dynamically change if matugen runs!")
  else
    dofile(matugen_path)
    io.close(file)
  end
end

-- Main entrypoint on matugen reloads
local function auxiliary_function()
  source_matugen() 
  local matugen_path = os.getenv("HOME") .. "/.config/nvim/colors.lua"  -- dofile doesn't expand $HOME or ~
  dofile(os.getenv("HOME") .. '/.config/nvim/lua/config/lualine.lua') -- path of your lualine setup
  vim.api.nvim_set_hl(0, "Comment", { italic = true })
end

-- Register an autocmd to listen for matugen updates
vim.api.nvim_create_autocmd("Signal", {
  pattern = "SIGUSR1",
  callback = auxiliary_function,
})

-- Additionally call this function once on startup to query for matugen's theme
auxiliary_function()
