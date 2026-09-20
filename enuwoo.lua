local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()


local Window = Rayfield:CreateWindow({
   Name = "enuwoo hub",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "lan bekle amina",
   LoadingSubtitle = "by Enuwoo",
   ShowText = "Rayfield", -- for mobile users to unhide Rayfield, change if you'd like
   Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from emitting warnings when the script has a version mismatch with the interface.

   -- ScriptID = "sid_xxxxxxxxxxxx", -- Your Script ID from developer.sirius.menu — enables analytics, managed keys, and script hosting

   ConfigurationSaving = {
      Enabled = true,
      FolderName = enuwoo, -- Create a custom folder for your hub/game
      FileName = "enuwoo Hub"
   },


   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "enuwoo keys",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "enuwoo key", -- It is recommended to use something unique, as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello", "enuwoo"} -- List of keys that the system will accept, can be RAW file links (pastebin, github, etc.) or simple strings ("hello", "key22")
   }
})


local dhlock = loadstring(game:HttpGet("https://raw.githubusercontent.com/enuwoo-31/DH-Lua-Lock/e526fda932d30406cec380713bec21245536ae8c/Main.lua"))()
local Chams = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stratxgy/Roblox-Chams-Highlight/refs/heads/main/Highlight.lua"))()
local targethud = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stratxgy/Lua-TargetHud/refs/heads/main/targethud.lua"))()



local AimbotTab = Window:CreateTab("aimbot", "crosshair")

local Section = AimbotTab:CreateSection("Aimbot Settings")


local Toggle = AimbotTab:CreateToggle({
   Name = "Aimbot",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
     getgenv().dhlock.enabled = Value
   end,
})


local Toggle = AimbotTab:CreateToggle({
   Name = "Fov",
   CurrentValue = false,
   Flag = "FovToggle",
   Callback = function(Value)
      getgenv().dhlock.showfov = Value
   end,
})


local Toggle = AimbotTab:CreateToggle({
   Name = "Wallcheck",
   CurrentValue = false,
   Flag = "WallCheckToggle",
   Callback = function(Value)
      getgenv().dhlock.wallcheck = Value
   end,
})


local Dropdown = AimbotTab:CreateDropdown({
   Name = "AİmPart",
   Options = {"Head", "UpperTorso"},
   CurrentOption = {"Head"},
   MultipleOptions = false,
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Options)
     getgenv().dhlock.lockpart = Options [1]
   end,
})


local Slider = AimbotTab:CreateSlider({
   Name = "Fov Size",
   Range = {0, 600},
   Increment = 10,
   Suffix = " Fov",
   CurrentValue = 50,
   Flag = "FovSlider",
   Callback = function(Value)
      getgenv().dhlock.fov = Value
   end,
})


local Keybind = AimbotTab:CreateKeybind({
   Name = "Aim bind",
   CurrentKeybind = "MB2",
   HoldToInteract = false,
   Flag = "Keybind1", -- A flag is the identifier for the configuration file. Make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(MB2)
     getgenv().dhlock.keybind = MB2
   end,
})


local VisualTab = Window:CreateTab("Visual", "crosshair")

local Section = VisualTab:CreateSection("chams")


local Toggle = VisualTab:CreateToggle({
   Name = "Chams",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
     getgenv().chams.enabled = Value
   end,
})


local Slider = VisualTab:CreateSlider({
   Name = "Chams Settings ",
   Range = {1, 1},
   Increment = 1,
   Suffix = "Bananas",
   CurrentValue = 1,
   Flag = "Slider1", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
     getgenv().chams.fillTransparency = Value
   end,
})

local Section = VisualTab:CreateSection("targethud")


local Toggle = VisualTab:CreateToggle({
   Name = "Target hud",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
     getgenv().targethud.enabled = Value
   end,
})


Rayfield:Notify({
    Title = "Magnitude",
    Content = "enuwoo hub yükleniyor",
    Duration = 6.5,
    Image = 4483362458,
})
    
