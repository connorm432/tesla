-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICornerOverlayE = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local RoVille = Instance.new("ImageButton")
local UICorner_3 = Instance.new("UICorner")
local Shadovis = Instance.new("ImageButton")
local UICorner_4 = Instance.new("UICorner")
local Rebirth = Instance.new("ImageButton")
local UICorner_5 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local DaHood = Instance.new("ImageButton")
local UICorner_6 = Instance.new("UICorner")
local TextLabel_6 = Instance.new("TextLabel")
local KeyBox = Instance.new("TextBox")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel_7 = Instance.new("TextLabel")
local CoreGui = game:GetService("CoreGui")

--Properties:

ScreenGui.Parent = game:waitForChild("CoreGui") 
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Frame.Position = UDim2.new(0.177461118, 0, 0.326556563, 0)
Frame.Size = UDim2.new(0, 416, 0, 260)
Frame.Active = true
Frame.Draggable = true
UICorner.CornerRadius = UDim.new(0.0500000007, 0)
UICorner.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 61, 61)
TextLabel.Size = UDim2.new(0, 416, 0, 22)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = ""
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000

UICornerOverlayE.Name = "UICornerOverlayE"
UICornerOverlayE.Parent = TextLabel
UICornerOverlayE.BackgroundColor3 = Color3.fromRGB(255, 61, 61)
UICornerOverlayE.BorderSizePixel = 0
UICornerOverlayE.Position = UDim2.new(0, 0, 0.409090906, 0)
UICornerOverlayE.Size = UDim2.new(1, 0, 0.590909064, 0)

UICorner_2.CornerRadius = UDim.new(0.300000012, 0)
UICorner_2.Parent = TextLabel

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.03125, 0, 0.11923077, 0)
ScrollingFrame.Size = UDim2.new(0, 389, 0, 202)
ScrollingFrame.BottomImage = ""
ScrollingFrame.MidImage = ""
ScrollingFrame.TopImage = ""

RoVille.Name = "RoVille"
RoVille.Parent = ScrollingFrame
RoVille.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RoVille.Position = UDim2.new(0.0255754478, 0, 0.0151897948, 0)
RoVille.Size = UDim2.new(0, 84, 0, 84)
RoVille.Image = "http://www.roblox.com/asset/?id=10716392781"

UICorner_3.CornerRadius = UDim.new(0.300000012, 0)
UICorner_3.Parent = RoVille

Shadovis.Name = "Shadovis"
Shadovis.Parent = ScrollingFrame
Shadovis.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Shadovis.Position = UDim2.new(0.260869563, 0, 0.013266718, 0)
Shadovis.Size = UDim2.new(0, 84, 0, 84)
Shadovis.Image = "http://www.roblox.com/asset/?id=10878076711"

UICorner_4.CornerRadius = UDim.new(0.300000012, 0)
UICorner_4.Parent = Shadovis

Rebirth.Name = "Rebirth"
Rebirth.Parent = ScrollingFrame
Rebirth.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Rebirth.Position = UDim2.new(0.497766823, 0, 0.0145867933, 0)
Rebirth.Size = UDim2.new(0, 83, 0, 84)
Rebirth.Image = "http://www.roblox.com/asset/?id=10738401825"

UICorner_5.CornerRadius = UDim.new(0.300000012, 0)
UICorner_5.Parent = Rebirth

TextLabel_2.Parent = ScrollingFrame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.0366262123, 0, 0.190384611, 0)
TextLabel_2.Size = UDim2.new(0, 75, 0, 13)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "RoVille"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 14.000

TextLabel_3.Parent = ScrollingFrame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.270633519, 0, 0.186538458, 0)
TextLabel_3.Size = UDim2.new(0, 75, 0, 13)
TextLabel_3.Font = Enum.Font.SourceSansBold
TextLabel_3.Text = "Shadovis"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 14.000

