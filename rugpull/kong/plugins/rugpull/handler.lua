local BasePlugin = require "kong.plugins.base_plugin"
local access = require "kong.plugins.rugpull.access"

local RugpullHandler = BasePlugin:extend()

RugpullHandler.PRIORITY = 2000
RugpullHandler.VERSION = "0.1.0"

function RugpullHandler:new()
    RugpullHandler.super.new(self, "rug_pull")
    
end

function RugpullHandler:access(conf)
    RugpullHandler.super.access(self)
    access.run(conf)
end

return RugpullHandler
