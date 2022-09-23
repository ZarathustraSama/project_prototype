-- Settings
function love.conf(t)
    -- Window properties
    t.window.width = 918
    t.window.height = 515
    t.window.resizable = false
    
    -- Enables gamma-correct rendering whether is supported.
    t.gammacorrect = true
    
    -- Modules that I don't plan to use
    t.modules.joystick = false
    
    -- Artistic choices
    t.window.title = "Pewpewboomboom"
    t.window.icon = nil
    t.version = "11.4"
    
    t.console = false
end