local Rayfield = loadstring(game:HttpGet("https://sirius.menu/gen2"))()

local window = Rayfield:CreateWindow({
    name = "enuwoo hub",
    subtitle = "NASIL HİLE AMA",
    sidebarLayout = true,
    theme = "amethyst",
})


local dhlock = loadstring(game:HttpGet("https://raw.githubusercontent.com/enuwoo-31/DH-Lua-Lock/e526fda932d30406cec380713bec21245536ae8c/Main.lua"))()
local Chams = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stratxgy/Roblox-Chams-Highlight/refs/heads/main/Highlight.lua"))()



local Aimbottab = window:CreateTab({ name = "Aim" })

local section = Aimbottab:CreateSection({ name = "Aimbot Settings", icon = 93364949241311 })

Aimbottab:CreateToggle({
    name = "Aimbot",
    callback = function(value)
     getgenv().dhlock.enabled = value
    end,
})


Aimbottab:CreateToggle({
    name = "Fov",
    callback = function(value)
     getgenv().dhlock.showfov = value
    end,
})


Aimbottab:CreateToggle({
    name = "Wallcheck",
    callback = function(value)
     getgenv().dhlock.wallcheck = value
    end,
})


Aimbottab:CreateDropdown({
    name = "Aimpart",
    multiSelect = true,
    options = { "Head", "UpperTorso"},
    value = { "Head" },
    callback = function(options)
     getgenv().dhlock.lockpart = options [1]
    end,
})


Aimbottab:CreateSlider({
    name = "Fov Size",
    range = { 0, 600 },
    increment = 10,
    value = 50,
    suffix = "Fov",
    callback = function(value)
     getgenv().dhlock.fov = value
    end,
})


Aimbottab:CreateKeybind({
    name = "Aimbot Keybind",
    callback = function(MB2)
     getgenv().dhlock.keybind = MB2
    end,
})


local Visualtab = window:CreateTab({ name = "Visual" })

local section = Visualtab:CreateSection({ name = "Visual", icon = 93364949241311 })

Visualtab:CreateToggle({
    name = "Chams",
    callback = function(value)
     getgenv().chams.enabled = value
    end,
})
