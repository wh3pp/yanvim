local M = {}

local function process_plugin(plugin)
  if plugin.spec then MiniDeps.add(plugin.spec) end

  local load_later = plugin.load_later
  if load_later == nil then load_later = true end

  local schedule = load_later and MiniDeps.later or MiniDeps.now

  if plugin.config then schedule(function() plugin.config(plugin.opts or {}) end) end
end

function M.setup(plugins)
  plugins = plugins or {}

  for _, group in pairs(plugins) do
    if type(group) == 'table' then
      for _, plugin in pairs(group) do
        process_plugin(plugin)
      end
    end
  end
end

return M
