-- https://github.com/0aoq/RobloxClassSupport
local Library = require(game:GetService("ReplicatedStorage").Library)

-- create class
Library.class({
    name = "myClass",
    constructor = function()
        print("Fired class constructor!")
    end,
    method = function()
        print("Fired a method!")
    end,
})

-- call class
local myClass = Library.myClass
-- run constructor, method, and then print Class.this
myClass(); myClass.method(); print(-myClass)