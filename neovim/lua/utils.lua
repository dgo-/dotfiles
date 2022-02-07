local M = {}

--
M.load_config = function(config_segment)
  local defaults_import = "defaults." .. config_segment
  local user_import     = "custom." .. config_segment

  local defaults    = require(defaults_import)
  local exists, user_config = pcall(require, user_import)
  if not exists then
    return defaults
  end

  return vim.tbl_deep_extend("force", defaults, user_config)
end

return M
