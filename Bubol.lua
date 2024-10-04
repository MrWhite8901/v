local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Bubol",
   LoadingTitle = "Loading...",
   LoadingSubtitle = "by MrWhite",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

Rayfield:Notify({
   Title = "You executed the script",
   Content = nil,
   Duration = 5,
   Image = 13047715178,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Nice!",
         Callback = function()
         print("The user tapped Nice!")
      end
   },
},
})

local MainTab = Window:CreateTab("Main", 4483362458) -- Title, Image
local MainSection = MainTab:CreateSection("Section Example")

local MainSection = MainTab:CreateSection("For Developers")

local Button = MainTab:CreateButton({
   Name = "Destroy Ui",
   Callback = function()
   Rayfield:Destroy()
   end,
})

local Players = game:GetService("Players")

-- Creating the button
local Button = MainTab:CreateButton({
   Name = "Button Example",
   Callback = function()
      -- The function that takes place when the button is pressed

      -- Access the local player
      local player = Players.LocalPlayer

      -- Function to send a message
      local function sendMessage(message)
         game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
      end

      -- Sending a chat message when the button is pressed
      sendMessage("Hello, button pressed!")
   end,
})

Rayfield:LoadConfiguration()
