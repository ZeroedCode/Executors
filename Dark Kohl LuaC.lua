getglobal --[[
getglobal     uh theres a bug where the gui doesnt fully load sometimes idk why
getglobal ]]
getglobal repeat wait until game
pushvalue -2
pcall 1 1 0)
getfield -1 IsLoaded
pushvalue -2
pcall 1 1 0)
getglobal -- // Initialise
getglobal if getgenv
pcall 1 1 0 
getfield -1 DarkKohls then return getgenv
pcall 1 1 0 
getfield -1 DarkKohls end
getglobal getgenv
pcall 1 1 0
setfield -2 DarkKohls
setfield -2 MaterialLuaConfig
pushstring Dark Kohls
setfield -2 Title
pushnumber 3
setfield -2 Style
pushnumber 500
setfield -2 SizeX
pushnumber 350
setfield -2 SizeY
pushstring Dark
setfield -2 Theme
getglobal     },
getglobal }
getglobal -- // Services
pushstring game:GetServicePlayers
setfield -2 local Players
pushstring game:GetServiceHttpService
setfield -2 local HttpService
pushstring game:GetServiceTeleportService
setfield -2 local TeleportService
getglobal -- // Vars
setfield -2 local DropdownPlayers
setfield -2 local PlayerConnections
getglobal loadstring(game
getfield -1 HttpGet("https
getfield -1 //raw
getfield -1 githubusercontent
getfield -1 com/Stefanuk12/ROBLOX/master/Games/Kohls%20Admin%20House/DarkKohls/API
getfield -1 lua"))({
pcall 1 1 0 
pushboolean false
setfield -2 Errors
pushstring DarkKohls
setfield -2 ScriptName
getglobal })
getglobal -- // GUI
getglobal loadstring(game
getfield -1, HttpGet("https
getfield -1, //raw
getfield -1 githubusercontent
getfield -1 com/Kinlei/MaterialLua/master/Module
getfield -1 lua"))
pcall 1 1 0
pushvalue -1
setfield -2 local MaterialUI
getglobal MaterialUI
getfield -1 Load(DarkKohls
getfield -1 MaterialLuaConfig)
pushvalue -1
setfield -2 local Material
getglobal HttpService
getfield -1, JSONDecode(game
getfield -1, HttpGet("https
getfield -1, //raw
getfield -1 githubusercontent
getfield -1 com/Stefanuk12/ROBLOX/master/Games/Kohls%20Admin%20House/DarkKohls/GUIData
getfield -1 json"))
pushvalue -1
setfield -2 local GUIConfig
setfield -2 local Inputs
pushstring BlacklistSelectGear
setfield -2 {Name
pushstring BlacklistSelectGear
setfield -2 {Name
pushstring BlacklistSelectPlayer
setfield -2 {Name
pushstring BlacklistSelectPhrase
setfield -2 {Name
pushstring BlacklistSelectPunishmentPhrase
setfield -2 {Name
pushstring CommandsSelectPhrase
setfield -2 {Name
pushstring MiscSelectColour
setfield -2 {Name
pushstring SelectArea
setfield -2 {Name
pushstring PlayerSelectPlayer
setfield -2 {Name
pushstring WhitelistSelectPlayer
setfield -2 {Name
getglobal }
getglobal -- // Get All Player Names
getglobal local function GetAllPlayerNames
pcall 1 1 0 
setfield -2 local PlayerTable
setfield -2 local AllPlayers
pushnumber 1
setfield -2 for i
setfield -2 local v
getglobal v
getfield -1 Name
pushvalue -1
setfield -2 AllPlayers[#AllPlayers + 1]
getglobal     end
getglobal     return AllPlayers
getglobal end
getglobal -- // Update Player Dropdowns
getglobal local function UpdatePlayerDropdowns
pcall 1 1 0 
pushnumber 1
setfield -2 for i
setfield -2 local v
getglobal         v
getfield -1 SetOptions)
pushvalue -2
pcall 1 1 0)
getglobal     end
getglobal     return true
getglobal end
getglobal Players
getfield -1 PlayerAdded
getfield -1 Connect
pushvalue -2
pcall 2 1 0
pushvalue -1
setfield -2 PlayerConnections[1]
getglobal Players
getfield -1 PlayerRemoving
getfield -1 Connect
pushvalue -2
pcall 2 1 0
pushvalue -1
setfield -2 PlayerConnections[2]
getglobal -- // Automatically do some config
getglobal local function SetupTextMenu
pcall 3 1 0
setfield -2 if (not Options) then Options
getglobal Page
getfield -1 Name
pushvalue -1
setfield -2 local Module
setfield -2 local CommandConfig
getglobal     local Config
setfield -2 if (CommandConfig["Type"]
setfield -2 Config
pushstring CommandConfig[Text]
setfield -2 Text
getglobal         }
getglobal     else
setfield -2 Config
pushstring CommandConfig[Name]
setfield -2 Text
setfield -2 Menu
setfield -2 Infomation
pushstring CommandConfig[Description]
setfield -2 local Description
getglobal                     if  then
pushstring CommandConfig[Admin] or CommandConfig[Persons299]
pcall 1 1 0
getglobal Description 
getfield -1  (CommandConfig["Persons299"] and " Person's 299 Admin is required" or " Admin is required
getfield -1 ")
pushvalue -1
setfield -2 Description
getglobal                     end
getglobal     
getglobal                     Material
getfield -1 Banner({
setfield -2 Text
getglobal                     })
getglobal                 end
getglobal             }
getglobal         }
getglobal     end
getglobal     if (not Options
getfield -1 Callback) then
getglobal function(
getfield -1 )
getglobal Options
pushvalue -2
setfield -2 Callback
getglobal             
getglobal         end
getglobal     end
getglobal     if (CommandName
getfield -1 find) then
pushvalue -2
pushstring SelectPlayer
pcall 2 1 0
getglobal Config
setfield -2 Options
getglobal     end
getglobal     for i,v in pairs do
pcall 1 1 0
pushstring Text or i ~
setfield -2 if (i ~
setfield -2 Config[i]
getglobal         end
getglobal     end
getglobal     
pushstring Page[CommandConfig[Type]]Config
setfield -2 local Object
getglobal     if (CommandName
getfield -1 find) then
pushvalue -2
pushstring SelectPlayer
pcall 2 1 0
setfield -2 DropdownPlayers[#DropdownPlayers + 1]
getglobal     end
getglobal     return Object
getglobal end
getglobal -- // Get Input 
pcall 1 1 0
getglobal local function getSetInput
pcall 2 1 0
pushnumber 1
setfield -2 for i
setfield -2 local v
getglobal if (v
setfield -2 Name
getglobal             if  then
pcall 1 1 0
getglobal v
setfield -2 Value
getglobal             end
getglobal             return v
getfield -1 Value
getglobal         end
getglobal     end
getglobal     return false
getglobal end
getglobal -- // Failsafe commands
getglobal local function FailsafeCommand
pcall 1 1 0
pushnumber 1
setfield -2 for i
setfield -2 local v
getglobal getSetInput(v
getfield -1 Name)
pushvalue -1
setfield -2 local Value
getglobal         if  then
pcall 1 1 0
getglobal             return false, v
getfield -1 ErrorReason
getglobal         end
getglobal     end
getglobal     return true
getglobal end
getglobal -- // Page Creation
setfield -2 local Pages
getglobal local function createPage
pcall 1 1 0
getglobal Material
getfield -1 New({Title
pushvalue -1
setfield -2 local newPage
getglobal newPage
setfield -2 Name
setfield -2 Pages[#Pages + 1]
getglobal     return newPage
getglobal end
getglobal -- // Create Pages
pushstring createPageAdmin
setfield -2 local Admin
pushstring createPageBlacklist
setfield -2 local Blacklist
pushstring createPageCommands
setfield -2 local Commands
pushstring createPageMisc
setfield -2 local Misc
pushstring createPagePlayer
setfield -2 local Player
pushstring createPageProtections
setfield -2 local Protections
pushstring createPageServer
setfield -2 local Server
pushstring createPageSound Abuse
setfield -2 local SoundAbuse
pushstring createPageTrolling
setfield -2 local Trolling
pushstring createPageWhitelist
setfield -2 local Whitelist
getglobal -- // Admin
getfield -1  Main Functions Label
getglobal SetupTextMenu
pushstring MainFunctions
pcall 2 1 0
getglobal -- // Admin
getfield -1  Regenerate Admin
pushstring RegenerateAdmin
setfield -2 local RegenerateAdmin
setfield -2 Callback
getglobal KohlsAPI
getfield -1 Admin
getfield -1 RegenerateAdmin
pcall 1 1 0
pushvalue -1
setfield -2 local Command, ErrorReason
getglobal         if  then
pcall 1 1 0
getglobal             Material
getfield -1 Banner({
getglobal "Error
getfield -1,  " 
getfield -1  ErrorReason
pushvalue -1
setfield -2 Text
getglobal             })
getglobal         else
getglobal             Material
getfield -1 Banner({
getglobal "Successfully regenerated the admin pads
getfield -1 "
pushvalue -1
setfield -2 Text
getglobal             })
getglobal         end
getglobal     end
getglobal })
getglobal -- // Admin
getfield -1  Get Admin
pushstring GetAdmin
setfield -2 local GetAdmin
setfield -2 Callback
getglobal KohlsAPI
getfield -1 Admin
getfield -1 GetAdmin
pcall 1 1 0
pushvalue -1
setfield -2 local Command, ErrorReason
getglobal         if  then
pcall 1 1 0
getglobal             Material
getfield -1 Banner({
getglobal "Error
getfield -1,  " 
getfield -1  ErrorReason
pushvalue -1
setfield -2 Text
getglobal             })
getglobal         else
getglobal             Material
getfield -1 Banner({
getglobal "Successfully got admin
getfield -1 "
pushvalue -1
setfield -2 Text
getglobal             })
getglobal         end
getglobal     end
getglobal })
getglobal -- // Admin
getfield -1  Permanant Admin
getglobal coroutine
getfield -1 wrap
pcall 1 1 0 
pushstring PermanantAdmin
setfield -2 local PermanantAdmin
getglobal KohlsAPI
getfield -1 SettingGetSet,
pushstring AdminPermanantAdmin
pcall 1 1 0
pushvalue -1
setfield -2 Enabled
setfield -2 Callback
getglobal             KohlsAPI
getfield -1 SettingGetSet
pushstring AdminPermanantAdmin
pcall 2 1 0
getglobal             if  then
pcall 1 1 0
getglobal                 KohlsAPI
getfield -1 Admin
getfield -1 GetAdmin(KohlsAPI
getfield -1 SelectedPad)
getglobal             end
getglobal         end
getglobal     })
getglobal end)
pcall 1 1 0 
getglobal -- // Blacklist
getfield -1  Blacklist Options  Label
pushvalue -2
pcall 2 1 0
getglobal SetupTextMenu
pushstring BlacklistOptionsGearLabel
pcall 2 1 0
getglobal -- // Blacklist
getfield -1  Blacklist Gear
pushstring BlacklistSelectGear
setfield -2 local BlacklistSelectGear
setfield -2 Callback
getglobal         if ) then
pcall 1 1 0
getglobal             Material
getfield -1 Banner({
getglobal "Please input a number value
getfield -1 "
pushvalue -1
setfield -2 Text
getglobal             })
getglobal             return false
getglobal         end
getglobal     end
getglobal })
getglobal -- // Blacklist
getfield -1  Main Functions  Label
pushvalue -2
pcall 2 1 0
getglobal SetupTextMenu
pushstring MainFunctionsGearLabel
pcall 2 1 0
getglobal -- // Blacklist
getfield -1  Blacklist Gear
pushstring BlacklistGear
setfield -2 local BlacklistGear
setfield -2 Callback
getglobal         -- // Failsafe command
setfield -2 local FailsafeSuccess, FailsafeSuccessErrorReason
getglobal             {
pushstring BlacklistSelectGear
setfield -2 Name
getglobal "Please specify a gear to blacklist
getfield -1 "
pushvalue -1
setfield -2 ErrorReason
getglobal             }
getglobal         })
getglobal         if  then
pcall 1 1 0
getglobal             Material
getfield -1 Banner({
setfield -2 Text
getglobal             })
getglobal             return false, FailsafeSuccessErrorReason
getglobal         end
getglobal         -- // Get the input
pushstring getSetInputBlacklistSelectGear
setfield -2 local SelectedGear
getglobal         -- // Blacklist the gear and failsafing
getglobal KohlsAPI
getfield -1 Blacklist
getfield -1 BlacklistUnblacklistGear
pcall 1 1 0
pushvalue -1
setfield -2 local BlacklistGearSuccess, ErrorReason
getglobal         if  then
pcall 1 1 0
getglobal             Material
getfield -1 Banner({
setfield -2 Text
getglobal             })
getglobal             return false, ErrorReason
getglobal         else
getglobal             Material
getfield -1 Banner({
getglobal "Successfully blacklisted gear
getfield -1 "
pushvalue -1
setfield -2 Text
getglobal             })
getglobal         end
getglobal     end
getglobal })
getglobal -- // Blacklist
getfield -1  Unblacklist Gear
pushstring UnblacklistGear
setfield -2 local UnblacklistGear
setfield -2 Callback
getglobal         -- // Failsafe command
setfield -2 local FailsafeSuccess, FailsafeSuccessErrorReason
getglobal             {
pushstring BlacklistSelectGear
setfield -2 Name
getglobal "Please specify a gear to blacklist
getfield -1 "
pushvalue -1
setfield -2 ErrorReason
getglobal             }
getglobal         })
getglobal         if  then
pcall 1 1 0
getglobal             Material
getfield -1 Banner({
setfield -2 Text
getglobal             })
getglobal             return false, FailsafeSuccessErrorReason
getglobal         end
getglobal         -- // Get the input
pushstring getSetInputBlacklistSelectGear
setfield -2 local SelectedGear
getglobal         -- // Blacklist the gear and failsafing
getglobal KohlsAPI
getfield -1 Blacklist
getfield -1 BlacklistUnblacklistGear
pushboolean true
pcall 2 1 0
pushvalue -1
setfield -2 local BlacklistGearSuccess, ErrorReason
getglobal         if  then
pcall 1 1 0
getglobal             Material
getfield -1 Banner({
setfield -2 Text
getglobal             })
getglobal             return false, ErrorReason
getglobal         else
getglobal             Material
getfield -1 Banner({
getglobal "Successfully unblacklisted gear
getfield -1 "
pushvalue -1
setfield -2 Text
getglobal             })
getglobal         end
getglobal     end
getglobal })
getglobal -- // Blacklist
getfield -1  Alerts Label
getglobal SetupTextMenu
pushstring AlertsLabel
pcall 2 1 0
getglobal -- // Blacklist
getfield -1  Alert Blacklisted Gear Use
pushstring AlertBlacklistGearUse
setfield -2 local AlertBlacklistGearUse
getglobal KohlsAPI
getfield -1 SettingGetSet,
pushstring BlacklistAlertBlacklistGearUse
pcall 1 1 0
pushvalue -1
setfield -2 Enabled
setfield -2 Callback
getglobal         KohlsAPI
getfield -1 SettingGetSet
pushstring BlacklistAlertBlacklistGearUse
pcall 2 1 0
getglobal     end
getglobal })
getglobal -- // Blacklist
getfield -1  Blacklist Options  Label
pushvalue -2
pcall 2 1 0
getglobal SetupTextMenu
pushstring BlacklistOptionsPhraseLabel
pcall 2 1 0
getglobal -- // Blacklist
getfield -1  Select Player
pushstring BlacklistSelectPlayer
setfield -2 local BlacklistSelectPlayer
setfield -2 Callback
getglobal         getSetInput
pushstring BlacklistSelectPlayer
pcall 2 1 0
getglobal     end
getglobal })
getglobal -- // Blacklist
getfield -1  Select Phrase
pushstring BlacklistSelectPhrase
setfield -2 local BlacklistSelectPhrase
setfield -2 Callback
getglobal         getSetInput
pushstring BlacklistSelectPhrase
pcall 2 1 0
getglobal     end
getglobal })
getglobal -- // Blacklist
getfield -1  Select Phrase
pushstring BlacklistSelectPunishmentPhrase
setfield -2 local BlacklistSelectPunishmentPhrase
setfield -2 Callback
getglobal         getSetInput
pushstring BlacklistSelectPunishmentPhrase
pcall 2 1 0
getglobal     end
getglobal })
getglobal -- // Blacklist
getfield -1  Main Functions  Label
pushvalue -2
pcall 2 1 0
getglobal SetupTextMenu
pushstring MainFunctionsPhraseLabel
pcall 2 1 0
getglobal -- // Blacklist
getfield -1  Blacklist Phrase
pushstring BlacklistPhrase
setfield -2 local BlacklistPhrase
setfield -2 Callback
getglobal         -- // Failsafe command
setfield -2 local FailsafeSuccess, FailsafeSuccessErrorReason
getglobal             {
pushstring BlacklistSelectPhrase
setfield -2 Name
getglobal "Please specify a phrase
getfield -1 "
pushvalue -1
setfield -2 ErrorReason
getglobal             },
getglobal             {
pushstring BlacklistSelectPunishmentPhrase
setfield -2 Name
getglobal "Please specify a phrase
getfield -1 "
pushvalue -1
setfield -2 ErrorReason
getglobal             }
getglobal         })
getglobal         if  then
pcall 1 1 0
getglobal             Material
getfield -1 Banner({
setfield -2 Text
getglobal             })
getglobal             return false, FailsafeSuccessErrorReason
getglobal         end
getglobal         -- // Script
getglobal KohlsAPI
getfield -1 Blacklist
getfield -1 BlacklistUnblacklistPhrase, getSetInput, getSetInput)
pushstring getSetInputBlacklistSelectPhrase
pcall 1 1 0
pushvalue -1
setfield -2 local CommandReturn, ErrorReason
getglobal         if  then
pcall 1 1 0
getglobal             Material
getfield -1 Banner({
setfield -2 Text
getglobal             })
getglobal             return false, ErrorReason
getglobal         else
getglobal             Material
getfield -1 Banner({
getglobal "Blacklisted phrase
getfield -1 "
pushvalue -1
setfield -2 Text
getglobal             })
getglobal         end
getglobal     end
getglobal })
getglobal -- // Blacklist
getfield -1  Unblacklist Phrase
pushstring UnblacklistPhrase
setfield -2 local UnblacklistPhrase
setfield -2 Callback
getglobal         -- // Failsafe command
setfield -2 local FailsafeSuccess, FailsafeSuccessErrorReason
getglobal             {
pushstring BlacklistSelectPhrase
setfield -2 Name
getglobal "Please specify a phrase
getfield -1 "
pushvalue -1
setfield -2 ErrorReason
getglobal             }
getglobal         })
getglobal         if  then
pcall 1 1 0
getglobal             Material
getfield -1 Banner({
setfield -2 Text
getglobal             })
getglobal             return false, FailsafeSuccessErrorReason
getglobal         end
getglobal         -- // Script
getglobal KohlsAPI
getfield -1 Blacklist
getfield -1 BlacklistUnblacklistPhrase, getSetInput, getSetInput, true)
pushstring getSetInputBlacklistSelectPhrase
pcall 1 1 0
pushvalue -1
setfield -2 local CommandReturn, ErrorReason
getglobal         if  then
pcall 1 1 0
getglobal             Material
getfield -1 Banner({
setfield -2 Text
getglobal             })
getglobal             return false, ErrorReason
getglobal         else
getglobal             Material
getfield -1 Banner({
getglobal "Unblacklisted phrase
getfield -1 "
pushvalue -1
setfield -2 Text
getglobal             })
getglobal         end
getglobal     end
getglobal })
getglobal -- // Commands
getfield -1  Select Phrase
pushstring CommandsSelectPhrase
setfield -2 local CommandsSelectPhrase
setfield -2 Callback
getglobal         getSetInput
pushstring CommandsSelectPhrase
pcall 2 1 0
getglobal     end
getglobal })
getglobal -- // Commands
getfield -1  Main Functions Label
getglobal SetupTextMenu
pushstring MainFunctionsLabel
pcall 2 1 0
getglobal -- // Commands
getfield -1  Say Phrase
pushstring SayPhrase
setfield -2 local SayPhrase
setfield -2 Callback
getglobal         -- // Failsafe command
setfield -2 local FailsafeSuccess, FailsafeSuccessErrorReason
getglobal             {
pushstring CommandsSelectPhrase
setfield -2 Name
getglobal "Please specify a phrase
getfield -1 "
pushvalue -1
setfield -2 ErrorReason
getglobal             }
getglobal         })
getglobal         if  then
pcall 1 1 0
getglobal             Material
getfield -1 Banner({
setfield -2 Text
getglobal             })
getglobal             return false, FailsafeSuccessErrorReason
getglobal         end
getglobal         -- // Script
getglobal         Players
getfield -1 Chat)
pushvalue -2
pushstring getSetInputCommandsSelectPhrase
pcall 2 1 0
getglobal     end
getglobal })
getglobal -- // Commands
getfield -1  Spam Phrase
pushstring SpamPhrase
setfield -2 local SpamPhrase
setfield -2 Callback
getglobal         -- // Failsafe command
setfield -2 local FailsafeSuccess, FailsafeSuccessErrorReason
getglobal             {
pushstring CommandsSelectPhrase
setfield -2 Name
getglobal "Please specify a phrase
getfield -1 "
pushvalue -1
setfield -2 ErrorReason
getglobal             }
getglobal         })
getglobal         if  then
pcall 1 1 0
getglobal             Material
getfield -1 Banner({
setfield -2 Text
getglobal             })
getglobal             return false, FailsafeSuccessErrorReason
getglobal         end
getglobal         -- // Script
getglobal KohlsAPI
getfield -1 Commands
getfield -1 StopStartSpamPhrase)
pushstring getSetInputCommandsSelectPhrase
pcall 1 1 0
pushvalue -1
setfield -2 local CommandReturn, ErrorReason
getglobal         if  then
pcall 1 1 0
getglobal             Material
getfield -1 Banner({
setfield -2 Text
getglobal             })
getglobal             return false, ErrorReason
getglobal         else
getglobal             Material
getfield -1 Banner({
getglobal "Spamming phrase
getfield -1 "
pushvalue -1
setfield -2 Text
getglobal             })
getglobal         end
getglobal     end
getglobal })
getglobal -- // Commands
getfield -1  Stop Spam Phrase
pushstring StopSpamPhrase
setfield -2 local StopSpamPhrase
setfield -2 Callback
getglobal         -- // Failsafe command
setfield -2 local FailsafeSuccess, FailsafeSuccessErrorReason
getglobal             {
pushstring CommandsSelectPhrase
setfield -2 Name
getglobal "Please specify a phrase
getfield -1 "
pushvalue -1
setfield -2 ErrorReason
getglobal             }
getglobal         })
getglobal         if  then
pcall 1 1 0
getglobal             Material
getfield -1 Banner({
setfield -2 Text
getglobal             })
getglobal             return false, FailsafeSuccessErrorReason
getglobal         end
getglobal         -- // Script
getglobal KohlsAPI
getfield -1 Commands
getfield -1 StopStartSpamPhrase, true)
pushstring getSetInputCommandsSelectPhrase
pcall 1 1 0
pushvalue -1
setfield -2 local CommandReturn, ErrorReason
getglobal         if  then
pcall 1 1 0
getglobal             Material
getfield -1 Banner({
setfield -2 Text
getglobal             })
getglobal             return false, ErrorReason
getglobal         else
getglobal             Material
getfield -1 Banner({
getglobal "Stopped spamming phrase
getfield -1 "
pushvalue -1
setfield -2 Text
getglobal             })
getglobal         end
getglobal     end
getglobal })
getglobal -- // Misc
getfield -1  Painting Label
getglobal SetupTextMenu
pushstring PaintingLabel
pcall 2 1 0
getglobal -- // Misc
getfield -1  Select Colour
pushstring MiscSelectColour
setfield -2 local MiscSelectColour
getglobal Color3
getfield -1 fromRGB,
pushnumber 255
pushnumber 150
pushnumber 150
pcall 3 1 0
pushvalue -1
setfield -2 Default
setfield -2 Callback
getglobal         getSetInput
pushstring MiscSelectColour
pcall 2 1 0
getglobal     end
getglobal })
getglobal -- // Misc
getfield -1  Select Area
pushstring SelectArea
setfield -2 local SelectArea
pushstring {All
pushstring Admin Dividers
pushstring Basic House
pushstring Obby
pushstring Building Bricks
pushstring Obby Box
setfield -2 Options
setfield -2 Callback
getglobal         getSetInput
pushstring SelectArea
pcall 2 1 0
getglobal     end
getglobal })
getglobal -- // Misc
getfield -1  Paint Area
pushstring PaintArea
setfield -2 local PaintArea
setfield -2 Callback
getglobal         -- // Failsafe command
setfield -2 local FailsafeSuccess, FailsafeSuccessErrorReason
getglobal             {
pushstring MiscSelectColour
setfield -2 Name
getglobal "Please specify a colour
getfield -1 "
pushvalue -1
setfield -2 ErrorReason
getglobal             },
getglobal             {
pushstring SelectArea
setfield -2 Name
getglobal "Please specify an area
getfield -1 "
pushvalue -1
setfield -2 ErrorReason
getglobal             }
getglobal         })
getglobal         if  then
pcall 1 1 0
getglobal             Material
getfield -1 Banner({
setfield -2 Text
getglobal             })
getglobal             return false, FailsafeSuccessErrorReason
getglobal         end
getglobal         -- // Script
getglobal KohlsAPI
getfield -1 Misc
getfield -1 PaintArea, getSetInput)
pushstring getSetInputSelectArea
pcall 1 1 0
pushvalue -1
setfield -2 local CommandReturn, ErrorReason
getglobal         if  then
pcall 1 1 0
getglobal             Material
getfield -1 Banner({
setfield -2 Text
getglobal             })
getglobal             return false, ErrorReason
getglobal         else
getglobal             Material
getfield -1 Banner({
getglobal "Painted
getfield -1 "
pushvalue -1
setfield -2 Text
getglobal             })
getglobal         end
getglobal     end
getglobal })
getglobal -- // Misc
getfield -1  Helpful Label
getglobal SetupTextMenu
pushstring HelpfulLabel
pcall 2 1 0
getglobal -- // Misc
getfield -1  Disable Obby Kill
pushstring DisableObbyKill
setfield -2 local DisableObbyKill
setfield -2 Callback
getglobal         if (KohlsAPI
getfield -1 Misc
getfield -1 DisableObbyKill) then
pcall 1 1 0 
getglobal             Material
getfield -1 Banner({
pushstring Done!
setfield -2 Text
getglobal             })
getglobal         else
getglobal             Material
getfield -1 Banner({
getglobal "This has already been done
getfield -1 "
pushvalue -1
setfield -2 Text
getglobal             })
getglobal         end
getglobal     end
getglobal })
getglobal -- // Misc
getfield -1  Fun Label 
getglobal SetupTextMenu
pushstring FunLabel
pcall 2 1 0
getglobal -- // Misc
getfield -1  Start Audio Visualiser
pushstring StartAudioVisualiser
setfield -2 local StartAudioVisualiser
setfield -2 Callback
getglobal         loadstring(game
getfield -1 HttpGet("https
getfield -1 //raw
getfield -1 githubusercontent
getfield -1 com/Stefanuk12/ROBLOX/master/Games/Kohls%20Admin%20House/AudioVisualiser/AudioVisualiser
getfield -1 lua"))
pcall 1 1 0 
getglobal     end
getglobal })
getglobal -- // Misc
getfield -1  Start Music Commands
pushstring StartMusicCommands
setfield -2 local StartMusicCommands
setfield -2 Callback
getglobal         loadstring(game
getfield -1 HttpGet("https
getfield -1 //raw
getfield -1 githubusercontent
getfield -1 com/Stefanuk12/ROBLOX/master/Games/Kohls%20Admin%20House/MusicCommands/Main
getfield -1 lua"))
pcall 1 1 0 
getglobal     end
getglobal })
getglobal -- // Misc
getfield -1  Chat Bypass
getglobal --[[
getglobal loadstring(game
getfield -1 HttpGet("https
getfield -1 //raw
getfield -1 githubusercontent
getfield -1 com/Stefanuk12/ROBLOX/master/Universal/Word%20Bypass/Main
getfield -1 lua"))
pcall 1 1 0 
getglobal getgenv
pcall 1 1 0
pushboolean false
setfield -2 BypassText
pushstring ChatBypass
setfield -2 local ChatBypass
setfield -2 Callback
getglobal getgenv
pcall 1 1 0
setfield -2 BypassText
getglobal     end
getglobal })
getglobal ]]
getglobal -- // Misc
getfield -1  GUI Label
getglobal SetupTextMenu
pushstring GUILabel
pcall 2 1 0
getglobal -- // Misc
getfield -1  Save Settings
pushstring SaveSettings
setfield -2 local SaveSettings
setfield -2 Callback
getglobal KohlsAPI
getfield -1 SaveSettings
pcall 1 1 0
pushvalue -1
setfield -2 local Success, ErrorReason
getglobal         if  then
pcall 1 1 0
getglobal             Material
getfield -1 Banner({
setfield -2 Text
getglobal             })
getglobal             return false, ErrorReason
getglobal         else
getglobal             Material
getfield -1 Banner({
pushstring Saved settings!
setfield -2 Text
getglobal             })
getglobal         end
getglobal     end
getglobal })
getglobal -- // Misc
getfield -1  Export GUI Data
pushstring ExportGUIData
setfield -2 local ExportGUIData
setfield -2 Callback
getglobal         -- // Failsafing
getglobal         if  then
pcall 1 1 0
getglobal "You do not have setclipbaord function
getfield -1 "
pushvalue -1
setfield -2 local FailsafeSuccessErrorReason
getglobal             Material
getfield -1 Banner({
setfield -2 Text
getglobal             })
getglobal             return false, FailsafeSuccessErrorReason
getglobal         end
getglobal         -- // Script
getglobal KohlsAPI
getfield -1 Misc
getfield -1 ExportGUIData
pcall 1 1 0
pushvalue -1
setfield -2 local exportedGUIData
getglobal         setclipboard
pcall 1 1 0
getglobal         Material
getfield -1 Banner({
getglobal "GUI Data copied to clipboard
getfield -1 "
pushvalue -1
setfield -2 Text
getglobal         })
getglobal     end
getglobal })
getglobal -- // Misc
getfield -1  Shutdown GUI
pushstring ShutdownGUI
setfield -2 local ShutdownGUI
setfield -2 Callback
getglobal         KohlsAPI
getfield -1 Shutdown
pcall 1 1 0 
pushnumber 1
setfield -2 for i
setfield -2 local v
getglobal             if  then
pcall 1 1 0
getglobal                 v
getfield -1 Disconnect
pushvalue -2
pcall 1 1 0)
getglobal             end
getglobal         end
getglobal         game
getfield -1 GetService["Dark Kohls"]
pushvalue -2
pushstring CoreGui
pcall 2 1 0
getfield -1 Destroy
pushvalue -2
pcall 1 1 0)
getglobal getgenv
pcall 1 1 0
setfield -2 DarkKohls
getglobal     end
getglobal })
getglobal -- // Misc
getfield -1  Other Label
getglobal SetupTextMenu
pushstring OtherLabel
pcall 2 1 0
getglobal -- // Misc
getfield -1  Rejoin
pushstring Rejoin
setfield -2 local Rejoin
setfield -2 Callback
getglobal         TeleportService
getfield -1 Teleport(game
getfield -1 PlaceId)
getglobal     end
getglobal })
getglobal -- // Player
getfield -1  Select Player
pushstring PlayerSelectPlayer
setfield -2 local PlayerSelectPlayer
setfield -2 Callback
getglobal         getSetInput
pushstring PlayerSelectPlayer
pcall 2 1 0
getglobal     end
getglobal })
getglobal -- // Player
getfield -1  Player Functions Label
getglobal SetupTextMenu
pushstring PlayerFunctionsLabel
pcall 2 1 0
getglobal -- // Player
getfield -1  Get Age
pushstring GetAge
setfield -2 local GetAge
setfield -2 Callback
getglobal         -- // Failsafe command
setfield -2 local FailsafeSuccess, FailsafeSuccessErrorReason
getglobal             {
pushstring PlayerSelectPlayer
setfield -2 Name
getglobal "Please specify a player
getfield -1 "
pushvalue -1
setfield -2 ErrorReason
getglobal             }
getglobal         })
getglobal         if  then
pcall 1 1 0
getglobal             Material
getfield -1 Banner({
setfield -2 Text
getglobal             })
getglobal             return false, FailsafeSuccessErrorReason
getglobal         end
getglobal         -- // Script
pushstring getSetInputPlayerSelectPlayer
setfield -2 local SPlayer
getglobal         Material
getfield -1 Banner({
getglobal SPlayer
getfield -1 Name 
getfield -1  "'s Account Age is
getfield -1  " 
getfield -1  SPlayer
getfield -1 AccountAge 
getfield -1  " days
getfield -1 "
pushvalue -1
setfield -2 Text
getglobal         })
getglobal     end
getglobal })
getglobal -- // Player
getfield -1  Give Client BTools
pushstring GiveClientBtools
setfield -2 local GiveClientBtools
setfield -2 Callback
getglobal         -- // Failsafe command
setfield -2 local FailsafeSuccess, FailsafeSuccessErrorReason
getglobal             {
pushstring PlayerSelectPlayer
setfield -2 Name
getglobal "Please specify a player
getfield -1 "
pushvalue -1
setfield -2 ErrorReason
getglobal             }
getglobal         })
getglobal         if  then
pcall 1 1 0
getglobal             Material
getfield -1 Banner({
setfield -2 Text
getglobal             })
getglobal             return false, FailsafeSuccessErrorReason
getglobal         end
getglobal         -- // Script
pushstring getSetInputPlayerSelectPlayer
setfield -2 local SPlayer
pushnumber 16200402
pushnumber 16969792
pushnumber 73089190
setfield -2 local GearIds
pushnumber 1
setfield -2 for i
setfield -2 local v
getglobal             Players
getfield -1 Chat("
getfield -1 gear " 
getfield -1  SPlayer
getfield -1 Name 
getfield -1  " " 
getfield -1  v)
getglobal         end
getglobal     end
getglobal })
getglobal -- // Protections
getfield -1  Main Functions Label
getglobal SetupTextMenu
pushstring MainFunctionsLabel
pcall 2 1 0
getglobal -- // Protections
getfield -1  Anti Blind
pushstring AntiBlind
setfield -2 local AntiBlind
getglobal KohlsAPI
getfield -1 SettingGetSet,
pushstring ProtectionsAntiBlind
pcall 1 1 0
pushvalue -1
setfield -2 Enabled
setfield -2 Callback
getglobal         KohlsAPI
getfield -1 SettingGetSet
pushstring ProtectionsAntiBlind
pcall 2 1 0
getglobal     end
getglobal })
getglobal -- // Protections
getfield -1  Anti Freeze
pushstring AntiFreeze
setfield -2 local AntiFreeze
getglobal KohlsAPI
getfield -1 SettingGetSet,
pushstring ProtectionsAntiFreeze
pcall 1 1 0
pushvalue -1
setfield -2 Enabled
setfield -2 Callback
getglobal         KohlsAPI
getfield -1 SettingGetSet
pushstring ProtectionsAntiFreeze
pcall 2 1 0
getglobal     end
getglobal })
getglobal -- // Protections
getfield -1  Anti Fling
pushstring AntiFling
setfield -2 local AntiFling
getglobal KohlsAPI
getfield -1 SettingGetSet,
pushstring ProtectionsAntiFling
pcall 1 1 0
pushvalue -1
setfield -2 Enabled
setfield -2 Callback
getglobal         KohlsAPI
getfield -1 SettingGetSet
pushstring ProtectionsAntiFling
pcall 2 1 0
getglobal     end
getglobal })
getglobal -- // Protections
getfield -1  Anti Jail
pushstring AntiJail
setfield -2 local AntiJail
getglobal KohlsAPI
getfield -1 SettingGetSet,
pushstring ProtectionsAntiJail
pcall 1 1 0
pushvalue -1
setfield -2 Enabled
setfield -2 Callback
getglobal         KohlsAPI
getfield -1 SettingGetSet
pushstring ProtectionsAntiJail
pcall 2 1 0
getglobal     end
getglobal })
getglobal -- // Protections
getfield -1  Anti Kill
pushstring AntiKill
setfield -2 local AntiKill
getglobal KohlsAPI
getfield -1 SettingGetSet,
pushstring ProtectionsAntiKill
pcall 1 1 0
pushvalue -1
setfield -2 Enabled
setfield -2 Callback
getglobal         KohlsAPI
getfield -1 SettingGetSet
pushstring ProtectionsAntiKill
pcall 2 1 0
getglobal     end
getglobal })
getglobal -- // Protections
getfield -1  Anti Punish
pushstring AntiPunish
setfield -2 local AntiPunish
getglobal KohlsAPI
getfield -1 SettingGetSet,
pushstring ProtectionsAntiPunish
pcall 1 1 0
pushvalue -1
setfield -2 Enabled
setfield -2 Callback
getglobal         KohlsAPI
getfield -1 SettingGetSet
pushstring ProtectionsAntiPunish
pcall 2 1 0
getglobal     end
getglobal })
getglobal -- // Protections
getfield -1  Anti Message Spam
pushstring AntiMessageSpam
setfield -2 local AntiMessageSpam
getglobal KohlsAPI
getfield -1 SettingGetSet,
pushstring ProtectionsAntiMessageSpam
pcall 1 1 0
pushvalue -1
setfield -2 Enabled
setfield -2 Callback
getglobal         KohlsAPI
getfield -1 SettingGetSet
pushstring ProtectionsAntiMessageSpam
pcall 2 1 0
getglobal     end
getglobal })
getglobal -- // Protections
getfield -1  Anti Skydive
pushstring AntiSkydive
setfield -2 local AntiSkydive
getglobal KohlsAPI
getfield -1 SettingGetSet,
pushstring ProtectionsAntiSkydive
pcall 1 1 0
pushvalue -1
setfield -2 Enabled
setfield -2 Callback
getglobal         KohlsAPI
getfield -1 SettingGetSet
pushstring ProtectionsAntiSkydive
pcall 2 1 0
getglobal     end
getglobal })
getglobal -- // Protections
getfield -1  Anti Sit
pushstring AntiSit
setfield -2 local AntiSit
getglobal KohlsAPI
getfield -1 SettingGetSet,
pushstring ProtectionsAntiSit
pcall 1 1 0
pushvalue -1
setfield -2 Enabled
setfield -2 Callback
getglobal         KohlsAPI
getfield -1 SettingGetSet
pushstring ProtectionsAntiSit
pcall 2 1 0
getglobal     end
getglobal })
getglobal -- // Protections
getfield -1  Anti Logs
pushstring AntiLogs
setfield -2 local AntiLogs
getglobal KohlsAPI
getfield -1 SettingGetSet,
pushstring ProtectionsAntiLogs
pcall 1 1 0
pushvalue -1
setfield -2 Enabled
setfield -2 Callback
getglobal         KohlsAPI
getfield -1 SettingGetSet
pushstring ProtectionsAntiLogs
pcall 2 1 0
getglobal     end
getglobal })
getglobal -- // Server
getfield -1  Alerts Label
getglobal SetupTextMenu
pushstring AlertsLabel
pcall 2 1 0
getglobal -- // Server
getfield -1  Alert C System Use
pushstring AlertCSystemUse
setfield -2 local AlertCSystemUse
getglobal KohlsAPI
getfield -1 SettingGetSet,
pushstring ServerCSystemAlert
pcall 1 1 0
pushvalue -1
setfield -2 Enabled
setfield -2 Callback
getglobal         KohlsAPI
getfield -1 SettingGetSet
pushstring ServerCSystemAlert
pcall 2 1 0
getglobal     end
getglobal })
getglobal -- // Server
getfield -1  Helpful Label
getglobal SetupTextMenu
pushstring HelpfulLabel
pcall 2 1 0
getglobal -- // Server
getfield -1  Create Phantom Baseplate
pushstring CreatePhantomBaseplate
setfield -2 local CreatePhantomBaseplate
setfield -2 Callback
getglobal         KohlsAPI
getfield -1 Server
getfield -1 CreatePhantomBaseplate
pcall 1 1 0 
getglobal         Material
getfield -1 Banner({
getglobal "Made a phantom baseplate
getfield -1 "
pushvalue -1
setfield -2 Text
getglobal         })
getglobal     end
getglobal })
getglobal -- // Server
getfield -1  Remove Phantom Baseplates
pushstring RemovePhantomBaseplates
setfield -2 local RemovePhantomBaseplates
setfield -2 Callback
getglobal         KohlsAPI
getfield -1 Server
getfield -1 RemovePhantomBaseplates
pcall 1 1 0 
getglobal         Material
getfield -1 Banner({
getglobal "Removed Phantom Baseplates
getfield -1 "
pushvalue -1
setfield -2 Text
getglobal         })
getglobal     end
getglobal })
getglobal -- // Server
getfield -1  Abusive Label
getglobal SetupTextMenu
pushstring AbusiveLabel
pcall 2 1 0
getglobal -- // Server
getfield -1  Respawn Explode
pushstring RespawnExplode
setfield -2 local RespawnExplode
setfield -2 Callback
setfield -2 Value
getglobal         pcall(KohlsAPI
getfield -1 Server
getfield -1 RespawnExplode, Value)
getglobal     end
getglobal })
getglobal -- // Server
getfield -1  Epilepsy
pushstring Epilepsy
setfield -2 local Epilepsy
setfield -2 Callback
getglobal         KohlsAPI
getfield -1 SettingGetSet
pushstring ServerEpilepsy
pcall 2 1 0
getglobal     end
getglobal })
getglobal -- // Server
getfield -1  Click Spawn Water
pushstring ClickSpawnWater
setfield -2 local ClickSpawnWater
setfield -2 Callback
getglobal         KohlsAPI
getfield -1 SettingGetSet
pushstring ServerClickSpawnWater
pcall 2 1 0
getglobal     end
getglobal })
getglobal -- // Server
getfield -1  Part Spam
pushstring PartSpam
setfield -2 local PartSpam
setfield -2 Callback
setfield -2 Value
getglobal         pcall(KohlsAPI
getfield -1 Commands
getfield -1 StopStartSpamPhrase, "
getfield -1 part/10/10/10", Value)
getglobal     end
getglobal })
getglobal -- // Server
getfield -1  Move Baseplate
pushstring MoveBaseplate
setfield -2 local MoveBaseplate
setfield -2 Callback
getglobal KohlsAPI
getfield -1 Server
getfield -1 MoveBaseplate
pcall 1 1 0
pushvalue -1
setfield -2 local CommandSuccess, ErrorReason
getglobal         if  then
pcall 1 1 0
getglobal             Material
getfield -1 Banner({
setfield -2 Text
getglobal             })
getglobal             return false, ErrorReason
getglobal         else
getglobal             Material
getfield -1 Banner({
getglobal "Put you in the position to move the baseplate, you may move it by tping or skydiving
getfield -1 "
pushvalue -1
setfield -2 Text
getglobal             })
getglobal         end
getglobal     end
getglobal })
getglobal -- // Server
getfield -1  Crash Server
pushstring CrashServer
setfield -2 local CrashServer
setfield -2 Callback
getglobal KohlsAPI
getfield -1 Server
getfield -1 CrashServer
pcall 1 1 0
pushvalue -1
setfield -2 local CommandSuccess, ErrorReason
getglobal         if  then
pcall 1 1 0
getglobal             Material
getfield -1 Banner({
setfield -2 Text
getglobal             })
getglobal             return false, ErrorReason
getglobal         else
getglobal             Material
getfield -1 Banner({
getglobal "Crashed server
getfield -1 "
pushvalue -1
setfield -2 Text
getglobal             })
getglobal         end
getglobal     end
getglobal })
getglobal -- // Sound Abuse
getfield -1  Main Functions Label
getglobal SetupTextMenu
pushstring MainFunctionsLabel
pcall 2 1 0
getglobal -- // Sound Abuse
getfield -1  Ear Rape
pushstring EarRape
setfield -2 local EarRape
setfield -2 Callback
getglobal         KohlsAPI
getfield -1 SettingGetSet
pushstring SoundAbuseEarRape
pcall 2 1 0
getglobal     end
getglobal })
getglobal -- // Sound Abuse
getfield -1  Play All Sounds
pushstring PlayAllSounds
setfield -2 local PlayAllSounds
setfield -2 Callback
getglobal         KohlsAPI
getfield -1 SoundAbuse
getfield -1 PlayAllSounds
pcall 1 1 0 
getglobal     end
getglobal })
getglobal -- // Sound Abuse
getfield -1  Play Music
pushstring PlayMusic
setfield -2 local PlayMusic
setfield -2 Callback
getglobal         KohlsAPI
getfield -1 SoundAbuse
getfield -1 PlayMusic
pcall 1 1 0 
getglobal     end
getglobal })
getglobal -- // Sound Abuse
getfield -1  Stop All Sounds
pushstring StopAllSounds
setfield -2 local StopAllSounds
setfield -2 Callback
getglobal         KohlsAPI
getfield -1 SoundAbuse
getfield -1 StopAllSounds
pcall 1 1 0 
getglobal     end
getglobal })
getglobal -- // Sound Abuse
getfield -1  Stop Music
pushstring StopMusic
setfield -2 local StopMusic
setfield -2 Callback
getglobal         KohlsAPI
getfield -1 SoundAbuse
getfield -1 StopMusic
pcall 1 1 0 
getglobal     end
getglobal })
getglobal -- // Trolling
getfield -1  Text Trolling
getglobal SetupTextMenu
pushstring TextTrolling
pcall 2 1 0
getglobal -- // Trolling
getfield -1  Text
pushstring TrollingText
setfield -2 local TrollingText
pushstring hi
setfield -2 Text
getglobal })
getglobal -- // Trolling
getfield -1  X
pushstring TrollingX
setfield -2 local TrollingX
pushstring 45
setfield -2 Text
getglobal })
getglobal -- // Trolling
getfield -1  Y
pushstring TrollingY
setfield -2 local TrollingY
pushstring 90
setfield -2 Text
getglobal })
getglobal -- // Trolling
getfield -1  Duration
pushstring TrollingDuration
setfield -2 local TrollingDuration
pushstring 2
setfield -2 Text
getglobal })
getglobal -- // Trolling
getfield -1  Fill Screen
pushstring TrollingFillScreen
setfield -2 local TrollingFillScreen
getglobal -- // Trolling
getfield -1  Main Functions
getglobal SetupTextMenu
pushstring MainFunctionsLabel
pcall 2 1 0
getglobal -- // Trolling
getfield -1  Start
pushstring TrollingStart
setfield -2 local TrollingStart
setfield -2 Callback
getglobal         -- // Vars
setfield -2 local Text
setfield -2 local X
setfield -2 local Y
setfield -2 local Duration
setfield -2 local FillScreen
getglobal         
getglobal         -- // Handling
getglobal         if  then
pcall 1 1 0
pushstring The input for 'X' is not a number
setfield -2 local ErrorReason
getglobal             Material
getfield -1 Banner({
setfield -2 Text
getglobal             })
getglobal             return false, ErrorReason
getglobal         end
getglobal         if  then
pcall 1 1 0
pushstring The input for 'Y' is not a number
setfield -2 local ErrorReason
getglobal             Material
getfield -1 Banner({
setfield -2 Text
getglobal             })
getglobal             return false, ErrorReason
getglobal         end
getglobal         if  then
pcall 1 1 0
pushstring The input for 'Duration' is not a number
setfield -2 local ErrorReason
getglobal             Material
getfield -1 Banner({
setfield -2 Text
getglobal             })
getglobal             return false, ErrorReason
getglobal         end
getglobal         -- // Start
getglobal         KohlsAPI
getfield -1 Trolling
getfield -1 TextScreenFill
pcall 5 1 0
getglobal     end
getglobal })
getglobal -- // Whitelist
getfield -1  Select Player
pushstring WhitelistSelectPlayer
setfield -2 local WhitelistSelectPlayer
setfield -2 Callback
getglobal         getSetInput
pushstring WhitelistSelectPlayer
pcall 2 1 0
getglobal     end
getglobal })
getglobal -- // Whitelist
getfield -1  Player Functions Label
getglobal SetupTextMenu
pushstring PlayerFunctionsLabel
pcall 2 1 0
getglobal -- // Whitelist
getfield -1  Whitelist Player
pushstring Whitelist
setfield -2 local WhitelistPlayer
setfield -2 Callback
getglobal         -- // Failsafe command
setfield -2 local FailsafeSuccess, FailsafeSuccessErrorReason
getglobal             {
pushstring WhitelistSelectPlayer
setfield -2 Name
getglobal "Please specify a player
getfield -1 "
pushvalue -1
setfield -2 ErrorReason
getglobal             }
getglobal         })
getglobal         if  then
pcall 1 1 0
getglobal             Material
getfield -1 Banner({
setfield -2 Text
getglobal             })
getglobal             return false, FailsafeSuccessErrorReason
getglobal         end
getglobal         -- // Script
getglobal KohlsAPI
getfield -1 Whitelist
getfield -1 WhitelistUnwhitelist)
pushstring getSetInputWhitelistSelectPlayer
pcall 1 1 0
pushvalue -1
setfield -2 local CommandSuccess, ErrorReason
getglobal         if  then
pcall 1 1 0
getglobal             Material
getfield -1 Banner({
setfield -2 Text
getglobal             })
getglobal         else
getglobal             Material
getfield -1 Banner({
getglobal "Whitelisted Player
getfield -1 "
pushvalue -1
setfield -2 Text
getglobal             })
getglobal         end
getglobal     end
getglobal })
getglobal -- // Whitelist
getfield -1  Unwhitelist Player
pushstring Unwhitelist
setfield -2 local Unwhitelist
setfield -2 Callback
getglobal         -- // Failsafe command
setfield -2 local FailsafeSuccess, FailsafeSuccessErrorReason
getglobal             {
pushstring WhitelistSelectPlayer
setfield -2 Name
getglobal "Please specify a player
getfield -1 "
pushvalue -1
setfield -2 ErrorReason
getglobal             }
getglobal         })
getglobal         if  then
pcall 1 1 0
getglobal             Material
getfield -1 Banner({
setfield -2 Text
getglobal             })
getglobal             return false, FailsafeSuccessErrorReason
getglobal         end
getglobal         -- // Script
getglobal KohlsAPI
getfield -1 Whitelist
getfield -1 WhitelistUnwhitelist, true)
pushstring getSetInputWhitelistSelectPlayer
pcall 1 1 0
pushvalue -1
setfield -2 local CommandSuccess, ErrorReason
getglobal         if  then
pcall 1 1 0
getglobal             Material
getfield -1 Banner({
setfield -2 Text
getglobal             })
getglobal         else
getglobal             Material
getfield -1 Banner({
getglobal "Unwhitelisted Player
getfield -1 "
pushvalue -1
setfield -2 Text
getglobal             })
getglobal         end
getglobal     end
getglobal })