TextLabel_4.Parent = ScrollingFrame
TextLabel_4.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.506544113, 0, 0.185544431, 0)
TextLabel_4.Size = UDim2.new(0, 75, 0, 15)
TextLabel_4.Font = Enum.Font.SourceSansBold
TextLabel_4.Text = "Rebrith"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 14.000

TextLabel_5.Parent = ScrollingFrame
TextLabel_5.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0.506544173, 0, 0.215384603, 0)
TextLabel_5.Size = UDim2.new(0, 75, 0, 13)
TextLabel_5.Font = Enum.Font.SourceSansBold
TextLabel_5.Text = "Champions X"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextSize = 14.000

DaHood.Name = "DaHood"
DaHood.Parent = ScrollingFrame
DaHood.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DaHood.Position = UDim2.new(0.731700003, 0, 0.0145867933, 0)
DaHood.Size = UDim2.new(0, 83, 0, 84)
DaHood.Image = "http://www.roblox.com/asset/?id=10851005526"

UICorner_6.CornerRadius = UDim.new(0.300000012, 0)
UICorner_6.Parent = DaHood

TextLabel_6.Parent = ScrollingFrame
TextLabel_6.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(0.753849864, 0, 0.190384611, 0)
TextLabel_6.Size = UDim2.new(0, 75, 0, 13)
TextLabel_6.Font = Enum.Font.SourceSansBold
TextLabel_6.Text = "Da Hood"
TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.TextSize = 14.000

KeyBox.Name = "KeyBox"
KeyBox.Parent = Frame
KeyBox.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
KeyBox.BorderColor3 = Color3.fromRGB(65, 65, 65)
KeyBox.Position = UDim2.new(0.03125, 0, 0.923076928, 0)
KeyBox.Size = UDim2.new(0, 388, 0, 12)
KeyBox.Font = Enum.Font.SourceSans
KeyBox.PlaceholderText = "Key Here"
KeyBox.Text = ""
KeyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyBox.TextSize = 12.000

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.00961538497, 0, 0, 0)
ImageLabel.Size = UDim2.new(0, 23, 0, 22)
ImageLabel.Image = "rbxassetid://10856406628"
ImageLabel.ImageColor3 = Color3.fromRGB(18, 18, 18)

TextLabel_7.Parent = Frame
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 61, 61)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(0.340345085, 0, 0, 0)
TextLabel_7.Size = UDim2.new(0, 127, 0, 22)
TextLabel_7.Font = Enum.Font.SourceSansBold
TextLabel_7.Text = "Tesla | Game Selection"
TextLabel_7.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.TextSize = 14.000

         RoVille.MouseButton1Click:Connect(function()
            
            _G.wl_key = KeyBox.Text
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\99\111\110\110\111\114\109\52\51\50\47\116\101\115\108\97\47\109\97\105\110\47\119\104\105\116\101\108\105\115\116\95\111\117\116\112\117\116\37\50\48\40\56\41\46\108\117\97\34\41\41\40\41\10")()
            Frame.Visible = false

        end)
        
        
         Shadovis.MouseButton1Click:Connect(function()
            
                        _G.wl_key = KeyBox.Text
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\39\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\99\111\110\110\111\114\109\52\51\50\47\116\101\115\108\97\47\109\97\105\110\47\83\104\97\100\111\118\105\115\46\108\117\97\39\41\41\40\41\32\10")()
                        Frame.Visible = false

        end)
        
        
        
         Rebirth.MouseButton1Click:Connect(function()
                        _G.wl_key = KeyBox.Text
            loadstring(game:HttpGet('https://raw.githubusercontent.com/150ChallengeList/idk/main/Legendary'))() 
            
            
            Frame.Visible = false

        end)
        
        
        
        
         DaHood.MouseButton1Click:Connect(function()
                        _G.wl_key = KeyBox.Text
            loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\65\115\121\110\99\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\99\111\110\110\111\114\109\52\51\50\47\116\101\115\108\97\47\109\97\105\110\47\68\97\72\111\111\100\46\108\117\97\34\41\41\40\41\10\10")()
            
            
            Frame.Visible = false

        end)