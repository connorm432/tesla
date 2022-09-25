--// Setting start time
local startTime = tick()

--// Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local PathfindingService = game:GetService("PathfindingService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

--// Settings
local Settings = {
    Tween_Speed = 100,
    Pathfinding_Speed = 100,
    Sky_Speed = 100,
    Sky_Height = 500,
    Walk_Speed = 16,
}

local Module = {}

function Module:Tween_Speed(newValue)
    Settings.Tween_Speed = newValue
end
function Module:Pathfinding_Speed(newValue)
    Settings.Pathfinding_Speed = newValue
end
function Module:Sky_Speed(newValue)
    Settings.Sky_Speed = newValue
end
function Module:Sky_Height(newValue)
    Settings.Sky_Height = newValue
end
function Module:Walk_Speed(newValue)
    Settings.Walk_Speed = newValue
end
function Module:Jump()
    character:WaitForChild("Humanoid").Jump = true
end
function Module:Tween_Teleport(Destinition_Vector3, heart)

    local anchoredCharacterDescendants = {}

    for i, v in pairs(character:GetChildren()) do
        pcall(function()
            if v.Anchored == false and v.Name == "HumanoidRootPart" then
                table.insert(anchoredCharacterDescendants, v)
            end
        end)
    end

    local humanoid_root_part = character:WaitForChild("HumanoidRootPart")
    local heart = heart or humanoid_root_part
    local currentPosition = humanoid_root_part.Position

    local cloned = nil

    if heart:FindFirstChildWhichIsA("BodyVelocity") then
        cloned = heart:FindFirstChildWhichIsA("BodyVelocity"):Clone()
        heart:FindFirstChildWhichIsA("BodyVelocity"):Destroy()
    end

    --local ValueChanger = Instance.new("Vector3Value")
    --ValueChanger.Value = currentPosition

    --ValueChanger.Changed:Connect(function()
        --if player:DistanceFromCharacter(ValueChanger.Value) >= .05 then
            --character:SetPrimaryPartCFrame(CFrame.new(ValueChanger.Value))
        --end
    --end)

    local BodyVel = Instance.new("BodyVelocity", heart)
    BodyVel.MaxForce = Vector3.new(9e9, 9e9, 9e9)
    BodyVel.P = 999
    repeat
        local to = (Destinition_Vector3 - heart.Position).Unit * Settings.Tween_Speed
        BodyVel.Velocity = to 
        task.wait()
    until (heart.Position - Destinition_Vector3).Magnitude <= 10
    BodyVel.Velocity = Vector3.new(0, 0, 0)
	wait()
    heart.CFrame = CFrame.new(Destinition_Vector3)
    BodyVel:Destroy()
    if cloned then
        cloned.Parent = heart
    end
    --local nograv = Instance.new("BodyVelocity", player.Character.HumanoidRootPart)
    --nograv.MaxForce = Vector3.new(9e+09, 9e+09, 9e+09)
    --nograv.Velocity = Vector3.new(0, 0, 0)
    --nograv.P = 1250
    --local ograv = workspace.Gravity
    --workspace.Gravity = 0
    --local temporaryTween = TweenService:Create(ValueChanger, TweenInfo.new( (Destinition_Vector3 - currentPosition).Magnitude / Settings.Tween_Speed, Enum.EasingStyle.Linear), {Value = Destinition_Vector3})
    --temporaryTween:Play()
    --temporaryTween.Completed:Wait()

end
function Module:Walk_Teleport(Destinition_Vector3)
    local oldSpeed = character:WaitForChild("Humanoid").WalkSpeed
    character:WaitForChild("Humanoid").WalkSpeed = Settings.Walk_Speed
    character:WaitForChild("Humanoid"):MoveTo(Destinition_Vector3)
    character:WaitForChild("Humanoid").MoveToFinished:Wait()
    character:WaitForChild("Humanoid").WalkSpeed = oldSpeed
end
function Module:Pathfinding_Teleport(Destinition_Vector3, walking, jump, extraHeight, heart)
    local walking = walking or false
    local jump = jump or false
    local extraHeight = extraHeight or 0
    local humanoid_root_part = character:WaitForChild("HumanoidRootPart")
    local heart = heart or humanoid_root_part
    local currentPosition = humanoid_root_part.Position

    local tempPath = PathfindingService:CreatePath()
    tempPath:ComputeAsync(currentPosition, Destinition_Vector3)

    if walking == false then
        local oldSpeed = Settings.Tween_Speed
        Settings.Tween_Speed = Settings.Pathfinding_Speed
    
        if tempPath.Status.Name == "Success" then
            for i, v in ipairs(tempPath:GetWaypoints()) do
                Module:Tween_Teleport(v.Position + Vector3.new(0, 2.5 + extraHeight, 0), heart)
            end
            Settings.Tween_Speed = oldSpeed
            return true
        else
            Settings.Tween_Speed = oldSpeed
            return false
        end
    elseif walking == true then   
        if tempPath.Status.Name == "Success" then
            for i, v in ipairs(tempPath:GetWaypoints()) do
                if v.Action == Enum.PathWaypointAction.Jump and jump then
                    Module:Jump()
                end
                if v.Action == Enum.PathWaypointAction.Walk then
                    Module:Walk_Teleport(v.Position + Vector3.new(0, 2.5 + extraHeight, 0), heart)
                end
                if v.Action == Enum.PathWaypointAction.Custom then
                    Module:Tween_Teleport(v.Position + Vector3.new(0, 2.5 + extraHeight, 0), heart)
                end
            end
            return true
        else
            return false
        end
    end
end
function Module:Sky_Teleport(Destinition_Vector3, heart)

    local humanoid_root_part = character:WaitForChild("HumanoidRootPart")
    local heart = heart or humanoid_root_part
    local currentPosition = humanoid_root_part.Position

    local cloned = nil

    if heart:FindFirstChildWhichIsA("BodyVelocity") then
        cloned = heart:FindFirstChildWhichIsA("BodyVelocity"):Clone()
        heart:FindFirstChildWhichIsA("BodyVelocity"):Destroy()
    end

    heart.CFrame = CFrame.new(currentPosition.X, Settings.Sky_Height, currentPosition.Z)
    local BodyVel = Instance.new("BodyVelocity", heart)
    BodyVel.MaxForce = Vector3.new(9e9, 9e9, 9e9)
    BodyVel.P = 1001
    repeat
        local to = (Vector3.new(Destinition_Vector3.X, Settings.Sky_Height, Destinition_Vector3.Z) - heart.Position).Unit * Settings.Sky_Speed
        BodyVel.Velocity = to 
        task.wait()
    until (humanoid_root_part.Position - Vector3.new(Destinition_Vector3.X, Settings.Sky_Height, Destinition_Vector3.Z)).Magnitude <= 10 or (humanoid_root_part.Position - Vector3.new(Destinition_Vector3.X, Destinition_Vector3.Y, Destinition_Vector3.Z)).Magnitude <= 10
    BodyVel.Velocity = Vector3.new(0, 0, 0)
	wait()
    heart.CFrame = CFrame.new(Destinition_Vector3)
    BodyVel:Destroy()
    if cloned then
        cloned.Parent = heart
    end

end
function Module:Instant_Teleport(Destinition_Vector3, heart)
	task.wait(12)
    local humanoid_root_part = character:WaitForChild("HumanoidRootPart")
    local heart = heart or humanoid_root_part

    heart.CFrame = CFrame.new(Destinition_Vector3)
		task.wait(10)

end

local loadTime = tick() - startTime

warn("Teleportation library loaded successfully in "..tostring(loadTime).." seconds.")

return Module, Settings, loadTime
