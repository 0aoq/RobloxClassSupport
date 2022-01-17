-- https://github.com/0aoq/RobloxClassSupport
local lib = {}; do
    lib.class = function(props)
        -- create classes that can be called with "Library.CLASS_NAME()"
        if (props.Name == "class") then return; end
        local this = {}; local metatable = { -- allows for constructor class
            -- constructor
            __call = function(_props) props.constructor(_props) end,
            
            -- secure table
            __unm = function() return this; end,
            __newindex = function() return ("SyntaxError: Cannot change a class metatable."); end,
            __tostring = function() return ("SyntaxError: Cannot change a class metatable."); end,
            __metatable = "SyntaxError: Cannot change a class metatable."
        }; lib[props.name] = setmetatable(props, metatable)
    end
end; return lib