--// Variables
local Players = game:GetService("Players")
local TweenService = game:getService("TweenService")
local player = Players.LocalPlayer
local Character = player.Character or player.CharacterAdded:Wait() or player.CharacterAppearence.Loaded:Wait()


--// Code
local Utility = {}

function Utility:ConvertTime(tm)
    local currentCount = tm or 100

    local hours = 0
    local minutes = 0
    local seconds = 0

    local currentString = ""
    while currentCount >= 3600 do
        hours = hours + 1
        currentCount = currentCount - 3600
    end
    while currentCount >= 60 do
        minutes = minutes + 1
        currentCount = currentCount - 60
    end
    seconds = currentCount

    if hours > 0 then
        currentString = ("%sh %sm %ss"):format(tostring(hours), tostring(minutes), tostring(seconds))
    elseif minutes > 0 then
        currentString = ("%sm %ss"):format(tostring(minutes), tostring(seconds))
    else
        currentString = ("%ss"):format(tostring(seconds))
    end
    return currentString
end
function Utility:ConvertMoney(cash)
	local formatted = cash
    while true do  
        formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
        if (k==0) then
            break
        end
    end
    return formatted
end
function Utility:GetPlayer(playername)
    if not playername or type(playername) ~= "string" then return false end
    local playername = playername:lower()
    for i, v in pairs(Players:GetChildren()) do
        if string.find(string.lower(v.Name), playername) then
            return v
        end
    end
    for i, v in pairs(Players:GetChildren()) do
        if string.find(string.lower(v.DisplayName), playername) then
            return v
        end
    end
    return false
end
function Utility:GetCharacter(plr)
    local plr = plr or player
    local plrchar = player.Character or player.CharacterAdded:Wait() or player.CharacterAppearence.Loaded:Wait()
    return plrchar
end
function Utility:Tween(instance, duration, properties, waituntildone, optionalproperties)
    local waituntildone = waituntildone or false
    local optionalproperties = optionalproperties or {Enum.EasingDirection.Out, Enum.EasingStyle.Linear}
    local Tween = TweenService:Create(instance, TweenInfo.new(duration), properties, unpack(optionalproperties))
    Tween:Play()
    if waituntildone == true then
        Tween.Completed:Wait()
        return true
    end
end
function Utility:Teleport(properties, duration, waituntildone)
    local duration = duration or 0
    local waituntildone = false
    if duration ~= 0 and waituntildone == false then
        waituntildone = true
    end
    Utility:Tween(Character:WaitForChild("HumanoidRootPart"), duration, {CFrame = properties}, waituntildone)
end
function Utility:GetRoot(plr)
    local plr = plr or player
    local Char = Utility:GetCharacter(plr)
    if Char then
        return Char:WaitForChild("HumanoidRootPart")
    end
end
function Utility:GetHumanoid(plr)
    local plr = plr or player
    local Char = Utility:GetCharacter(plr)
    if Char then
        return Char:WaitForChild("Humanoid")
    end    
end
function Utility:MagTeleport(pos, tpspeed, who)
    local tpspeed = tpspeed or 0
    local who = who or Utility:GetRoot()
    local twn = TweenService:Create(who, TweenInfo.new((pos - Utility:GetRoot().Position).Magnitude / tpspeed, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    twn:Play()
    twn.Completed:Wait()
end

--// If you want more utility features dm me on discord and tell me more! -- Hold#4564

return Utility