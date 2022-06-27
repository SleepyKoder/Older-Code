-- gui toggle is right control
-- i have 5 copies of this in different hard drives and this will be reposted until infinity.

-- Anti JJSploit Script
assert(Drawing, 'exploit not supported')
if not syn then print'NOT USING SYNAPSE X' end
local Executor = (identifyexecutor or (function() return '' end))()
local SupportedExploits = { 'Synapse X', 'ScriptWare', 'Krnl', 'OxygenU', 'Temple' }
local QUAD_SUPPORTED_EXPLOIT = table.find(SupportedExploits, Executor) ~= nil
local IsSynapse 	= syn and not PROTOSMASHER_LOADED;
-- End of Anti JJSploit Script! Credits to Unnamed ESP devs.

-- Actual Scripts
_G.SupportedGames = {606849621, 292439477, 3978370137} -- phantom forces, gpo, jailbreak.
_G.DrawingLib = true -- just a toggle for the drawing lib, you can start with it as false if your exploit doesn't have a drawing lib(ex. dansploit)
_G.maincolor = Color3.fromRGB(255, 170, 0)
_G.WalkspeedOff = {2039118386, 2377868063, 6172932937, 292439477, 4716045691, 301549746, 4651779470, 3978370137} -- games that walkspeed might get you banned on.
_G.Distance = -3
_G.SAPType = 3
_G.Player = game:GetService("Players").LocalPlayer.Character
_G.PlayerTween = false
_G.NPCTween = false
_G.PlayerTweenSpeed = 15
_G.NPCTweenSpeed = 15
_G.PSize = 100
_G.NSize = 100
_G.RemoteTable = {}
_G.Blocklist = {}
_G.Blacklist = {}
_G.SimpleESP = false -- basically makes it so when you're using drawing lib esp it's a small square that updates faster instead of a quad, have yet to had a game that needs this.

function store()
_G.storedthing = _G.thing
_G.storedargs = _G.args
_G.storedmethod = _G.method
_G.storedpath = tostring(_G.thing:GetFullName())
end

function makescript()
_G.bald = {}
for i,v in pairs(_G.storedargs) do
table.insert(_G.bald, tostring(table.concat({"[", i, "]", " = ", v}, "")))
end
_G.Script = table.concat({"local args = {", table.concat(_G.bald, ",\n"), "}", "", table.concat({_G.storedpath, ":", tostring(_G.storedmethod), "(unpack(args))"}, "")}, "\n")
end

function runremote()
_G.bald = {}
for i,v in pairs(_G.storedargs) do
table.insert(_G.bald, tostring(table.concat({"[", i, "]", " = ", v}, "")))
end
loadstring(tostring(table.concat({"local args = {", table.concat(_G.bald, ",\n"), "}", "", table.concat({_G.storedpath, ":", tostring(_G.storedmethod), "(unpack(args))"}, "")}, "\n")))()
end

function tycoonbutton(all)
_G.NotRunning = false
if all == 3 then
_G.CurrentPos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
if _G.GiverFound ~= true then
if v.Name == "Handle" and v.Parent.ClassName ~= "Accessory" and v.Parent.ClassName ~= "Tool" and v.ClassName == "Part" or v.Name == "Giver" and v.ClassName == "Part" then
game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(v.Position.x, v.Position.y, v.Position.z))
wait(0.2)
end
end
end
game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(_G.CurrentPos))
_G.GiverFound = false
elseif all == 1 then
_G.CurrentPos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
if _G.GiverFound ~= true then
if v:FindFirstChildOfClass("TouchTransmitter") and v.ClassName == "Part" or v:FindFirstChildOfClass("TouchTransmitter") and v.ClassName == "UnionOperation" then
if tostring(v.Parent) == "Frame" or v:FindFirstChildOfClass("Script") or v:FindFirstChildOfClass("BillboardGUI") or v.CanCollide == false then
wait()
else
game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(v.Position.x, v.Position.y, v.Position.z))
wait(0.05)
end
end
end
end
game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(_G.CurrentPos))
_G.GiverFound = false
elseif all == 2 then
_G.CurrentPos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
if _G.GiverFound ~= true then
if v:FindFirstChildOfClass("TouchTransmitter") and v.ClassName == "Part" and tonumber(v.Size.x) > 4.5 and tonumber(v.Size.z) > 2 or v:FindFirstChildOfClass("TouchTransmitter") and v.ClassName == "Part" and tonumber(v.Size.x) > 2 and tonumber(v.Size.z) > 4.5 then
game:GetService("Players").LocalPlayer.Character:MoveTo(v.Position)
wait(0.3)
end
end
end
game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(_G.CurrentPos))
_G.GiverFound = false
end
_G.NotRunning = true
end

function getclosest(teamcheck)
_G.Closest = nil
_G.ClosestNum = math.huge
if teamcheck ~= true then
for i,v in pairs(game:GetService("Players"):GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name and v.Character ~= nil then
if tonumber((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude) < tonumber(_G.ClosestNum) then
_G.Closest = tostring(v)
_G.ClosestNum = tonumber((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude)
_G.ClosestChar = v
end
end
end
else
for i,v in pairs(game:GetService("Players"):GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name and v.Team ~= game:GetService("Players").LocalPlayer.Team and v.Character ~= nil then
if tonumber((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude) < tonumber(_G.ClosestNum) then
_G.Closest = tostring(v)
_G.ClosestNum = tonumber((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude)
_G.ClosestChar = v
end
end
end
end
end

function teleport(x, y, z)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(x, y, z)
end

function upvalue(change, new, getgc1)
if tostring(change) == "Change" then
if getgc1 ~= true then
for i,v in pairs(getreg()) do 
    if typeof(v) == "table" then
            for _,b in pairs(v) do
            if typeof(b) == "number" or tostring(b) == "true" or tostring(b) == "false" then
            print(_,b)
            wait()
            end
            end
    end
end
else
for i,v in pairs(getgc(true)) do 
    if typeof(v) == "table" then
            for _,b in pairs(v) do
            if typeof(b) == "number" or tostring(b) == "true" or tostring(b) == "false" then
            if tostring(_) ~= "owned" and tostring(_) ~= "limited" and tostring(_) ~= "price" and tostring(_) ~= "quality" and tostring(_) ~= "premium" and tostring(_) ~= "robuxPrice" and tostring(_) ~= "RobuxSpent" and tostring(_) ~= "offsale" and tostring(_) ~= "equipped" then
            print(_,b)
            wait()
            end
            end
            end
    end
end
end
else
if getgc1 ~= true then
if tonumber(change) ~= nil then
for i,v in pairs(getreg()) do 
    if typeof(v) == "table" then
            for _,b in pairs(v) do
            if typeof(b) == "number" then
            if b == tonumber(change) then
            v[tostring(_)] = tonumber(new)
            end
            end
            end
    end
end
else
for i,v in pairs(getgc(true)) do 
    if typeof(v) == "table" then
            for _,b in pairs(v) do
            if typeof(b) == "number" then
            if b == tonumber(change) then
            v[tostring(_)] = tonumber(new)
            end
            end
            end
    end
end
end
else
if getgc1 ~= true then
for i,v in pairs(getreg()) do
    if typeof(v) == "table" then
            for _,b in pairs(v) do
            if tostring(_) == tostring(change) then
            print('bruh')
            if _ == tostring(change) then
            print(_)
            v[tostring(_)] = tostring(new)
            end
            end
            end
    end
end
else
for i,v in pairs(getgc(true)) do
    if typeof(v) == "table" then
            for _,b in pairs(v) do
            if tostring(_) == tostring(change) then
            print('bruh')
            if _ == tostring(change) then
            print(_)
            v[tostring(_)] = tostring(new)
            end
            end
            end
    end
end
end
end
end
end

function fastwait()
game:GetService("RunService").Stepped:wait(0)
end

function To(nt, tweens, position) -- this is all walmort's.
if nt == true then
local Chr = game.Players.LocalPlayer.Character
if Chr ~= nil then
local ts = game:GetService("TweenService")
local char = game.Players.LocalPlayer.Character
local hm = char.HumanoidRootPart
local dist = (hm.Position - position).magnitude
_G.tweenspeed = dist/tonumber(tweens*10)
local ti = TweenInfo.new(tonumber(_G.tweenspeed), Enum.EasingStyle.Linear)
local tp = {CFrame = CFrame.new(position)}
ts:Create(hm, ti, tp):Play()
end
else
game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(position))
end
end

function NPCCheck()
if _G.NPCName ~= nil then
for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
if v:FindFirstChild("HumanoidRootPart") and string.match(v.Name:lower(),_G.NPCName:lower()) or v:FindFirstChild("HumanoidRootPart") and v.Name == _G.NPCName then
_G.NPCParent = v.Parent
_G.NPCChar = v
end
end
end
end

function Aimbot(bool)
_G.thingthingthing = bool
if _G.AimbotToggled == true then
local mouse = game:GetService("Players").LocalPlayer:GetMouse()
_G.Lowest = math.huge
_G.LowestPlayer = nil
if _G.FPSTargetList ~= nil and _G.SAPType ~= 4 then
for i,b in pairs(_G.FPSTargetList) do
local v = game:GetService("Players")[b]
if v ~= nil and v.Character then
if v.Character and v.Name ~= game:GetService("Players").LocalPlayer.Name and v.Character:FindFirstChild("Head") then
local vector, thing = game:GetService("Workspace").CurrentCamera:WorldToViewportPoint(v.Character.Head.Position)
_G.Distance = (Vector2.new(vector.X - mouse.X) + Vector2.new(vector.Y - mouse.Y)).magnitude
if thing ~= nil and _G.Distance < _G.Lowest and _G.Distance < 9999 and v.Character ~= nil then
_G.Lowest = _G.Distance
_G.LowestPlayer = v.Character
_G.vj = v
end
end
end
end
repeat
local vector, onScreen = game:GetService("Workspace").CurrentCamera:WorldToScreenPoint(_G.LowestPlayer.HumanoidRootPart.Position)
mousemoverel((vector.X - mouse.X) * .25, (vector.Y - mouse.Y) * .25)
fastwait()
until _G.thingthingthing ~= true
elseif _G.FPSTargetList ~= nil and _G.SAPType == 4 then
pcall(function()
for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
if v:FindFirstChild("HumanoidRootPart") or v:FindFirstChild("Head") then
if tostring(v.Parent) ~= "Clothes" and v.Name ~= "Dead" and tostring(v.Parent.Parent) ~= "Ragdolls" and tostring(v.Parent) ~= "Map" and tostring(v.Parent.Parent) ~= "Map" then
local vector, thing = game:GetService("Workspace").CurrentCamera:WorldToScreenPoint(v.Head.Position)
_G.Distance = (Vector2.new(vector.X - mouse.X) + Vector2.new(vector.Y - mouse.Y)).magnitude
if thing ~= false and _G.Distance < _G.Lowest and _G.Distance < 9999 and v ~= nil then
_G.Lowest = _G.Distance
_G.LowestPlayer = v
_G.vb = v
end
end
end 
end
end)
repeat
if _G.LowestPlayer.Head then
local vector, onScreen = game:GetService("Workspace").CurrentCamera:WorldToViewportPoint(_G.LowestPlayer.Head.Position)
if vector.X < 99999999 and vector.X > -99999999 then
mousemoverel((vector.X - mouse.X) * .25, (vector.Y - mouse.Y) * .25)
end
end
fastwait()
until _G.thingthingthing ~= true
end
end
end

function ESPTHING(v)
if _G.DrawingLib == true then
spawn(function()
if _G.SAPType ~= 4 then
if _G.SimpleESP then
local Square = Drawing.new("Square")
local NameText = Drawing.new("Text")
local Tracer = Drawing.new("Line")
Tracer.Transparency = 1
Tracer.Color = Color3.fromRGB(255, 255, 255)
Tracer.Thickness = 1
NameText.Text = v.Name
NameText.Size = 24.0
NameText.Color = Color3.new(255/255,255/255,255/255)
NameText.Outline = false
Square.Color = Color3.fromRGB(255, 255, 255)
Square.Filled = false
Square.Transparency = 1
repeat
spawn(function()
local parent = v.Parent
local charparent = v.Character.Parent
local chara = v.Character
local vhe = v.Character.Head
wait(1)
if v.Parent ~= parent or v.Parent == nil or v.Character.Parent ~= charparent or chara.Parent == nil or chara == nil or vhe.Parent ~= v.Character or vhe.Parent == nil then
Square:Remove()
NameText:Remove()
Tracer:Remove()
end
end)
local Point0, Visible0 = game:GetService("Workspace").CurrentCamera:WorldToViewportPoint(Vector3.new(v.Character.HumanoidRootPart.Position.x + 0, v.Character.HumanoidRootPart.Position.y + 0, v.Character.HumanoidRootPart.Position.z + 0))
local Point5 = game:GetService("Workspace").CurrentCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position + (v.Character.HumanoidRootPart.CFrame.UpVector * 4))
Tracer.From = Vector2.new(game:GetService("Workspace"):FindFirstChildOfClass("Camera").ViewportSize.X / 2, game:GetService("Workspace"):FindFirstChildOfClass("Camera").ViewportSize.Y - 36)
Tracer.To = Vector2.new(Point0.x, Point0.y)
Tracer.Visible = Visible0
NameText.Visible = Visible0
NameText.Position = Vector2.new(Point5.x - 35, Point5.y - 50)
Square.Visible = Visible0
Square.Position = Vector2.new(Point0.x, Point0.y)
fastwait()
until _G.ESPTog == false or v.Character.Humanoid.Health < 0.1
Square:Remove()
NameText:Remove()
Tracer:Remove()
else
local Square = Drawing.new("Quad")
local NameText = Drawing.new("Text")
local Tracer = Drawing.new("Line")
Tracer.Transparency = 1
Tracer.Thickness = 1
NameText.Text = v.Name
NameText.Size = 24.0
NameText.Outline = false
Square.Filled = false
Square.Transparency = 1
repeat
spawn(function()
local parent = v.Parent
local charparent = v.Character.Parent
local chara = v.Character
local vhe = v.Character.Head
wait(1)
if v.Parent ~= parent or v.Parent == nil or v.Character.Parent ~= charparent or chara.Parent == nil or chara == nil or vhe.Parent ~= v.Character or vhe.Parent == nil then
Square:Remove()
NameText:Remove()
Tracer:Remove()
end
end)
local Point0, Visible0 = game:GetService("Workspace").CurrentCamera:WorldToViewportPoint(Vector3.new(v.Character.HumanoidRootPart.Position.x + 0, v.Character.HumanoidRootPart.Position.y + 0, v.Character.HumanoidRootPart.Position.z + 0))
local size = v.Character.HumanoidRootPart.Size * Vector3.new(1, 1.5, 0)
local Point1 = game:GetService("Workspace").CurrentCamera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(-size.X, -size.Y, 0)).Position)
local Point2 = game:GetService("Workspace").CurrentCamera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(-size.X, size.Y, 0)).Position)
local Point3 = game:GetService("Workspace").CurrentCamera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(size.X, -size.Y, 0)).Position)
local Point4 = game:GetService("Workspace").CurrentCamera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(size.X, size.Y, 0)).Position)
local Point5 = game:GetService("Workspace").CurrentCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position + (v.Character.HumanoidRootPart.CFrame.UpVector * 4))
if v.TeamColor and v.TeamColor ~= "White" then
Square.Color = Color3.fromRGB(tonumber(v.TeamColor.Color.R) * 255, tonumber(v.TeamColor.Color.G) * 255, tonumber(v.TeamColor.Color.B) * 255)
Tracer.Color = Color3.fromRGB(tonumber(v.TeamColor.Color.R) * 255, tonumber(v.TeamColor.Color.G) * 255, tonumber(v.TeamColor.Color.B) * 255)
NameText.Color = Color3.new(tonumber(v.TeamColor.Color.R), tonumber(v.TeamColor.Color.G), tonumber(v.TeamColor.Color.B))
else
NameText.Color = Color3.new(255/255,255/255,255/255)
Square.Color = Color3.fromRGB(255, 255, 255)
Tracer.Color = Color3.fromRGB(255, 255, 255)
end
Tracer.From = Vector2.new(game:GetService("Workspace"):FindFirstChildOfClass("Camera").ViewportSize.X / 2, game:GetService("Workspace"):FindFirstChildOfClass("Camera").ViewportSize.Y - 36)
Tracer.To = Vector2.new(Point0.x, Point0.y)
Tracer.Visible = Visible0
NameText.Visible = Visible0
NameText.Position = Vector2.new(Point5.x - 35, Point5.y - 50)
Square.Visible = Visible0
Square.PointA = Vector2.new(Point2.x, Point2.y)
Square.PointB = Vector2.new(Point1.x, Point1.y)
Square.PointC = Vector2.new(Point3.x, Point3.y)
Square.PointD = Vector2.new(Point4.x, Point4.y)
fastwait()
until _G.ESPTog == false or v.Character.Humanoid.Health < 0.1
Square:Remove()
NameText:Remove()
Tracer:Remove()
end
else
local Square = Drawing.new("Square")
local NameText = Drawing.new("Text")
local Tracer = Drawing.new("Line")
NameText.Text = v.Name
NameText.Size = 24.0
NameText.Color = Color3.new(255/255,255/255,255/255)
NameText.Outline = false
Square.Color = Color3.fromRGB(255, 255, 255)
Square.Size = Vector2.new(20, 20)
Square.Filled = true
Square.Transparency = 1
Tracer.Transparency = 1
Tracer.Thickness = 1
Tracer.Color = Color3.fromRGB(255, 255, 255)
repeat
spawn(function()
local parent = v.Parent
local vh = v
local vhe = v.Head
wait(1)
if v.Parent ~= parent or vh.Parent == nil or vh == nil or vhe.Parent ~= v or vhe.Parent == nil then
Square:Remove()
NameText:Remove()
Tracer:Remove()
end
end)
local vector, Visible1 = game:GetService("Workspace").CurrentCamera:WorldToViewportPoint(v.Head.Position + (v.Head.CFrame.UpVector * - 1))
local vector2 = game:GetService("Workspace").CurrentCamera:WorldToViewportPoint(v.Head.Position + (v.Head.CFrame.UpVector * 3))
Square.Visible = Visible1
Square.Position = Vector2.new(vector.x, vector.y)
Tracer.Visible = Visible1
Tracer.From = Vector2.new(game:GetService("Workspace"):FindFirstChildOfClass("Camera").ViewportSize.X / 2, game:GetService("Workspace"):FindFirstChildOfClass("Camera").ViewportSize.Y - 36)
Tracer.To = Vector2.new(vector.x, vector.y)
NameText.Visible = Visible1
NameText.Position = Vector2.new(vector2.x - 25, vector2.y - 50)
fastwait()
until _G.ESPTog == false
Square:Remove()
NameText:Remove()
Tracer:Remove()
end
end)
else
if _G.SAPType == 4 then
repeat wait() until v and v:FindFirstChild('HumanoidRootPart') or v:FindFirstChild("Head")
for b,n in pairs (v:GetChildren()) do
if n.Name == "HumanoidRootPart" or n.Name == "Head" then
local a = Instance.new("BoxHandleAdornment")
a.Name = v.Name
a.Parent = _G.individualfoldersforespshit
a.Adornee = n
a.AlwaysOnTop = true
a.ZIndex = 10
a.Size = Vector3.new(5, 7, 3)
a.Transparency = 0.7
end
end
else
spawn(function()
if v.Character and v.Name ~= game:GetService("Players").LocalPlayer.Name then
local chara = v.Character
repeat wait() until _G.CharacterTable ~= nil and v.Character ~= nil and v.Character:FindFirstChild('HumanoidRootPart') and v.Character.Name ~= "Dead" and chara.Parent ~= nil and chara ~= nil or v.Character and v.Character:FindFirstChild('HumanoidRootPart') and v.Character.Name ~= "Dead" and chara.Parent ~= nil and chara ~= nil
for b,n in pairs (v.Character:GetChildren()) do
if n.Name == "HumanoidRootPart" then
local a = Instance.new("BoxHandleAdornment")
a.Name = v.Name
a.Parent = _G.individualfoldersforespshit
a.Adornee = n
a.AlwaysOnTop = true
a.ZIndex = 10
a.Size = Vector3.new(5, 7, 3)
a.Transparency = 0.7
a.Color = v.TeamColor
spawn(function()
local parent = v.Parent
local charparent = v.Character.Parent
local chara = v.Character
local vhe = v.Character.Head
wait(1)
if v.Parent ~= parent or v.Parent == nil or v.Character.Parent ~= charparent or chara.Parent == nil or chara == nil or vhe.Parent ~= v.Character or vhe.Parent == nil then
a:Destroy()
end
end)
end
end
end
end)
end
end
end

function ESP(toggle)
repeat fastwait() until _G.FPSTargetList ~= nil or _G.SAPType == 4
if toggle == true then
_G.individualfoldersforespshit = Instance.new("Folder")
_G.individualfoldersforespshit.Name = "ESPFolder"
_G.individualfoldersforespshit.Parent = game.CoreGui
if _G.SAPType == 4 then
for _,b in pairs(game:GetService("Workspace"):GetDescendants()) do
if b:FindFirstChild("HumanoidRootPart") or b:FindFirstChild("Head") then
if b.Name ~= "Dead" and tostring(b.Parent.Parent) ~= "Ragdolls" then
spawn(function()
ESPTHING(b)
end)
end
end
end
else
for i,v in pairs(_G.FPSTargetList) do
ESPTHING(game:GetService("Players")[tostring(v)])
end
end
elseif toggle == false then
game.CoreGui.ESPFolder:Destroy()
end
end

function HBT()
function NPC(Toggled)
for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
if v:FindFirstChild("HumanoidRootPart") and string.match(v.Name:lower(),_G.NPCName:lower()) or v:FindFirstChild("HumanoidRootPart") and v.Name == _G.NPCName then
pcall(function()
if _G.AlreadyDone2 ~= true then
_G.AlreadyDone2 = true
_G.OGNSize = v.HumanoidRootPart.Size
end
end)
if Toggled == false then
v.HumanoidRootPart.Size = Vector3.new(_G.OGNSize, _G.OGNSize, _G.OGNSize)
else
v.HumanoidRootPart.CanCollide = false
v.HumanoidRootPart.Size = Vector3.new(_G.NSize, _G.NSize, _G.NSize)
v.HumanoidRootPart.Color = Color3.new(193, 193, 193)
v.HumanoidRootPart.Transparency = 0.8
end
end
end
end

function Player(Toggled2)
if _G.FPSTargetList ~= nil then
for i,v in pairs(_G.FPSTargetList) do
local vchar = game:GetService("Players")[tostring(v)].Character
pcall(function()
if _G.AlreadyDone ~= true then
_G.AlreadyDone = true
_G.OGPSize = vchar.HumanoidRootPart.Size
end
end)
if Toggled2 == false then
vchar.HumanoidRootPart.Size = Vector3.new(_G.OGPSize, _G.OGPSize, _G.OGPSize)
else
vchar.HumanoidRootPart.CanCollide = false
vchar.HumanoidRootPart.Size = Vector3.new(_G.PSize, _G.PSize, _G.PSize)
vchar.HumanoidRootPart.Color = Color3.new(193, 193, 193)
vchar.HumanoidRootPart.Transparency = 0.8
end
end
end
end

pcall(function()
if _G.NHBTG == true and _G.PHBTG ~= true then
_G.Type = 2
elseif _G.NHBTG ~= true and _G.PHBTG == true then
_G.Type = 1
elseif _G.NHBTG == true and _G.PHBTG == true then
_G.Type = 3
end
end)

pcall(function()
if _G.HitboxToggled == true then
if _G.Type == 1 then
repeat Player(true) wait(1) until _G.HitboxToggled == false
elseif _G.Type == 2 then
repeat NPC(true) wait(1) until _G.HitboxToggled == false
elseif _G.Type == 3 then
repeat Player(true) NPC(true) wait(1) until _G.HitboxToggled == false
end
else
Player(false)
NPC(false)
end
end)
end

function WalkSpeedChange()
if _G.WalkspeedToggle ~= true and _G.WalkspeedOff ~= true then
game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = _G.Walkspeed
end
end

game:GetService("Players").LocalPlayer:GetMouse().Button2Down:Connect(function(input)
    Aimbot(true)
end)
game:GetService("Players").LocalPlayer:GetMouse().Button2Up:Connect(function(input)
Aimbot(false)
end)

spawn(function()
while true do
_G.FPSTargetList = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
if v.Name ~= game:GetService("Players").LocalPlayer.Name and v.Team == game:GetService("Players").LocalPlayer.Team and _G.SAPType == 1 then
table.insert(_G.FPSTargetList, v.Name)
elseif v.Team ~= game:GetService("Players").LocalPlayer.Team and _G.SAPType == 2 then
table.insert(_G.FPSTargetList, v.Name)
elseif v.Name ~= game:GetService("Players").LocalPlayer.Name and _G.SAPType == 3 then
table.insert(_G.FPSTargetList, v.Name)
end
end
wait(1)
end
end)

spawn(function()
while true do
NPCCheck()
_G.Player:FindFirstChildOfClass("Humanoid"):GetPropertyChangedSignal("WalkSpeed"):Connect(WalkSpeedChange)
wait(3)
end
end)

spawn(function()
Player = game:GetService("Players").LocalPlayer
while wait(1) do
if _G.AutoEquip ~= nil and _G.AutoEquip ~= "None" then
if Player.Backpack:FindFirstChild(_G.AutoEquip) and Player.Character:FindFirstChild(_G.AutoEquip) == nil then
            local tool = Player.Backpack:FindFirstChild(_G.AutoEquip)
            Player.Character.Humanoid:EquipTool(tool)
end
end
end
end)

spawn(function()
while wait(0.1) do
spawn(function()
if _G.QmFsZEh1YkF1dG9mYXJt == true then
pos = (_G.NPCChar.HumanoidRootPart.CFrame + _G.NPCChar.HumanoidRootPart.CFrame.lookVector*_G.Distance)
pos2 = _G.NPCChar.HumanoidRootPart.Position
To(_G.NPCTween, _G.NPCTweenSpeed, Vector3.new(pos.x, pos.y, pos.z))
_G.Player:SetPrimaryPartCFrame(CFrame.new(_G.Player.HumanoidRootPart.Position, Vector.new(pos2.x, pos2.y, pos2.z)))
end
end)
end
end)

spawn(function()
while true do
_G.Player = game:GetService("Players").LocalPlayer.Character
wait(1)
end
end)

spawn(function()
while true do
for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
if _G.NC and v:IsA("BasePart") and v.CanCollide == true then
v.CanCollide = false
end
end
fastwait()
end
end)

spawn(function()
if _G.QWxyRXhlY3V0ZWQ ~= true then
_G.QWxyRXhlY3V0ZWQ = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if _G.InfJump == true then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
end

pcall(function()
if tonumber(game.PlaceId) == 292439477 then
repeat wait() until _G.CharacterTable ~= nil
wait(1)
end
game:GetService("Players").PlayerAdded:Connect(function(player)
game:GetService("Players")[tostring(player)].CharacterAdded:Connect(function(playerthing)
if _G.ESPTog == true and _G.SAPType ~= 4 then
wait(1)
ESPTHING(game:GetService("Players")[tostring(playerthing)])
elseif _G.ESPTog == true and _G.SAPType == 4 then
wait(1)
ESPTHING(playerthing)
end
end)
end)
end)

pcall(function()
for i,v in pairs(game:GetService("Players"):GetChildren()) do
if v.Name ~= game:GetService("Players").LocalPlayer.Name then
game:GetService("Players")[tostring(v)].CharacterAdded:Connect(function(playerthing)
if _G.ESPTog == true and _G.SAPType ~= 4 then
wait(1)
ESPTHING(game:GetService("Players")[tostring(playerthing)])
elseif _G.ESPTog == true and _G.SAPType == 4 then
print('test')
print(playerthing)
wait(1)
ESPTHING(playerthing)
end
end)
end
end
end)

pcall(function()
for i,v in pairs(_G.WalkspeedOff) do
if game.PlaceId == tonumber(v) then
_G.WalkspeedToggle = false
_G.WalkspeedOff = true
end
end
end)

pcall(function()
local Player = game:GetService('Players').LocalPlayer
local Humanoid = Player.Character:FindFirstChildOfClass('Humanoid')
local mt = getrawmetatable(game)
local index = mt.__index
local newindex = mt.__newindex
setreadonly(mt, false)

mt.__index = newcclosure(function(i, v) if v:lower() == 'walkspeed' and _G.WalkspeedToggle ~= false then return 16 end return index(i, v) end)

setreadonly(mt, true)
end)
end)

spawn(function()
ui_options = {
	main_color = Color3.fromRGB(41, 74, 122),
	min_size = Vector2.new(400, 300),
	toggle_key = Enum.KeyCode.RightControl,
	can_resize = true,
}

do
	local imgui = game:GetService("CoreGui"):FindFirstChild("imgui")
	if imgui then imgui:Destroy() end
end

local imgui = Instance.new("ScreenGui")
local Prefabs = Instance.new("Frame")
local Label = Instance.new("TextLabel")
local Window = Instance.new("ImageLabel")
local Resizer = Instance.new("Frame")
local Bar = Instance.new("Frame")
local Toggle = Instance.new("ImageButton")
local Base = Instance.new("ImageLabel")
local Top = Instance.new("ImageLabel")
local Tabs = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local TabSelection = Instance.new("ImageLabel")
local TabButtons = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Frame = Instance.new("Frame")
local Tab = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")
local TextBox = Instance.new("TextBox")
local TextBox_Roundify_4px = Instance.new("ImageLabel")
local Slider = Instance.new("ImageLabel")
local Title_2 = Instance.new("TextLabel")
local Indicator = Instance.new("ImageLabel")
local Value = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local Circle = Instance.new("ImageLabel")
local UIListLayout_3 = Instance.new("UIListLayout")
local Dropdown = Instance.new("TextButton")
local Indicator_2 = Instance.new("ImageLabel")
local Box = Instance.new("ImageButton")
local Objects = Instance.new("ScrollingFrame")
local UIListLayout_4 = Instance.new("UIListLayout")
local TextButton_Roundify_4px = Instance.new("ImageLabel")
local TabButton = Instance.new("TextButton")
local TextButton_Roundify_4px_2 = Instance.new("ImageLabel")
local Folder = Instance.new("ImageLabel")
local Button = Instance.new("TextButton")
local TextButton_Roundify_4px_3 = Instance.new("ImageLabel")
local Toggle_2 = Instance.new("ImageLabel")
local Objects_2 = Instance.new("Frame")
local UIListLayout_5 = Instance.new("UIListLayout")
local HorizontalAlignment = Instance.new("Frame")
local UIListLayout_6 = Instance.new("UIListLayout")
local Console = Instance.new("ImageLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local Source = Instance.new("TextBox")
local Comments = Instance.new("TextLabel")
local Globals = Instance.new("TextLabel")
local Keywords = Instance.new("TextLabel")
local RemoteHighlight = Instance.new("TextLabel")
local Strings = Instance.new("TextLabel")
local Tokens = Instance.new("TextLabel")
local Numbers = Instance.new("TextLabel")
local Info = Instance.new("TextLabel")
local Lines = Instance.new("TextLabel")
local ColorPicker = Instance.new("ImageLabel")
local Palette = Instance.new("ImageLabel")
local Indicator_3 = Instance.new("ImageLabel")
local Sample = Instance.new("ImageLabel")
local Saturation = Instance.new("ImageLabel")
local Indicator_4 = Instance.new("Frame")
local Switch = Instance.new("TextButton")
local TextButton_Roundify_4px_4 = Instance.new("ImageLabel")
local Title_3 = Instance.new("TextLabel")
local Button_2 = Instance.new("TextButton")
local TextButton_Roundify_4px_5 = Instance.new("ImageLabel")
local DropdownButton = Instance.new("TextButton")
local Keybind = Instance.new("ImageLabel")
local Title_4 = Instance.new("TextLabel")
local Input = Instance.new("TextButton")
local Input_Roundify_4px = Instance.new("ImageLabel")
local Windows = Instance.new("Frame")

imgui.Name = "imgui"
imgui.Parent = game:GetService("CoreGui")

Prefabs.Name = "Prefabs"
Prefabs.Parent = imgui
Prefabs.BackgroundColor3 = Color3.new(1, 1, 1)
Prefabs.Size = UDim2.new(0, 100, 0, 100)
Prefabs.Visible = false

Label.Name = "Label"
Label.Parent = Prefabs
Label.BackgroundColor3 = Color3.new(1, 1, 1)
Label.BackgroundTransparency = 1
Label.Size = UDim2.new(0, 200, 0, 20)
Label.Font = Enum.Font.GothamSemibold
Label.Text = "Hello, world 123"
Label.TextColor3 = Color3.new(1, 1, 1)
Label.TextSize = 14
Label.TextXAlignment = Enum.TextXAlignment.Left

Window.Name = "Window"
Window.Parent = Prefabs
Window.Active = true
Window.BackgroundColor3 = Color3.new(1, 1, 1)
Window.BackgroundTransparency = 1
Window.ClipsDescendants = true
Window.Position = UDim2.new(0, 1500, 0, 485)
Window.Selectable = true
Window.Size = UDim2.new(0, 200, 0, 200)
Window.Image = "rbxassetid://2851926732"
Window.ImageColor3 = Color3.new(0.0823529, 0.0862745, 0.0901961)
Window.ScaleType = Enum.ScaleType.Slice
Window.SliceCenter = Rect.new(12, 12, 12, 12)

Resizer.Name = "Resizer"
Resizer.Parent = Window
Resizer.Active = true
Resizer.BackgroundColor3 = Color3.new(1, 1, 1)
Resizer.BackgroundTransparency = 1
Resizer.BorderSizePixel = 0
Resizer.Position = UDim2.new(1, -20, 1, -20)
Resizer.Size = UDim2.new(0, 20, 0, 20)

Bar.Name = "Bar"
Bar.Parent = Window
Bar.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
Bar.BorderSizePixel = 0
Bar.Position = UDim2.new(0, 0, 0, 5)
Bar.Size = UDim2.new(1, 0, 0, 15)

Toggle.Name = "Toggle"
Toggle.Parent = Bar
Toggle.BackgroundColor3 = Color3.new(1, 1, 1)
Toggle.BackgroundTransparency = 1
Toggle.Position = UDim2.new(0, 5, 0, -2)
Toggle.Rotation = 90
Toggle.Size = UDim2.new(0, 20, 0, 20)
Toggle.ZIndex = 2
Toggle.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=4731371541"

Base.Name = "Base"
Base.Parent = Bar
Base.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
Base.BorderSizePixel = 0
Base.Position = UDim2.new(0, 0, 0.800000012, 0)
Base.Size = UDim2.new(1, 0, 0, 10)
Base.Image = "rbxassetid://2851926732"
Base.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
Base.ScaleType = Enum.ScaleType.Slice
Base.SliceCenter = Rect.new(12, 12, 12, 12)

Top.Name = "Top"
Top.Parent = Bar
Top.BackgroundColor3 = Color3.new(1, 1, 1)
Top.BackgroundTransparency = 1
Top.Position = UDim2.new(0, 0, 0, -5)
Top.Size = UDim2.new(1, 0, 0, 10)
Top.Image = "rbxassetid://2851926732"
Top.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
Top.ScaleType = Enum.ScaleType.Slice
Top.SliceCenter = Rect.new(12, 12, 12, 12)

Tabs.Name = "Tabs"
Tabs.Parent = Window
Tabs.BackgroundColor3 = Color3.new(1, 1, 1)
Tabs.BackgroundTransparency = 1
Tabs.Position = UDim2.new(0, 15, 0, 60)
Tabs.Size = UDim2.new(1, -30, 1, -60)

Title.Name = "Title"
Title.Parent = Window
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 30, 0, 3)
Title.Size = UDim2.new(0, 200, 0, 20)
Title.Font = Enum.Font.GothamBold
Title.Text = "Gamer Time"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 14
Title.TextXAlignment = Enum.TextXAlignment.Left

TabSelection.Name = "TabSelection"
TabSelection.Parent = Window
TabSelection.BackgroundColor3 = Color3.new(1, 1, 1)
TabSelection.BackgroundTransparency = 1
TabSelection.Position = UDim2.new(0, 15, 0, 30)
TabSelection.Size = UDim2.new(1, -30, 0, 25)
TabSelection.Visible = false
TabSelection.Image = "rbxassetid://2851929490"
TabSelection.ImageColor3 = Color3.new(0.145098, 0.14902, 0.156863)
TabSelection.ScaleType = Enum.ScaleType.Slice
TabSelection.SliceCenter = Rect.new(4, 4, 4, 4)

TabButtons.Name = "TabButtons"
TabButtons.Parent = TabSelection
TabButtons.BackgroundColor3 = Color3.new(1, 1, 1)
TabButtons.BackgroundTransparency = 1
TabButtons.Size = UDim2.new(1, 0, 1, 0)

UIListLayout.Parent = TabButtons
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 2)

Frame.Parent = TabSelection
Frame.BackgroundColor3 = Color3.new(0.12549, 0.227451, 0.372549)
Frame.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 1, 0)
Frame.Size = UDim2.new(1, 0, 0, 2)

Tab.Name = "Tab"
Tab.Parent = Prefabs
Tab.BackgroundColor3 = Color3.new(1, 1, 1)
Tab.BackgroundTransparency = 1
Tab.Size = UDim2.new(1, 0, 1, 0)
Tab.Visible = false

UIListLayout_2.Parent = Tab
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 5)

TextBox.Parent = Prefabs
TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox.BackgroundTransparency = 1
TextBox.BorderSizePixel = 0
TextBox.Size = UDim2.new(1, 0, 0, 20)
TextBox.ZIndex = 2
TextBox.Font = Enum.Font.GothamSemibold
TextBox.PlaceholderColor3 = Color3.new(0.698039, 0.698039, 0.698039)
TextBox.PlaceholderText = "Input Text"
TextBox.Text = ""
TextBox.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
TextBox.TextSize = 14

TextBox_Roundify_4px.Name = "TextBox_Roundify_4px"
TextBox_Roundify_4px.Parent = TextBox
TextBox_Roundify_4px.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox_Roundify_4px.BackgroundTransparency = 1
TextBox_Roundify_4px.Size = UDim2.new(1, 0, 1, 0)
TextBox_Roundify_4px.Image = "rbxassetid://2851929490"
TextBox_Roundify_4px.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
TextBox_Roundify_4px.ScaleType = Enum.ScaleType.Slice
TextBox_Roundify_4px.SliceCenter = Rect.new(4, 4, 4, 4)

Slider.Name = "Slider"
Slider.Parent = Prefabs
Slider.BackgroundColor3 = Color3.new(1, 1, 1)
Slider.BackgroundTransparency = 1
Slider.Position = UDim2.new(0, 0, 0.178571433, 0)
Slider.Size = UDim2.new(1, 0, 0, 20)
Slider.Image = "rbxassetid://2851929490"
Slider.ImageColor3 = Color3.new(0.145098, 0.14902, 0.156863)
Slider.ScaleType = Enum.ScaleType.Slice
Slider.SliceCenter = Rect.new(4, 4, 4, 4)

Title_2.Name = "Title"
Title_2.Parent = Slider
Title_2.BackgroundColor3 = Color3.new(1, 1, 1)
Title_2.BackgroundTransparency = 1
Title_2.Position = UDim2.new(0.5, 0, 0.5, -10)
Title_2.Size = UDim2.new(0, 0, 0, 20)
Title_2.ZIndex = 2
Title_2.Font = Enum.Font.GothamBold
Title_2.Text = "Slider"
Title_2.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Title_2.TextSize = 14

Indicator.Name = "Indicator"
Indicator.Parent = Slider
Indicator.BackgroundColor3 = Color3.new(1, 1, 1)
Indicator.BackgroundTransparency = 1
Indicator.Size = UDim2.new(0, 0, 0, 20)
Indicator.Image = "rbxassetid://2851929490"
Indicator.ImageColor3 = Color3.new(0.254902, 0.262745, 0.278431)
Indicator.ScaleType = Enum.ScaleType.Slice
Indicator.SliceCenter = Rect.new(4, 4, 4, 4)

Value.Name = "Value"
Value.Parent = Slider
Value.BackgroundColor3 = Color3.new(1, 1, 1)
Value.BackgroundTransparency = 1
Value.Position = UDim2.new(1, -55, 0.5, -10)
Value.Size = UDim2.new(0, 50, 0, 20)
Value.Font = Enum.Font.GothamBold
Value.Text = "0%"
Value.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Value.TextSize = 14

TextLabel.Parent = Slider
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(1, -20, -0.75, 0)
TextLabel.Size = UDim2.new(0, 26, 0, 50)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "]"
TextLabel.TextColor3 = Color3.new(0.627451, 0.627451, 0.627451)
TextLabel.TextSize = 14

TextLabel_2.Parent = Slider
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Position = UDim2.new(1, -65, -0.75, 0)
TextLabel_2.Size = UDim2.new(0, 26, 0, 50)
TextLabel_2.Font = Enum.Font.GothamBold
TextLabel_2.Text = "["
TextLabel_2.TextColor3 = Color3.new(0.627451, 0.627451, 0.627451)
TextLabel_2.TextSize = 14

Circle.Name = "Circle"
Circle.Parent = Prefabs
Circle.BackgroundColor3 = Color3.new(1, 1, 1)
Circle.BackgroundTransparency = 1
Circle.Image = "rbxassetid://266543268"
Circle.ImageTransparency = 0.5

UIListLayout_3.Parent = Prefabs
UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.Padding = UDim.new(0, 20)

Dropdown.Name = "Dropdown"
Dropdown.Parent = Prefabs
Dropdown.BackgroundColor3 = Color3.new(1, 1, 1)
Dropdown.BackgroundTransparency = 1
Dropdown.BorderSizePixel = 0
Dropdown.Position = UDim2.new(-0.055555556, 0, 0.0833333284, 0)
Dropdown.Size = UDim2.new(0, 200, 0, 20)
Dropdown.ZIndex = 2
Dropdown.Font = Enum.Font.GothamBold
Dropdown.Text = "      Dropdown"
Dropdown.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Dropdown.TextSize = 14
Dropdown.TextXAlignment = Enum.TextXAlignment.Left

Indicator_2.Name = "Indicator"
Indicator_2.Parent = Dropdown
Indicator_2.BackgroundColor3 = Color3.new(1, 1, 1)
Indicator_2.BackgroundTransparency = 1
Indicator_2.Position = UDim2.new(0.899999976, -10, 0.100000001, 0)
Indicator_2.Rotation = -90
Indicator_2.Size = UDim2.new(0, 15, 0, 15)
Indicator_2.ZIndex = 2
Indicator_2.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=4744658743"

Box.Name = "Box"
Box.Parent = Dropdown
Box.BackgroundColor3 = Color3.new(1, 1, 1)
Box.BackgroundTransparency = 1
Box.Position = UDim2.new(0, 0, 0, 25)
Box.Size = UDim2.new(1, 0, 0, 150)
Box.ZIndex = 3
Box.Image = "rbxassetid://2851929490"
Box.ImageColor3 = Color3.new(0.129412, 0.133333, 0.141176)
Box.ScaleType = Enum.ScaleType.Slice
Box.SliceCenter = Rect.new(4, 4, 4, 4)

Objects.Name = "Objects"
Objects.Parent = Box
Objects.BackgroundColor3 = Color3.new(1, 1, 1)
Objects.BackgroundTransparency = 1
Objects.BorderSizePixel = 0
Objects.Size = UDim2.new(1, 0, 1, 0)
Objects.ZIndex = 3
Objects.CanvasSize = UDim2.new(0, 0, 0, 0)
Objects.ScrollBarThickness = 8

UIListLayout_4.Parent = Objects
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder

TextButton_Roundify_4px.Name = "TextButton_Roundify_4px"
TextButton_Roundify_4px.Parent = Dropdown
TextButton_Roundify_4px.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_Roundify_4px.BackgroundTransparency = 1
TextButton_Roundify_4px.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_4px.Image = "rbxassetid://2851929490"
TextButton_Roundify_4px.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
TextButton_Roundify_4px.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_4px.SliceCenter = Rect.new(4, 4, 4, 4)

TabButton.Name = "TabButton"
TabButton.Parent = Prefabs
TabButton.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
TabButton.BackgroundTransparency = 1
TabButton.BorderSizePixel = 0
TabButton.Position = UDim2.new(0.185185179, 0, 0, 0)
TabButton.Size = UDim2.new(0, 71, 0, 20)
TabButton.ZIndex = 2
TabButton.Font = Enum.Font.GothamSemibold
TabButton.Text = "Test tab"
TabButton.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
TabButton.TextSize = 14

TextButton_Roundify_4px_2.Name = "TextButton_Roundify_4px"
TextButton_Roundify_4px_2.Parent = TabButton
TextButton_Roundify_4px_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_Roundify_4px_2.BackgroundTransparency = 1
TextButton_Roundify_4px_2.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_4px_2.Image = "rbxassetid://2851929490"
TextButton_Roundify_4px_2.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
TextButton_Roundify_4px_2.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_4px_2.SliceCenter = Rect.new(4, 4, 4, 4)

Folder.Name = "Folder"
Folder.Parent = Prefabs
Folder.BackgroundColor3 = Color3.new(1, 1, 1)
Folder.BackgroundTransparency = 1
Folder.Position = UDim2.new(0, 0, 0, 50)
Folder.Size = UDim2.new(1, 0, 0, 20)
Folder.Image = "rbxassetid://2851929490"
Folder.ImageColor3 = Color3.new(0.0823529, 0.0862745, 0.0901961)
Folder.ScaleType = Enum.ScaleType.Slice
Folder.SliceCenter = Rect.new(4, 4, 4, 4)

Button.Name = "Button"
Button.Parent = Folder
Button.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
Button.BackgroundTransparency = 1
Button.BorderSizePixel = 0
Button.Size = UDim2.new(1, 0, 0, 20)
Button.ZIndex = 2
Button.Font = Enum.Font.GothamSemibold
Button.Text = "      Folder"
Button.TextColor3 = Color3.new(1, 1, 1)
Button.TextSize = 14
Button.TextXAlignment = Enum.TextXAlignment.Left

TextButton_Roundify_4px_3.Name = "TextButton_Roundify_4px"
TextButton_Roundify_4px_3.Parent = Button
TextButton_Roundify_4px_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_Roundify_4px_3.BackgroundTransparency = 1
TextButton_Roundify_4px_3.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_4px_3.Image = "rbxassetid://2851929490"
TextButton_Roundify_4px_3.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
TextButton_Roundify_4px_3.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_4px_3.SliceCenter = Rect.new(4, 4, 4, 4)

Toggle_2.Name = "Toggle"
Toggle_2.Parent = Button
Toggle_2.BackgroundColor3 = Color3.new(1, 1, 1)
Toggle_2.BackgroundTransparency = 1
Toggle_2.Position = UDim2.new(0, 5, 0, 0)
Toggle_2.Size = UDim2.new(0, 20, 0, 20)
Toggle_2.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=4731371541"

Objects_2.Name = "Objects"
Objects_2.Parent = Folder
Objects_2.BackgroundColor3 = Color3.new(1, 1, 1)
Objects_2.BackgroundTransparency = 1
Objects_2.Position = UDim2.new(0, 10, 0, 25)
Objects_2.Size = UDim2.new(1, -10, 1, -25)
Objects_2.Visible = false

UIListLayout_5.Parent = Objects_2
UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_5.Padding = UDim.new(0, 5)

HorizontalAlignment.Name = "HorizontalAlignment"
HorizontalAlignment.Parent = Prefabs
HorizontalAlignment.BackgroundColor3 = Color3.new(1, 1, 1)
HorizontalAlignment.BackgroundTransparency = 1
HorizontalAlignment.Size = UDim2.new(1, 0, 0, 20)

UIListLayout_6.Parent = HorizontalAlignment
UIListLayout_6.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_6.Padding = UDim.new(0, 5)

Console.Name = "Console"
Console.Parent = Prefabs
Console.BackgroundColor3 = Color3.new(1, 1, 1)
Console.BackgroundTransparency = 1
Console.Size = UDim2.new(1, 0, 0, 200)
Console.Image = "rbxassetid://2851928141"
Console.ImageColor3 = Color3.new(0.129412, 0.133333, 0.141176)
Console.ScaleType = Enum.ScaleType.Slice
Console.SliceCenter = Rect.new(8, 8, 8, 8)

ScrollingFrame.Parent = Console
ScrollingFrame.BackgroundColor3 = Color3.new(1, 1, 1)
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Size = UDim2.new(1, 0, 1, 1)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollingFrame.ScrollBarThickness = 4

Source.Name = "Source"
Source.Parent = ScrollingFrame
Source.BackgroundColor3 = Color3.new(1, 1, 1)
Source.BackgroundTransparency = 1
Source.Position = UDim2.new(0, 40, 0, 0)
Source.Size = UDim2.new(1, -40, 0, 10000)
Source.ZIndex = 3
Source.ClearTextOnFocus = false
Source.Font = Enum.Font.Code
Source.MultiLine = true
Source.PlaceholderColor3 = Color3.new(0.8, 0.8, 0.8)
Source.Text = ""
Source.TextColor3 = Color3.new(1, 1, 1)
Source.TextSize = 15
Source.TextStrokeColor3 = Color3.new(1, 1, 1)
Source.TextWrapped = true
Source.TextXAlignment = Enum.TextXAlignment.Left
Source.TextYAlignment = Enum.TextYAlignment.Top

Comments.Name = "Comments"
Comments.Parent = Source
Comments.BackgroundColor3 = Color3.new(1, 1, 1)
Comments.BackgroundTransparency = 1
Comments.Size = UDim2.new(1, 0, 1, 0)
Comments.ZIndex = 5
Comments.Font = Enum.Font.Code
Comments.Text = ""
Comments.TextColor3 = Color3.new(0.231373, 0.784314, 0.231373)
Comments.TextSize = 15
Comments.TextXAlignment = Enum.TextXAlignment.Left
Comments.TextYAlignment = Enum.TextYAlignment.Top

Globals.Name = "Globals"
Globals.Parent = Source
Globals.BackgroundColor3 = Color3.new(1, 1, 1)
Globals.BackgroundTransparency = 1
Globals.Size = UDim2.new(1, 0, 1, 0)
Globals.ZIndex = 5
Globals.Font = Enum.Font.Code
Globals.Text = ""
Globals.TextColor3 = Color3.new(0.517647, 0.839216, 0.968628)
Globals.TextSize = 15
Globals.TextXAlignment = Enum.TextXAlignment.Left
Globals.TextYAlignment = Enum.TextYAlignment.Top

Keywords.Name = "Keywords"
Keywords.Parent = Source
Keywords.BackgroundColor3 = Color3.new(1, 1, 1)
Keywords.BackgroundTransparency = 1
Keywords.Size = UDim2.new(1, 0, 1, 0)
Keywords.ZIndex = 5
Keywords.Font = Enum.Font.Code
Keywords.Text = ""
Keywords.TextColor3 = Color3.new(0.972549, 0.427451, 0.486275)
Keywords.TextSize = 15
Keywords.TextXAlignment = Enum.TextXAlignment.Left
Keywords.TextYAlignment = Enum.TextYAlignment.Top

RemoteHighlight.Name = "RemoteHighlight"
RemoteHighlight.Parent = Source
RemoteHighlight.BackgroundColor3 = Color3.new(1, 1, 1)
RemoteHighlight.BackgroundTransparency = 1
RemoteHighlight.Size = UDim2.new(1, 0, 1, 0)
RemoteHighlight.ZIndex = 5
RemoteHighlight.Font = Enum.Font.Code
RemoteHighlight.Text = ""
RemoteHighlight.TextColor3 = Color3.new(0, 0.568627, 1)
RemoteHighlight.TextSize = 15
RemoteHighlight.TextXAlignment = Enum.TextXAlignment.Left
RemoteHighlight.TextYAlignment = Enum.TextYAlignment.Top

Strings.Name = "Strings"
Strings.Parent = Source
Strings.BackgroundColor3 = Color3.new(1, 1, 1)
Strings.BackgroundTransparency = 1
Strings.Size = UDim2.new(1, 0, 1, 0)
Strings.ZIndex = 5
Strings.Font = Enum.Font.Code
Strings.Text = ""
Strings.TextColor3 = Color3.new(0.678431, 0.945098, 0.584314)
Strings.TextSize = 15
Strings.TextXAlignment = Enum.TextXAlignment.Left
Strings.TextYAlignment = Enum.TextYAlignment.Top

Tokens.Name = "Tokens"
Tokens.Parent = Source
Tokens.BackgroundColor3 = Color3.new(1, 1, 1)
Tokens.BackgroundTransparency = 1
Tokens.Size = UDim2.new(1, 0, 1, 0)
Tokens.ZIndex = 5
Tokens.Font = Enum.Font.Code
Tokens.Text = ""
Tokens.TextColor3 = Color3.new(1, 1, 1)
Tokens.TextSize = 15
Tokens.TextXAlignment = Enum.TextXAlignment.Left
Tokens.TextYAlignment = Enum.TextYAlignment.Top

Numbers.Name = "Numbers"
Numbers.Parent = Source
Numbers.BackgroundColor3 = Color3.new(1, 1, 1)
Numbers.BackgroundTransparency = 1
Numbers.Size = UDim2.new(1, 0, 1, 0)
Numbers.ZIndex = 4
Numbers.Font = Enum.Font.Code
Numbers.Text = ""
Numbers.TextColor3 = Color3.new(1, 0.776471, 0)
Numbers.TextSize = 15
Numbers.TextXAlignment = Enum.TextXAlignment.Left
Numbers.TextYAlignment = Enum.TextYAlignment.Top

Info.Name = "Info"
Info.Parent = Source
Info.BackgroundColor3 = Color3.new(1, 1, 1)
Info.BackgroundTransparency = 1
Info.Size = UDim2.new(1, 0, 1, 0)
Info.ZIndex = 5
Info.Font = Enum.Font.Code
Info.Text = ""
Info.TextColor3 = Color3.new(0, 0.635294, 1)
Info.TextSize = 15
Info.TextXAlignment = Enum.TextXAlignment.Left
Info.TextYAlignment = Enum.TextYAlignment.Top

Lines.Name = "Lines"
Lines.Parent = ScrollingFrame
Lines.BackgroundColor3 = Color3.new(1, 1, 1)
Lines.BackgroundTransparency = 1
Lines.BorderSizePixel = 0
Lines.Size = UDim2.new(0, 40, 0, 10000)
Lines.ZIndex = 4
Lines.Font = Enum.Font.Code
Lines.Text = "1\n"
Lines.TextColor3 = Color3.new(1, 1, 1)
Lines.TextSize = 15
Lines.TextWrapped = true
Lines.TextYAlignment = Enum.TextYAlignment.Top

ColorPicker.Name = "ColorPicker"
ColorPicker.Parent = Prefabs
ColorPicker.BackgroundColor3 = Color3.new(1, 1, 1)
ColorPicker.BackgroundTransparency = 1
ColorPicker.Size = UDim2.new(0, 180, 0, 110)
ColorPicker.Image = "rbxassetid://2851929490"
ColorPicker.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
ColorPicker.ScaleType = Enum.ScaleType.Slice
ColorPicker.SliceCenter = Rect.new(4, 4, 4, 4)

Palette.Name = "Palette"
Palette.Parent = ColorPicker
Palette.BackgroundColor3 = Color3.new(1, 1, 1)
Palette.BackgroundTransparency = 1
Palette.Position = UDim2.new(0.0500000007, 0, 0.0500000007, 0)
Palette.Size = UDim2.new(0, 100, 0, 100)
Palette.Image = "rbxassetid://698052001"
Palette.ScaleType = Enum.ScaleType.Slice
Palette.SliceCenter = Rect.new(4, 4, 4, 4)

Indicator_3.Name = "Indicator"
Indicator_3.Parent = Palette
Indicator_3.BackgroundColor3 = Color3.new(1, 1, 1)
Indicator_3.BackgroundTransparency = 1
Indicator_3.Size = UDim2.new(0, 5, 0, 5)
Indicator_3.ZIndex = 2
Indicator_3.Image = "rbxassetid://2851926732"
Indicator_3.ImageColor3 = Color3.new(0, 0, 0)
Indicator_3.ScaleType = Enum.ScaleType.Slice
Indicator_3.SliceCenter = Rect.new(12, 12, 12, 12)

Sample.Name = "Sample"
Sample.Parent = ColorPicker
Sample.BackgroundColor3 = Color3.new(1, 1, 1)
Sample.BackgroundTransparency = 1
Sample.Position = UDim2.new(0.800000012, 0, 0.0500000007, 0)
Sample.Size = UDim2.new(0, 25, 0, 25)
Sample.Image = "rbxassetid://2851929490"
Sample.ScaleType = Enum.ScaleType.Slice
Sample.SliceCenter = Rect.new(4, 4, 4, 4)

Saturation.Name = "Saturation"
Saturation.Parent = ColorPicker
Saturation.BackgroundColor3 = Color3.new(1, 1, 1)
Saturation.Position = UDim2.new(0.649999976, 0, 0.0500000007, 0)
Saturation.Size = UDim2.new(0, 15, 0, 100)
Saturation.Image = "rbxassetid://3641079629"

Indicator_4.Name = "Indicator"
Indicator_4.Parent = Saturation
Indicator_4.BackgroundColor3 = Color3.new(1, 1, 1)
Indicator_4.BorderSizePixel = 0
Indicator_4.Size = UDim2.new(0, 20, 0, 2)
Indicator_4.ZIndex = 2

Switch.Name = "Switch"
Switch.Parent = Prefabs
Switch.BackgroundColor3 = Color3.new(1, 1, 1)
Switch.BackgroundTransparency = 1
Switch.BorderSizePixel = 0
Switch.Position = UDim2.new(0.229411766, 0, 0.20714286, 0)
Switch.Size = UDim2.new(0, 20, 0, 20)
Switch.ZIndex = 2
Switch.Font = Enum.Font.SourceSans
Switch.Text = ""
Switch.TextColor3 = Color3.new(1, 1, 1)
Switch.TextSize = 18

TextButton_Roundify_4px_4.Name = "TextButton_Roundify_4px"
TextButton_Roundify_4px_4.Parent = Switch
TextButton_Roundify_4px_4.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_Roundify_4px_4.BackgroundTransparency = 1
TextButton_Roundify_4px_4.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_4px_4.Image = "rbxassetid://2851929490"
TextButton_Roundify_4px_4.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
TextButton_Roundify_4px_4.ImageTransparency = 0.5
TextButton_Roundify_4px_4.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_4px_4.SliceCenter = Rect.new(4, 4, 4, 4)

Title_3.Name = "Title"
Title_3.Parent = Switch
Title_3.BackgroundColor3 = Color3.new(1, 1, 1)
Title_3.BackgroundTransparency = 1
Title_3.Position = UDim2.new(1.20000005, 0, 0, 0)
Title_3.Size = UDim2.new(0, 20, 0, 20)
Title_3.Font = Enum.Font.GothamSemibold
Title_3.Text = "Switch"
Title_3.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Title_3.TextSize = 14
Title_3.TextXAlignment = Enum.TextXAlignment.Left

Button_2.Name = "Button"
Button_2.Parent = Prefabs
Button_2.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
Button_2.BackgroundTransparency = 1
Button_2.BorderSizePixel = 0
Button_2.Size = UDim2.new(0, 91, 0, 20)
Button_2.ZIndex = 2
Button_2.Font = Enum.Font.GothamSemibold
Button_2.TextColor3 = Color3.new(1, 1, 1)
Button_2.TextSize = 14

TextButton_Roundify_4px_5.Name = "TextButton_Roundify_4px"
TextButton_Roundify_4px_5.Parent = Button_2
TextButton_Roundify_4px_5.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_Roundify_4px_5.BackgroundTransparency = 1
TextButton_Roundify_4px_5.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_4px_5.Image = "rbxassetid://2851929490"
TextButton_Roundify_4px_5.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
TextButton_Roundify_4px_5.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_4px_5.SliceCenter = Rect.new(4, 4, 4, 4)

DropdownButton.Name = "DropdownButton"
DropdownButton.Parent = Prefabs
DropdownButton.BackgroundColor3 = Color3.new(0.129412, 0.133333, 0.141176)
DropdownButton.BorderSizePixel = 0
DropdownButton.Size = UDim2.new(1, 0, 0, 20)
DropdownButton.ZIndex = 3
DropdownButton.Font = Enum.Font.GothamBold
DropdownButton.Text = "      Button"
DropdownButton.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
DropdownButton.TextSize = 14
DropdownButton.TextXAlignment = Enum.TextXAlignment.Left

Keybind.Name = "Keybind"
Keybind.Parent = Prefabs
Keybind.BackgroundColor3 = Color3.new(1, 1, 1)
Keybind.BackgroundTransparency = 1
Keybind.Size = UDim2.new(0, 200, 0, 20)
Keybind.Image = "rbxassetid://2851929490"
Keybind.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
Keybind.ScaleType = Enum.ScaleType.Slice
Keybind.SliceCenter = Rect.new(4, 4, 4, 4)

Title_4.Name = "Title"
Title_4.Parent = Keybind
Title_4.BackgroundColor3 = Color3.new(1, 1, 1)
Title_4.BackgroundTransparency = 1
Title_4.Size = UDim2.new(0, 0, 1, 0)
Title_4.Font = Enum.Font.GothamBold
Title_4.Text = "Keybind"
Title_4.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Title_4.TextSize = 14
Title_4.TextXAlignment = Enum.TextXAlignment.Left

Input.Name = "Input"
Input.Parent = Keybind
Input.BackgroundColor3 = Color3.new(1, 1, 1)
Input.BackgroundTransparency = 1
Input.BorderSizePixel = 0
Input.Position = UDim2.new(1, -85, 0, 2)
Input.Size = UDim2.new(0, 80, 1, -4)
Input.ZIndex = 2
Input.Font = Enum.Font.GothamSemibold
Input.Text = "RShift"
Input.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Input.TextSize = 12
Input.TextWrapped = true

Input_Roundify_4px.Name = "Input_Roundify_4px"
Input_Roundify_4px.Parent = Input
Input_Roundify_4px.BackgroundColor3 = Color3.new(1, 1, 1)
Input_Roundify_4px.BackgroundTransparency = 1
Input_Roundify_4px.Size = UDim2.new(1, 0, 1, 0)
Input_Roundify_4px.Image = "rbxassetid://2851929490"
Input_Roundify_4px.ImageColor3 = Color3.new(0.290196, 0.294118, 0.313726)
Input_Roundify_4px.ScaleType = Enum.ScaleType.Slice
Input_Roundify_4px.SliceCenter = Rect.new(4, 4, 4, 4)

Windows.Name = "Windows"
Windows.Parent = imgui
Windows.BackgroundColor3 = Color3.new(1, 1, 1)
Windows.BackgroundTransparency = 1
Windows.Position = UDim2.new(0, 20, 0, 20)
Windows.Size = UDim2.new(1, 20, 1, -20)

--[[ Script ]]--
script.Parent = imgui

local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RS = game:GetService("RunService")
local ps = game:GetService("Players")

local p = ps.LocalPlayer
local mouse = p:GetMouse()

local Prefabs = script.Parent:WaitForChild("Prefabs")
local Windows = script.Parent:FindFirstChild("Windows")

local checks = {
	["binding"] = false,
}

UIS.InputBegan:Connect(function(input, gameProcessed)
	if input.KeyCode == ((typeof(ui_options.toggle_key) == "EnumItem") and ui_options.toggle_key or Enum.KeyCode.RightControl) then
		if script.Parent then
			if not checks.binding then
				script.Parent.Enabled = not script.Parent.Enabled
			end
		end
	end
end)

local function Resize(part, new, _delay)
	_delay = _delay or 0.5
	local tweenInfo = TweenInfo.new(_delay, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	local tween = TweenService:Create(part, tweenInfo, new)
	tween:Play()
end

local function rgbtohsv(r, g, b) -- idk who made this function, but thanks
	r, g, b = r / 255, g / 255, b / 255
	local max, min = math.max(r, g, b), math.min(r, g, b)
	local h, s, v
	v = max

	local d = max - min
	if max == 0 then
		s = 0
	else
		s = d / max
	end

	if max == min then
		h = 0
	else
		if max == r then
			h = (g - b) / d
			if g < b then
				h = h + 6
			end
		elseif max == g then
			h = (b - r) / d + 2
		elseif max == b then
			h = (r - g) / d + 4
		end
		h = h / 6
	end

	return h, s, v
end

local function hasprop(object, prop)
	local a, b = pcall(function()
		return object[tostring(prop)]
	end)
	if a then
		return b
	end
end

local function gNameLen(obj)
	return obj.TextBounds.X + 15
end

local function gMouse()
	return Vector2.new(UIS:GetMouseLocation().X + 1, UIS:GetMouseLocation().Y - 35)
end

local function ripple(button, x, y)
	spawn(function()
		button.ClipsDescendants = true

		local circle = Prefabs:FindFirstChild("Circle"):Clone()

		circle.Parent = button
		circle.ZIndex = 1000

		local new_x = x - circle.AbsolutePosition.X
		local new_y = y - circle.AbsolutePosition.Y
		circle.Position = UDim2.new(0, new_x, 0, new_y)

		local size = 0
		if button.AbsoluteSize.X > button.AbsoluteSize.Y then
			 size = button.AbsoluteSize.X * 1.5
		elseif button.AbsoluteSize.X < button.AbsoluteSize.Y then
			 size = button.AbsoluteSize.Y * 1.5
		elseif button.AbsoluteSize.X == button.AbsoluteSize.Y then
			size = button.AbsoluteSize.X * 1.5
		end

		circle:TweenSizeAndPosition(UDim2.new(0, size, 0, size), UDim2.new(0.5, -size / 2, 0.5, -size / 2), "Out", "Quad", 0.5, false, nil)
		Resize(circle, {ImageTransparency = 1}, 0.5)

		wait(0.5)
		circle:Destroy()
	end)
end

local windows = 0
local library = {}

local function format_windows()
	local ull = Prefabs:FindFirstChild("UIListLayout"):Clone()
	ull.Parent = Windows
	local data = {}

	for i,v in next, Windows:GetChildren() do
		if not (v:IsA("UIListLayout")) then
			data[v] = v.AbsolutePosition
		end
	end

	ull:Destroy()

	for i,v in next, data do
		i.Position = UDim2.new(0, v.X, 0, v.Y)
	end
end

function library:FormatWindows()
	format_windows()
end

function library:AddWindow(title, options)
	windows = windows + 1
	_G.dropdown_open = false
	title = tostring(title or "New Window")
	options = (typeof(options) == "table") and options or ui_options
	options.tween_time = 0.1

	local Window = Prefabs:FindFirstChild("Window"):Clone()
	Window.Parent = Windows
	Window:FindFirstChild("Title").Text = title
	Window.Size = UDim2.new(0, options.min_size.X, 0, options.min_size.Y)
	Window.ZIndex = Window.ZIndex + (windows * 10)

	do -- Altering Window Color
		local Title = Window:FindFirstChild("Title")
		local Bar = Window:FindFirstChild("Bar")
		local Base = Bar:FindFirstChild("Base")
		local Top = Bar:FindFirstChild("Top")
		local SplitFrame = Window:FindFirstChild("TabSelection"):FindFirstChild("Frame")
		local Toggle = Bar:FindFirstChild("Toggle")

		spawn(function()
			while true do
				Bar.BackgroundColor3 = options.main_color
				Base.BackgroundColor3 = options.main_color
				Base.ImageColor3 = options.main_color
				Top.ImageColor3 = options.main_color
				SplitFrame.BackgroundColor3 = options.main_color

				RS.Heartbeat:Wait()
			end
		end)

	end

	local Resizer = Window:WaitForChild("Resizer")

	local window_data = {}
	Window.Draggable = true

	do -- Resize Window
		local oldIcon = mouse.Icon
		local Entered = false
		Resizer.MouseEnter:Connect(function()
			Window.Draggable = false
			if options.can_resize then
				oldIcon = mouse.Icon
				-- mouse.Icon = "http://www.roblox.com/asset?id=4745131330"
			end
			Entered = true
		end)

		Resizer.MouseLeave:Connect(function()
			Entered = false
			if options.can_resize then
				mouse.Icon = oldIcon
			end
			Window.Draggable = true
		end)

		local Held = false
		UIS.InputBegan:Connect(function(inputObject)
			if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
				Held = true

				spawn(function() -- Loop check
					if Entered and Resizer.Active and options.can_resize then
						while Held and Resizer.Active do

							local mouse_location = gMouse()
							local x = mouse_location.X - Window.AbsolutePosition.X
							local y = mouse_location.Y - Window.AbsolutePosition.Y

							--
							if x >= options.min_size.X and y >= options.min_size.Y then
								Resize(Window, {Size = UDim2.new(0, x, 0, y)}, options.tween_time)
							elseif x >= options.min_size.X then
								Resize(Window, {Size = UDim2.new(0, x, 0, options.min_size.Y)}, options.tween_time)
							elseif y >= options.min_size.Y then
								Resize(Window, {Size = UDim2.new(0, options.min_size.X, 0, y)}, options.tween_time)
							else
								Resize(Window, {Size = UDim2.new(0, options.min_size.X, 0, options.min_size.Y)}, options.tween_time)
							end

							RS.Heartbeat:Wait()
						end
					end
				end)
			end
		end)
		UIS.InputEnded:Connect(function(inputObject)
			if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
				Held = false
			end
		end)
	end

	do -- [Open / Close] Window
		local open_close = Window:FindFirstChild("Bar"):FindFirstChild("Toggle")
		local open = true
		local canopen = true

		local oldwindowdata = {}
		local oldy = Window.AbsoluteSize.Y
		open_close.MouseButton1Click:Connect(function()
			if canopen then
				canopen = false

				if open then
					-- Close

					oldwindowdata = {}
					for i,v in next, Window:FindFirstChild("Tabs"):GetChildren() do
						oldwindowdata[v] = v.Visible
						v.Visible = false
					end

					Resizer.Active = false

					oldy = Window.AbsoluteSize.Y
					Resize(open_close, {Rotation = 0}, options.tween_time)
					Resize(Window, {Size = UDim2.new(0, Window.AbsoluteSize.X, 0, 26)}, options.tween_time)
					open_close.Parent:FindFirstChild("Base").Transparency = 1

				else
					-- Open

					for i,v in next, oldwindowdata do
						i.Visible = v
					end

					Resizer.Active = true

					Resize(open_close, {Rotation = 90}, options.tween_time)
					Resize(Window, {Size = UDim2.new(0, Window.AbsoluteSize.X, 0, oldy)}, options.tween_time)
					open_close.Parent:FindFirstChild("Base").Transparency = 0

				end

				open = not open
				wait(options.tween_time)
				canopen = true

			end
		end)
	end

	do -- UI Elements
		local tabs = Window:FindFirstChild("Tabs")
		local tab_selection = Window:FindFirstChild("TabSelection")
		local tab_buttons = tab_selection:FindFirstChild("TabButtons")

		do -- Add Tab
			function window_data:AddTab(tab_name)
				local tab_data = {}
				tab_name = tostring(tab_name or "LocalPlayer")
				tab_selection.Visible = true

				local new_button = Prefabs:FindFirstChild("TabButton"):Clone()
				new_button.Parent = tab_buttons
				new_button.Text = tab_name
				new_button.Size = UDim2.new(0, gNameLen(new_button), 0, 20)
				new_button.ZIndex = new_button.ZIndex + (windows * 10)
				new_button:GetChildren()[1].ZIndex = new_button:GetChildren()[1].ZIndex + (windows * 10)

				local new_tab = Prefabs:FindFirstChild("Tab"):Clone()
				new_tab.Parent = tabs
				new_tab.ZIndex = new_tab.ZIndex + (windows * 10)

				local function show()
					if _G.dropdown_open then return end
					for i, v in next, tab_buttons:GetChildren() do
						if not (v:IsA("UIListLayout")) then
							v:GetChildren()[1].ImageColor3 = Color3.fromRGB(52, 53, 56)
							Resize(v, {Size = UDim2.new(0, v.AbsoluteSize.X, 0, 20)}, options.tween_time)
						end
					end
					for i, v in next, tabs:GetChildren() do
						v.Visible = false
					end

					Resize(new_button, {Size = UDim2.new(0, new_button.AbsoluteSize.X, 0, 25)}, options.tween_time)
					new_button:GetChildren()[1].ImageColor3 = Color3.fromRGB(73, 75, 79)
					new_tab.Visible = true
				end

				new_button.MouseButton1Click:Connect(function()
					show()
				end)

				function tab_data:Show()
					show()
				end

				do -- Tab Elements

					function tab_data:AddLabel(label_text) -- [Label]
						label_text = tostring(label_text or "New Label")

						local label = Prefabs:FindFirstChild("Label"):Clone()

						label.Parent = new_tab
						label.Text = label_text
						label.Size = UDim2.new(0, gNameLen(label), 0, 20)
						label.ZIndex = label.ZIndex + (windows * 10)

						return label
					end

					function tab_data:AddButton(button_text, callback) -- [Button]
						button_text = tostring(button_text or "New Button")
						callback = typeof(callback) == "function" and callback or function()end

						local button = Prefabs:FindFirstChild("Button"):Clone()

						button.Parent = new_tab
						button.Text = button_text
						button.Size = UDim2.new(0, gNameLen(button), 0, 20)
						button.ZIndex = button.ZIndex + (windows * 10)
						button:GetChildren()[1].ZIndex = button:GetChildren()[1].ZIndex + (windows * 10)

						spawn(function()
							while true do
								if button and button:GetChildren()[1] then
									button:GetChildren()[1].ImageColor3 = options.main_color
								end
								RS.Heartbeat:Wait()
							end
						end)

						button.MouseButton1Click:Connect(function()
							ripple(button, mouse.X, mouse.Y)
							pcall(callback)
						end)

						return button
					end

					function tab_data:AddSwitch(switch_text, callback) -- [Switch]
						local switch_data = {}

						switch_text = tostring(switch_text or "New Switch")
						callback = typeof(callback) == "function" and callback or function()end

						local switch = Prefabs:FindFirstChild("Switch"):Clone()

						switch.Parent = new_tab
						switch:FindFirstChild("Title").Text = switch_text

						switch:FindFirstChild("Title").ZIndex = switch:FindFirstChild("Title").ZIndex + (windows * 10)
						switch.ZIndex = switch.ZIndex + (windows * 10)
						switch:GetChildren()[1].ZIndex = switch:GetChildren()[1].ZIndex + (windows * 10)

						spawn(function()
							while true do
								if switch and switch:GetChildren()[1] then
									switch:GetChildren()[1].ImageColor3 = options.main_color
								end
								RS.Heartbeat:Wait()
							end
						end)

						local toggled = false
						switch.MouseButton1Click:Connect(function()
							toggled = not toggled
							switch.Text = toggled and utf8.char(10003) or ""
							pcall(callback, toggled)
						end)

						function switch_data:Set(bool)
							toggled = (typeof(bool) == "boolean") and bool or false
							switch.Text = toggled and utf8.char(10003) or ""
							pcall(callback,toggled)
						end

						return switch_data, switch
					end

					function tab_data:AddTextBox(textbox_text, callback, textbox_options)
						textbox_text = tostring(textbox_text or "New TextBox")
						callback = typeof(callback) == "function" and callback or function()end
						textbox_options = typeof(textbox_options) == "table" and textbox_options or {["clear"] = true}
						textbox_options = {
							["clear"] = ((textbox_options.clear) == true)
						}

						local textbox = Prefabs:FindFirstChild("TextBox"):Clone()

						textbox.Parent = new_tab
						textbox.PlaceholderText = textbox_text
						textbox.ZIndex = textbox.ZIndex + (windows * 10)
						textbox:GetChildren()[1].ZIndex = textbox:GetChildren()[1].ZIndex + (windows * 10)

						textbox.FocusLost:Connect(function(ep)
							if ep then
								if #textbox.Text > 0 then
									pcall(callback, textbox.Text)
									if textbox_options.clear then
										textbox.Text = ""
									end
								end
							end
						end)

						return textbox
					end

					function tab_data:AddSlider(slider_text, callback, slider_options)
						local slider_data = {}

						slider_text = tostring(slider_text or "New Slider")
						callback = typeof(callback) == "function" and callback or function()end
						slider_options = typeof(slider_options) == "table" and slider_options or {}
						slider_options = {
							["min"] = slider_options.min or 0,
							["max"] = slider_options.max or 100,
							["readonly"] = slider_options.readonly or false,
						}

						local slider = Prefabs:FindFirstChild("Slider"):Clone()

						slider.Parent = new_tab
						slider.ZIndex = slider.ZIndex + (windows * 10)

						local title = slider:FindFirstChild("Title")
						local indicator = slider:FindFirstChild("Indicator")
						local value = slider:FindFirstChild("Value")
						title.ZIndex = title.ZIndex + (windows * 10)
						indicator.ZIndex = indicator.ZIndex + (windows * 10)
						value.ZIndex = value.ZIndex + (windows * 10)

						title.Text = slider_text

						do -- Slider Math
							local Entered = false
							slider.MouseEnter:Connect(function()
								Entered = true
								Window.Draggable = false
							end)
							slider.MouseLeave:Connect(function()
								Entered = false
								Window.Draggable = true
							end)

							local Held = false
							UIS.InputBegan:Connect(function(inputObject)
								if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
									Held = true

									spawn(function() -- Loop check
										if Entered and not slider_options.readonly then
											while Held and (not _G.dropdown_open) do
												local mouse_location = gMouse()
												local x = (slider.AbsoluteSize.X - (slider.AbsoluteSize.X - ((mouse_location.X - slider.AbsolutePosition.X)) + 1)) / slider.AbsoluteSize.X

												local min = 0
												local max = 1

												local size = min
												if x >= min and x <= max then
													size = x
												elseif x < min then
													size = min
												elseif x > max then
													size = max
												end

												Resize(indicator, {Size = UDim2.new(size or min, 0, 0, 20)}, options.tween_time)
												local p = math.floor((size or min) * 100)

												local maxv = slider_options.max
												local minv = slider_options.min
												local diff = maxv - minv

												local sel_value = math.floor(((diff / 100) * p) + minv)

												value.Text = tostring(sel_value)
												pcall(callback, sel_value)

												RS.Heartbeat:Wait()
											end
										end
									end)
								end
							end)
							UIS.InputEnded:Connect(function(inputObject)
								if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
									Held = false
								end
							end)

							function slider_data:Set(new_value)
								new_value = tonumber(new_value) or 0
								new_value = (((new_value >= 0 and new_value <= 100) and new_value) / 100)

								Resize(indicator, {Size = UDim2.new(new_value or 0, 0, 0, 20)}, options.tween_time)
								local p = math.floor((new_value or 0) * 100)

								local maxv = slider_options.max
								local minv = slider_options.min
								local diff = maxv - minv

								local sel_value = math.floor(((diff / 100) * p) + minv)

								value.Text = tostring(sel_value)
								pcall(callback, sel_value)
							end

							slider_data:Set(slider_options["min"])
						end

						return slider_data, slider
					end

					function tab_data:AddKeybind(keybind_name, callback, keybind_options)
						local keybind_data = {}

						keybind_name = tostring(keybind_name or "New Keybind")
						callback = typeof(callback) == "function" and callback or function()end
						keybind_options = typeof(keybind_options) == "table" and keybind_options or {}
						keybind_options = {
							["standard"] = keybind_options.standard or Enum.KeyCode.RightControl,
						}

						local keybind = Prefabs:FindFirstChild("Keybind"):Clone()
						local input = keybind:FindFirstChild("Input")
						local title = keybind:FindFirstChild("Title")
						keybind.ZIndex = keybind.ZIndex + (windows * 10)
						input.ZIndex = input.ZIndex + (windows * 10)
						input:GetChildren()[1].ZIndex = input:GetChildren()[1].ZIndex + (windows * 10)
						title.ZIndex = title.ZIndex + (windows * 10)

						keybind.Parent = new_tab
						title.Text = "  " .. keybind_name
						keybind.Size = UDim2.new(0, gNameLen(title) + 80, 0, 20)

						local shortkeys = { -- thanks to stroketon for helping me out with this
				            RightControl = 'RightCtrl',
				            LeftControl = 'LeftCtrl',
				            LeftShift = 'LShift',
				            RightShift = 'RShift',
				            MouseButton1 = "Mouse1",
				            MouseButton2 = "Mouse2"
				        }

						local keybind = keybind_options.standard

						function keybind_data:SetKeybind(Keybind)
							local key = shortkeys[Keybind.Name] or Keybind.Name
							input.Text = key
							keybind = Keybind
						end

						UIS.InputBegan:Connect(function(a, b)
							if checks.binding then
								spawn(function()
									wait()
									checks.binding = false
								end)
								return
							end
							if a.KeyCode == keybind and not b then
								pcall(callback, keybind)
							end
						end)

						keybind_data:SetKeybind(keybind_options.standard)

						input.MouseButton1Click:Connect(function()
							if checks.binding then return end
							input.Text = "..."
							checks.binding = true
							local a, b = UIS.InputBegan:Wait()
							keybind_data:SetKeybind(a.KeyCode)
						end)

						return keybind_data, keybind
					end

					function tab_data:AddDropdown(dropdown_name, callback)
						local dropdown_data = {}
						dropdown_name = tostring(dropdown_name or "New Dropdown")
						callback = typeof(callback) == "function" and callback or function()end

						local dropdown = Prefabs:FindFirstChild("Dropdown"):Clone()
						local box = dropdown:FindFirstChild("Box")
						local objects = box:FindFirstChild("Objects")
						local indicator = dropdown:FindFirstChild("Indicator")
						dropdown.ZIndex = dropdown.ZIndex + (windows * 10)
						box.ZIndex = box.ZIndex + (windows * 10)
						objects.ZIndex = objects.ZIndex + (windows * 10)
						indicator.ZIndex = indicator.ZIndex + (windows * 10)
						dropdown:GetChildren()[3].ZIndex = dropdown:GetChildren()[3].ZIndex + (windows * 10)

						dropdown.Parent = new_tab
						dropdown.Text = "      " .. dropdown_name
						box.Size = UDim2.new(1, 0, 0, 0)

						local open = false
						dropdown.MouseButton1Click:Connect(function()
							open = not open

							local len = (#objects:GetChildren() - 1) * 20
							if #objects:GetChildren() - 1 >= 10 then
								len = 10 * 20
								objects.CanvasSize = UDim2.new(0, 0, (#objects:GetChildren() - 1) * 0.1, 0)
							end

							if open then -- Open
								if _G.dropdown_open then return end
								_G.dropdown_open = true
								Resize(box, {Size = UDim2.new(1, 0, 0, len)}, options.tween_time)
								Resize(indicator, {Rotation = 90}, options.tween_time)
							else -- Close
								_G.dropdown_open = false
								Resize(box, {Size = UDim2.new(1, 0, 0, 0)}, options.tween_time)
								Resize(indicator, {Rotation = -90}, options.tween_time)
							end

						end)

						function dropdown_data:Add(n)
							local object_data = {}
							n = tostring(n or "New Object")

							local object = Prefabs:FindFirstChild("DropdownButton"):Clone()

							object.Parent = objects
							object.Text = n
							object.ZIndex = object.ZIndex + (windows * 10)

							object.MouseEnter:Connect(function()
								object.BackgroundColor3 = options.main_color
							end)
							object.MouseLeave:Connect(function()
								object.BackgroundColor3 = Color3.fromRGB(33, 34, 36)
							end)

							if open then
								local len = (#objects:GetChildren() - 1) * 20
								if #objects:GetChildren() - 1 >= 10 then
									len = 10 * 20
									objects.CanvasSize = UDim2.new(0, 0, (#objects:GetChildren() - 1) * 0.1, 0)
								end
								Resize(box, {Size = UDim2.new(1, 0, 0, len)}, options.tween_time)
							end

							object.MouseButton1Click:Connect(function()
								if _G.dropdown_open then
									dropdown.Text = "      [ " .. n .. " ]"
									_G.dropdown_open = false
									open = false
									Resize(box, {Size = UDim2.new(1, 0, 0, 0)}, options.tween_time)
									Resize(indicator, {Rotation = -90}, options.tween_time)
									pcall(callback, n)
								end
							end)

							function object_data:Remove()
								object:Destroy()
							end

							return object, object_data
						end

						return dropdown_data, dropdown
					end

					function tab_data:AddColorPicker(callback)
						local color_picker_data = {}
						callback = typeof(callback) == "function" and callback or function()end

						local color_picker = Prefabs:FindFirstChild("ColorPicker"):Clone()

						color_picker.Parent = new_tab
						color_picker.ZIndex = color_picker.ZIndex + (windows * 10)

						local palette = color_picker:FindFirstChild("Palette")
						local sample = color_picker:FindFirstChild("Sample")
						local saturation = color_picker:FindFirstChild("Saturation")
						palette.ZIndex = palette.ZIndex + (windows * 10)
						sample.ZIndex = sample.ZIndex + (windows * 10)
						saturation.ZIndex = saturation.ZIndex + (windows * 10)

						do -- Color Picker Math
							local h = 0
							local s = 1
							local v = 1

							local function update()
								local color = Color3.fromHSV(h, s, v)
								sample.ImageColor3 = color
								saturation.ImageColor3 = Color3.fromHSV(h, 1, 1)
								pcall(callback, color)
							end

							do
								local color = Color3.fromHSV(h, s, v)
								sample.ImageColor3 = color
								saturation.ImageColor3 = Color3.fromHSV(h, 1, 1)
							end

							local Entered1, Entered2 = false, false
							palette.MouseEnter:Connect(function()
								Window.Draggable = false
								Entered1 = true
							end)
							palette.MouseLeave:Connect(function()
								Window.Draggable = true
								Entered1 = false
							end)
							saturation.MouseEnter:Connect(function()
								Window.Draggable = false
								Entered2 = true
							end)
							saturation.MouseLeave:Connect(function()
								Window.Draggable = true
								Entered2 = false
							end)

							local palette_indicator = palette:FindFirstChild("Indicator")
							local saturation_indicator = saturation:FindFirstChild("Indicator")
							palette_indicator.ZIndex = palette_indicator.ZIndex + (windows * 10)
							saturation_indicator.ZIndex = saturation_indicator.ZIndex + (windows * 10)

							local Held = false
							UIS.InputBegan:Connect(function(inputObject)
								if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
									Held = true

									spawn(function() -- Loop check
										while Held and Entered1 and (not _G.dropdown_open) do -- Palette
											local mouse_location = gMouse()

											local x = ((palette.AbsoluteSize.X - (mouse_location.X - palette.AbsolutePosition.X)) + 1)
											local y = ((palette.AbsoluteSize.Y - (mouse_location.Y - palette.AbsolutePosition.Y)) + 1.5)

											local color = Color3.fromHSV(x / 100, y / 100, 0)
											h = x / 100
											s = y / 100

											Resize(palette_indicator, {Position = UDim2.new(0, math.abs(x - 100) - (palette_indicator.AbsoluteSize.X / 2), 0, math.abs(y - 100) - (palette_indicator.AbsoluteSize.Y / 2))}, options.tween_time)

											update()
											RS.Heartbeat:Wait()
										end

										while Held and Entered2 and (not _G.dropdown_open) do -- Saturation
											local mouse_location = gMouse()
											local y = ((palette.AbsoluteSize.Y - (mouse_location.Y - palette.AbsolutePosition.Y)) + 1.5)
											v = y / 100

											Resize(saturation_indicator, {Position = UDim2.new(0, 0, 0, math.abs(y - 100))}, options.tween_time)

											update()
											RS.Heartbeat:Wait()
										end
									end)
								end
							end)
							UIS.InputEnded:Connect(function(inputObject)
								if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
									Held = false
								end
							end)

							function color_picker_data:Set(color)
								color = typeof(color) == "Color3" and color or Color3.new(1, 1, 1)
								local h2, s2, v2 = rgbtohsv(color.r * 255, color.g * 255, color.b * 255)
								sample.ImageColor3 = color
								saturation.ImageColor3 = Color3.fromHSV(h2, 1, 1)
								pcall(callback, color)
							end
						end

						return color_picker_data, color_picker
					end

					function tab_data:AddConsole(console_options)
						local console_data = {}

						console_options = typeof(console_options) == "table" and console_options or {["readonly"] = true,["full"] = false,}
						console_options = {
							["y"] = tonumber(console_options.y) or 200,
							["source"] = console_options.source or "Logs",
							["readonly"] = ((console_options.readonly) == true),
							["full"] = ((console_options.full) == true),
						}

						local console = Prefabs:FindFirstChild("Console"):Clone()

						console.Parent = new_tab
						console.ZIndex = console.ZIndex + (windows * 10)
						console.Size = UDim2.new(1, 0, console_options.full and 1 or 0, console_options.y)

						local sf = console:GetChildren()[1]
						local Source = sf:FindFirstChild("Source")
						local Lines = sf:FindFirstChild("Lines")
						Source.ZIndex = Source.ZIndex + (windows * 10)
						Lines.ZIndex = Lines.ZIndex + (windows * 10)

						Source.TextEditable = not console_options.readonly

						do -- Syntax Zindex
							for i,v in next, Source:GetChildren() do
								v.ZIndex = v.ZIndex + (windows * 10) + 1
							end
						end
						Source.Comments.ZIndex = Source.Comments.ZIndex + 1

						do -- Highlighting (thanks to whoever made this)
							local lua_keywords = {"and", "break", "do", "else", "elseif", "end", "false", "for", "function", "goto", "if", "in", "local", "nil", "not", "or", "repeat", "return", "then", "true", "until", "while"}
							local global_env = {"getrawmetatable", "newcclosure", "islclosure", "setclipboard", "game", "workspace", "script", "math", "string", "table", "print", "wait", "BrickColor", "Color3", "next", "pairs", "ipairs", "select", "unpack", "Instance", "Vector2", "Vector3", "CFrame", "Ray", "UDim2", "Enum", "assert", "error", "warn", "tick", "loadstring", "_G", "shared", "getfenv", "setfenv", "newproxy", "setmetatable", "getmetatable", "os", "debug", "pcall", "ypcall", "xpcall", "rawequal", "rawset", "rawget", "tonumber", "tostring", "type", "typeof", "_VERSION", "coroutine", "delay", "require", "spawn", "LoadLibrary", "settings", "stats", "time", "UserSettings", "version", "Axes", "ColorSequence", "Faces", "ColorSequenceKeypoint", "NumberRange", "NumberSequence", "NumberSequenceKeypoint", "gcinfo", "elapsedTime", "collectgarbage", "PhysicalProperties", "Rect", "Region3", "Region3int16", "UDim", "Vector2int16", "Vector3int16", "load", "fire", "Fire"}

							local Highlight = function(string, keywords)
							    local K = {}
							    local S = string
							    local Token =
							    {
							        ["="] = true,
							        ["."] = true,
							        [","] = true,
							        ["("] = true,
							        [")"] = true,
							        ["["] = true,
							        ["]"] = true,
							        ["{"] = true,
							        ["}"] = true,
							        [":"] = true,
							        ["*"] = true,
							        ["/"] = true,
							        ["+"] = true,
							        ["-"] = true,
							        ["%"] = true,
									[";"] = true,
									["~"] = true
							    }
							    for i, v in pairs(keywords) do
							        K[v] = true
							    end
							    S = S:gsub(".", function(c)
							        if Token[c] ~= nil then
							            return "\32"
							        else
							            return c
							        end
							    end)
							    S = S:gsub("%S+", function(c)
							        if K[c] ~= nil then
							            return c
							        else
							            return (" "):rep(#c)
							        end
							    end)

							    return S
							end

							local hTokens = function(string)
							    local Token =
							    {
							        ["="] = true,
							        ["."] = true,
							        [","] = true,
							        ["("] = true,
							        [")"] = true,
							        ["["] = true,
							        ["]"] = true,
							        ["{"] = true,
							        ["}"] = true,
							        [":"] = true,
							        ["*"] = true,
							        ["/"] = true,
							        ["+"] = true,
							        ["-"] = true,
							        ["%"] = true,
									[";"] = true,
									["~"] = true
							    }
							    local A = ""
							    string:gsub(".", function(c)
							        if Token[c] ~= nil then
							            A = A .. c
							        elseif c == "\n" then
							            A = A .. "\n"
									elseif c == "\t" then
										A = A .. "\t"
							        else
							            A = A .. "\32"
							        end
							    end)

							    return A
							end

							local strings = function(string)
							    local highlight = ""
							    local quote = false
							    string:gsub(".", function(c)
							        if quote == false and c == "\34" then
							            quote = true
							        elseif quote == true and c == "\34" then
							            quote = false
							        end
							        if quote == false and c == "\34" then
							            highlight = highlight .. "\34"
							        elseif c == "\n" then
							            highlight = highlight .. "\n"
									elseif c == "\t" then
									    highlight = highlight .. "\t"
							        elseif quote == true then
							            highlight = highlight .. c
							        elseif quote == false then
							            highlight = highlight .. "\32"
							        end
							    end)

							    return highlight
							end

							local info = function(string)
							    local highlight = ""
							    local quote = false
							    string:gsub(".", function(c)
							        if quote == false and c == "[" then
							            quote = true
							        elseif quote == true and c == "]" then
							            quote = false
							        end
							        if quote == false and c == "\]" then
							            highlight = highlight .. "\]"
							        elseif c == "\n" then
							            highlight = highlight .. "\n"
									elseif c == "\t" then
									    highlight = highlight .. "\t"
							        elseif quote == true then
							            highlight = highlight .. c
							        elseif quote == false then
							            highlight = highlight .. "\32"
							        end
							    end)

							    return highlight
							end

							local comments = function(string)
							    local ret = ""
							    string:gsub("[^\r\n]+", function(c)
							        local comm = false
							        local i = 0
							        c:gsub(".", function(n)
							            i = i + 1
							            if c:sub(i, i + 1) == "--" then
							                comm = true
							            end
							            if comm == true then
							                ret = ret .. n
							            else
							                ret = ret .. "\32"
							            end
							        end)
							        ret = ret
							    end)

							    return ret
							end

							local numbers = function(string)
							    local A = ""
							    string:gsub(".", function(c)
							        if tonumber(c) ~= nil then
							            A = A .. c
							        elseif c == "\n" then
							            A = A .. "\n"
									elseif c == "\t" then
										A = A .. "\t"
							        else
							            A = A .. "\32"
							        end
							    end)

							    return A
							end

							local highlight_lua = function(type)
								if type == "Text" then
									Source.Text = Source.Text:gsub("\13", "")
									Source.Text = Source.Text:gsub("\t", "      ")
									local s = Source.Text

									Source.Keywords.Text = Highlight(s, lua_keywords)
									Source.Globals.Text = Highlight(s, global_env)
									Source.RemoteHighlight.Text = Highlight(s, {"FireServer", "fireServer", "InvokeServer", "invokeServer"})
									Source.Tokens.Text = hTokens(s)
									Source.Numbers.Text = numbers(s)
									Source.Strings.Text = strings(s)
									Source.Comments.Text = comments(s)

									local lin = 1
									s:gsub("\n", function()
										lin = lin + 1
									end)

									Lines.Text = ""
									for i = 1, lin do
										Lines.Text = Lines.Text .. i .. "\n"
									end

									sf.CanvasSize = UDim2.new(0, 0, lin * 0.153846154, 0)
								end

							local highlight_logs = function(type)
							end
								if type == "Text" then
									Source.Text = Source.Text:gsub("\13", "")
									Source.Text = Source.Text:gsub("\t", "      ")
									local s = Source.Text

									Source.Info.Text = info(s)

									local lin = 1
									s:gsub("\n", function()
										lin = lin + 1
									end)

									sf.CanvasSize = UDim2.new(0, 0, lin * 0.153846154, 0)
								end
							end

							if console_options.source == "Lua" then
								highlight_lua("Text")
								Source.Changed:Connect(highlight_lua)
							elseif console_options.source == "Logs" then
								Lines.Visible = false

								highlight_logs("Text")
								Source.Changed:Connect(highlight_logs)
							end

							function console_data:Set(code)
								Source.Text = tostring(code)
							end

							function console_data:Get()
								return Source.Text
							end

							function console_data:Log(msg)
								Source.Text = Source.Text .. "[*] " .. tostring(msg) .. "\n"
							end

						end

						return console_data, console
					end

					function tab_data:AddHorizontalAlignment()
						local ha_data = {}

						local ha = Prefabs:FindFirstChild("HorizontalAlignment"):Clone()
						ha.Parent = new_tab

						function ha_data:AddButton(...)
							local data, object
							local ret = {tab_data:AddButton(...)}
							if typeof(ret[1]) == "table" then
								data = ret[1]
								object = ret[2]
								object.Parent = ha
								return data, object
							else
								object = ret[1]
								object.Parent = ha
								return object
							end
						end

						return ha_data, ha
					end

					function tab_data:AddFolder(folder_name) -- [Folder]
						local folder_data = {}

						folder_name = tostring(folder_name or "New Folder")

						local folder = Prefabs:FindFirstChild("Folder"):Clone()
						local button = folder:FindFirstChild("Button")
						local objects = folder:FindFirstChild("Objects")
						local toggle = button:FindFirstChild("Toggle")
						folder.ZIndex = folder.ZIndex + (windows * 10)
						button.ZIndex = button.ZIndex + (windows * 10)
						objects.ZIndex = objects.ZIndex + (windows * 10)
						toggle.ZIndex = toggle.ZIndex + (windows * 10)
						button:GetChildren()[1].ZIndex = button:GetChildren()[1].ZIndex + (windows * 10)

						folder.Parent = new_tab
						button.Text = "      " .. folder_name

						spawn(function()
							while true do
								if button and button:GetChildren()[1] then
									button:GetChildren()[1].ImageColor3 = options.main_color
								end
								RS.Heartbeat:Wait()
							end
						end)

						local function gFolderLen()
							local n = 25
							for i,v in next, objects:GetChildren() do
								if not (v:IsA("UIListLayout")) then
									n = n + v.AbsoluteSize.Y + 5
								end
							end
							return n
						end

						local open = false
						button.MouseButton1Click:Connect(function()
							if open then -- Close
								Resize(toggle, {Rotation = 0}, options.tween_time)
								objects.Visible = false
							else -- Open
								Resize(toggle, {Rotation = 90}, options.tween_time)
								objects.Visible = true
							end

							open = not open
						end)

						spawn(function()
							while true do
								Resize(folder, {Size = UDim2.new(1, 0, 0, (open and gFolderLen() or 20))}, options.tween_time)
								wait()
							end
						end)

						for i,v in next, tab_data do
							folder_data[i] = function(...)
								local data, object
								local ret = {v(...)}
								if typeof(ret[1]) == "table" then
									data = ret[1]
									object = ret[2]
									object.Parent = objects
									return data, object
								else
									object = ret[1]
									object.Parent = objects
									return object
								end
							end
						end

						return folder_data, folder
					end

				end

				return tab_data, new_tab
			end
		end
	end

	do
		for i, v in next, Window:GetDescendants() do
			if hasprop(v, "ZIndex") then
				v.ZIndex = v.ZIndex + (windows * 10)
			end
		end
	end

	return window_data, Window
end

do -- Example UI
	local Window = library:AddWindow("Universal", {
		main_color = _G.maincolor,
		min_size = Vector2.new(480, 310),
		toggle_key = Enum.KeyCode.RightControl,
		can_resize = true,
	})
	local Tab4 = Window.AddTab("LocalPlayer")
	local Tab2 = Window:AddTab("NPC Control")
	local Tab3 = Window:AddTab("Fps Games")
	local Tab5 = Window:AddTab("Tycoons")
	local Tab = Window:AddTab("Trolling")

	do -- Elements	
	    Tab:AddLabel("i spent too long changing this")
		Tab:AddButton("infinity is weird", function()
		local BeeMovieScript = '∞ is weird, its more of a process than an outcome, adding the term ∞ to anything will not only make the subject have a never ending quantity, it will make the object everything, nothing, everywhere and nowhere, ∞ has absolutely no bounds whatsoever. In a theoretical world, lets say you take a piece of paper and cut it in half and then you cut that new paper in half again and again and so forth, you could go on with cutting that paper until ∞, with each cut you zoom into the new piece of paper then you zoom into the new piece of paper and so on and so forth, the cutting and the zooming are depending on each other and they sustain the process, making it everlasting and ∞. ∞ could be like a loop, lets say i loop this text, in a world with no disruptions you would continue to read this until ∞.'
        str = BeeMovieScript
        for word in string.gmatch(str, '([^, ]+)') do
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(word, "All")
            wait(2.5)
        end
            --credits: my math teacher (^^)
		end)
		
		Tab2:AddLabel("Auto click uses mouse1click() (to be universal duh) (for autofarm)")
		
		Tab5:AddLabel('This is only for traditional tycoons. Not "Island Paradise Tycoon" Shit')
		
		Tab5:AddButton("Press All Buttons", function()
		tycoonbutton(1)
		end)
		
		Tab5:AddButton("Get All Weapons", function()
		tycoonbutton(3)
		end)
		
		Tab5:AddButton("Collect Cash", function()
		tycoonbutton(2)
		end)
		
		Tab5:AddSwitch("Auto Tycoon", function(TT)
		_G.TycoonToggle = TT
		if _G.TycoonToggle == true then
		repeat
		wait(1)
		tycoonbutton(2)
		repeat wait() until _G.NotRunning == true or _G.TycoonToggle ~= true
		tycoonbutton(1)
		repeat wait() until _G.NotRunning == true or _G.TycoonToggle ~= true
		until _G.TycoonToggle ~= true
		end
		end)
		
		Tab2:AddTextBox("NPC Name", function(NPCN)
		_G.NPCName = NPCN
		end, {
			["clear"] = false,
		})
		
		_G.NTS = Tab2:AddSlider("NPC Tween Speed(Default 15, Higher = Risk)", function(NTSpeed)
        _G.NPCTweenSpeed = NTSpeed
        end, {
			["min"] = 0,
			["max"] = 100,
		})
		_G.NTS:Set(15)
		
		_G.NHBS = Tab2:AddSlider("NPC Hitbox Size", function(NHBSize)
        _G.NSize = NHBSize
        end, {
			["min"] = 0,
			["max"] = 1000,
		})
		_G.NHBS:Set(10)
		
		_G.NHBS = Tab2:AddSlider("NPC Distance", function(NDistance)
        _G.Distance = tonumber(NDistance*-1)
        end, {
			["min"] = 0,
			["max"] = 30,
		})
		_G.NHBS:Set(10)
		
		Tab2:AddSwitch("NPC Hitbox Toggle", function(NHBT)
        _G.NHBTG = NHBT
        _G.HitboxToggled = NHBT
		HBT()
		end)
		
		Tab2:AddSwitch("NPC Autofarm Toggle(Based on Toggle Tween)", function(NPCAT)
        NPCCheck()
        _G.QmFsZEh1YkF1dG9mYXJt = NPCAT
		end)
		
		Tab2:AddSwitch("Auto Click", function(AutoC1)
		_G.AutoC = AutoC1
        wait(1)
        if _G.AutoC == true then
        repeat mouse1click() wait() until _G.AutoC == false
		end
		end)
		
		Tab2:AddSwitch("NPC Tween Toggle", function(Tween2)
        _G.NPCTween = Tween2
		end)
		
		Tab2:AddButton("Goto NPC(Based on Toggle Tween)", function()
		for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v:FindFirstChild("HumanoidRootPart") and string.match(v.Name:lower(),_G.NPCName:lower()) or v:FindFirstChild("HumanoidRootPart") and v.Name == _G.NPCName then
        pos = v.HumanoidRootPart.Position
        end
        end
		To(_G.NPCTween, _G.NPCTweenSpeed, Vector3.new(pos.x, pos.y, pos.z))
		end)
		
		_G.Dropdown2 = Tab3:AddDropdown("Set Affected Players", function(SAP)
		if SAP == "Your Team" then
		_G.SAPType = 1
		elseif SAP == "Other Team" then
        _G.SAPType = 2
		elseif SAP == "Everyone But You" then
		_G.SAPType = 3
		elseif SAP == "Everyone(for games like pf)" then
		_G.SAPType = 4
		end
		end)
		
		_G.Dropdown2:Add("Your Team")
		_G.Dropdown2:Add("Other Team")
		_G.Dropdown2:Add("Everyone But You")
		_G.Dropdown2:Add("Everyone(for games like pf)")
		
		_G.NHBS = Tab3:AddSlider("Player Hitbox Size", function(PHBSize)
        _G.PSize = PHBSize
        end, {
			["min"] = 0,
			["max"] = 1000,
		})
		_G.NHBS:Set(10)
		
		Tab3:AddSwitch("Player Hitbox Toggle", function(PHBT)
        _G.PHBTG = PHBT
        _G.HitboxToggled = PHBT
		HBT()
		end)
		
		Tab3:AddSwitch("Player Esp Toggle", function(tingthing)
		_G.ESPTog = tingthing
        if _G.ESPTog == true and _G.DrawingLib ~= true then
        repeat ESP(true)
        wait(3)
        ESP(false)
        until _G.ESPTog ~= true
        elseif _G.ESPTog == true and _G.DrawingLib == true then
        ESP(true)
        elseif _G.ESPTog == false then
        ESP(false)
        end
		end)
		
		Tab3:AddSwitch("Player Aimbot Toggle", function(AimTog)
        _G.AimbotToggled = AimTog
		end)
		
		Tab3:AddSwitch("Don't Use Drawing Lib(For Aimbot, Laggy)", function(DL)
        if DL == true then
        _G.DrawingLib = false
        elseif DL == false then
        _G.DrawingLib = true
        end
		end)
		
		_G.Dropdown1 = Tab4:AddDropdown("Player Goto", function(PlayerName)
		pos = game:GetService("Players")[PlayerName].Character.HumanoidRootPart.Position
        To(_G.PlayerTween, _G.PlayerTweenSpeed, Vector3.new(pos.x, pos.y, pos.z))
		end)
        
        spawn(function()
        while true do
        for i,v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Name ~= game:GetService("Players").LocalPlayer.Name then
        spawn(function()
        _G.IHighest = i
        local Number = table.concat({"NPC", i})
        _G[Number] = _G.Dropdown1:Add(tostring(v.Name))
        end)
        end
        end
        wait(10)
        wait()
        end
        end)

        spawn(function()
        while wait(10) do
        for i=1, _G.IHighest do
        local Number = table.concat({"NPC", i})
        if _G[Number] ~= nil then
        _G[Number]:Remove()
        end
        end
        end
        end)
        
local Dropdown7 = Tab4:AddDropdown("Auto Equip Tool", function(AutoEquip)
if AutoEquip ~= nil then
_G.AutoEquip = AutoEquip
end
end)
Dropdown7:Add("None")
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
if v.ClassName == "Tool" then
Dropdown7:Add(v.Name)
end
end
		
		_G.PTS = Tab4:AddSlider("Player Tween Speed(Default 15, Higher = Risk)", function(PTSpeed)
        _G.PlayerTweenSpeed = PTSpeed
        end, {
			["min"] = 0,
			["max"] = 100,
		})
		_G.PTS:Set(15)
		
		local walks = Tab4:AddSlider("Walk Speed Slider", function(walk)
        if _G.WalkspeedOff ~= true then
        _G.Walkspeed = walk
        WalkSpeedChange()
        end
        end, {
			["min"] = 16,
			["max"] = 1000,
		})
		walks:Set(0)
		
		Tab4:AddSwitch("Player Tween Toggle", function(Tween)
        _G.PlayerTween = Tween
		end)
		
		Tab4:AddSwitch("Infinite Jump Toggle", function(JumpI)
        _G.InfJump = JumpI
		end)
		
		Tab4:AddSwitch("Noclip Toggle", function(NC)
		_G.NC = NC
		end)
		Tab4:AddKeybind("Click TP", function(key)
			teleport(game.Players.LocalPlayer:GetMouse().Hit.p.x, game.Players.LocalPlayer:GetMouse().Hit.p.y, game.Players.LocalPlayer:GetMouse().Hit.p.z)
		end, {
			["standard"] = Enum.KeyCode.V
		})
		Tab4:Show()
for i,v in pairs(_G.SupportedGames) do
if tonumber(game.PlaceId) == tonumber(v) then
if tonumber(game.PlaceId) == 606849621 then -- Jailbreak, obv gonna add more.
local Jailbreak = library:AddWindow(tostring("Jailbreak"), {
		main_color = _G.maincolor,
		min_size = Vector2.new(480, 310),
		toggle_key = Enum.KeyCode.RightControl,
		can_resize = true,
	})
local t1 = Jailbreak:AddTab("Combat")
local t3 = Jailbreak:AddTab("Police Stuff")
local t2 = Jailbreak:AddTab("Vehicle Mods")
t3:AddSwitch("Taser Mods", function(toggle)
if toggle == true then
upvalue("ReloadTime", 0.1, true)
upvalue("ReloadTimeHit", 0.1, true)
else
upvalue("ReloadTime", 4, true)
upvalue("ReloadTimeHit", 10, true)
end
end)
t2:AddButton("Inf Nitro", function()
for i,v in pairs(getgc(true)) do
    if typeof(v) == "table" then
            for _,b in pairs(v) do
            if tostring(_) == "Nitro" then
            while true do
            v[tostring(_)] = 90
            wait()
            end
            end
        end
    end
end
end)
local height = t2:AddHorizontalAlignment()
height:AddButton("Add Car Height", function()
for i,v in pairs(getgc(true)) do
    if typeof(v) == "table" then
            for _,b in pairs(v) do
            if tostring(_) == "Height" then
            v[tostring(_)] = tonumber(b) + 1
            end
            end
        end
    end
end)
height:AddButton("Remove Car Height", function()
for i,v in pairs(getgc(true)) do
    if typeof(v) == "table" then
            for _,b in pairs(v) do
            if tostring(_) == "Height" then
            v[tostring(_)] = tonumber(b) - 1
            end
            end
        end
    end
end)
t1:AddButton("Get all Basic Guns (click detector)", function()
for i,v in pairs(game:GetService("Workspace").Givers:GetChildren()) do
if v.Item.Value == "Pistol" or v.Item.Value == "Shotgun" then
fireclickdetector(v.ClickDetector)
end
end
end)
t1:AddSwitch("Gun Mods", function(toggle)
if toggle == true then
for i,v in pairs(getgc(true)) do 
    if typeof(v) == "table" and rawget(v, "FireFreq") then
            v.FireFreq = 9
            v.FireAuto = true
            v.MagSize = math.huge
            v.AmmoCurrent = math.huge
            v.Spread = 0
            v.CamShakeMagnitude = 0
    end
end
else
for i,v in pairs(getgc(true)) do 
    if typeof(v) == "table" and rawget(v, "FireFreq") then
            v.FireFreq = 5
            v.FireAuto = false
            v.MagSize = 8
            v.Spread = 3.25
            v.CamShakeMagnitude = 150
    end
end
end
end)
t1:Show()
elseif tonumber(game.PlaceId) == 292439477 then
pcall(function()
for i, v in pairs(getgc(true)) do
if typeof(v) == 'table' and rawget(v, 'getbodyparts') then
_G.CharacterTable = v.getbodyparts
end
end
end)

spawn(function()
while wait(1) do
for i, v in pairs(game:GetService("Players"):GetChildren()) do
if _G.CharacterTable(v) and typeof(_G.CharacterTable(v)) == 'table' then
v.Character = _G.CharacterTable(v).rootpart.Parent
end
end
end
end)
local PF = library:AddWindow(tostring("Phantom Forces"), {
		main_color = _G.maincolor,
		min_size = Vector2.new(480, 310),
		toggle_key = Enum.KeyCode.RightControl,
		can_resize = true,
	})
local t1 = PF:AddTab("PF")
t1:AddSwitch("Aimbot Toggle", function(toggled)
_G.SAPType = 2
_G.AimbotToggled = toggled
end)
t1:AddSwitch("ESP Toggle", function(toggled)
_G.SAPType = 2
_G.DrawingLib = false
repeat
_G.SAPType = 2
_G.DrawingLib = false
ESP(true)
wait(3)
ESP(false)
until toggled == false
end)
t1:AddSwitch("Knife Aura(hold knife)", function(toggle)
_G.KA = toggle
if _G.KA == true then
repeat
spawn(function()
getclosest(true)
local v = _G.ClosestChar
if game:GetService("Players").LocalPlayer.Character ~= nil and _G.CharacterTable(v).head and _G.CharacterTable(v).head.Parent ~= nil then
require(game:GetService("ReplicatedFirst").ClientModules.Old.framework.network):send("knifehit", v, tick(), _G.CharacterTable(v).head)
end
end)
wait()
until _G.KA == false
end
end)
t1:AddSwitch("Inf Ammo(Toggle Before Deploy)", function(toggle)
if toggle == true then
repeat
for i,v in pairs(getreg()) do
if typeof(v) == "table" and rawget(v, "magsize") then
v.magsize = math.huge
v.sparerounds = math.huge
end
end
until toggled ~= true
end
end)
t1:AddSwitch("Make All Guns Automatic(Toggle Before Deploy)", function(toggle)
if toggle == true then
for i,v in pairs(getreg()) do
if typeof(v) == "table" and rawget(v, "firemodes") then
v.chamber = true
v.firemodes = { true, 1 }
end
end
else
for i,v in pairs(getreg()) do
if typeof(v) == "table" and rawget(v, "firemodes") then
v.chamber = false
v.firemodes = { false, 1 }
end
end
end
end)

local slider0 = t1:AddSlider("Firerate(Set Before Deploy)", function(value2)
upvalue(firerate, value2, false)
        end, {
			["min"] = 0,
			["max"] = 5000,
		})
		slider0:Set(10)
local slider = t1:AddSlider("Walkspeed (Set Before Deploy)", function(value)
for i,v in pairs(getreg()) do
if typeof(v) == "table" and rawget(v, "walkspeed") then
v.walkspeed = tonumber(value)
end
end
        end, {
			["min"] = 16,
			["max"] = 200,
		})
		slider:Set(1)
t1:Show()
elseif tonumber(game.PlaceId) == 3978370137 then -- grand piece online
--also this is reconstructed so the og user can keep his shit and eat it too
_G.AutoQuestList = {"None" ,"Daph", "Noah", "Tyrone", "Robert", "Kevin", "Gozen", "Zen", "Chef Rice", "Gonny", "Max", "Woby", "Vi", "Bibby", "Viva", "Miska", "Yourg", "Verga", "Becky", "Jenny", "Janny", "Wane", "Pichu", "Higa", "Jeff", "Test", "Test", "Test", "Test", "Test"}
_G.AllNpcsList = {"None", "Bandit", "Bandit Boss", "Lucid", "Desert Bandit", "Corrupt Marine", "Shell's Bandit", "Axe Hand Logan", "Zou Inhabitant", "Krieg Pirate", "Star Clown", "Monkey", "Gorilla King", "Saw Shark Pirate", "Saw Shark", "Sky District Bandit", "Castle Guard", "Head Guardian", "Malcom Undermen", "Malcom", "Enel", "Gravito's Undermen", "Gravito's Guard", "Gravito", "Fishman Karate User", "Ryu", "Neptune", "Marine Fort Sniper", "Marine Fort Gunner"} -- should be all npcs for quests :shrug:
_G.AutoEquip = "Melee" -- dont mess with this.
_G.NPC2 = "Bald" -- dont mess with this
_G.NPC3 = "Bald" -- dont mess with this
_G.CustomXStartPosition = 0 -- decides where the gui pops up when it starts, keep it 0 for no change.
_G.CustomYStartPosition = 0 -- decwides where the gui pops up when it starts, keep it 0 for no change.
_G.speed = 15 -- don't mess with this.
_G.Closest = math.huge -- dont mess with this
_G.Distance = -3 -- how far you are when you tp in autofarm
local bodyvelocityenabled = false -- dont mess with this.

local Imput = game:GetService("UserInputService")
local Plr = game.Players.LocalPlayer
local Mouse = Plr:GetMouse()

function punch()
spawn(function()
if _G.Punching ~= true and _G.AutoPunch == true and _G.MovingTarget ~= nil then
_G.Punching = true
_G.Distance = -3
local args = {
    [1] = false,
    [2] = "Melee"
}
game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
if getconstant and getgc then
local bald = game:GetService("UserInputService"):GetGamepadState(Enum.UserInputType.Gamepad1)[1]; bald.UserInputType = Enum.UserInputType.MouseButton1; _G.fhing(bald,false)
else
mouse1click()
end
wait(0.1)
local args = {
    [1] = true,
    [2] = "Melee"
}
game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
_G.Distance = -8
_G.Punching = false
wait(0.2)
end
end)
end

function Autofarm(NPC)
_G.NPC = NPC

if tostring(NPC) == "Dungeon Mobs" then
for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
spawn(function()
if v.Name == "Dungeon Gun User" or v.Name == "Dungeon Attacker" or v.Name == "Dungeon Katana User" then
if _G.Closest > (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).magnitude then
_G.Closest = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).magnitude
_G.CurrentTarget = v
wait(5)
if _G.MovingTarget == nil then
_G.MovingTarget = v
end
end
end
end)
if v.Name == "Dungeon Gun User" or v.Name == "Dungeon Attacker" or v.Name == "Dungeon Katana User" then
while wait(0.2) do
spawn(function()
if _G.CurrentTarget:FindFirstChild("Humanoid") then
if _G.CurrentTarget.Humanoid.Health and _G.CurrentTarget.Humanoid.Health < 0.1 then
for _,z in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
if z.Name == "Dungeon Gun User" or z.Name == "Dungeon Attacker" or z.Name == "Dungeon Katana User" then
if 0 < (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - z.HumanoidRootPart.Position).magnitude then
_G.CurrentTarget = z
_G.MovingTarget = z
end
end
end
end
end
end)

spawn(function()
wait(1)
for l,b in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
if b:FindFirstChild("Info") then
if b:FindFirstChild('realPos') then
if b.Name == _G.NPC or b.Name == _G.NPC2 or b.Name == _G.NPC3 then
local playpos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
local npcpos = b.HumanoidRootPart.Position
if npcpos.x-20<playpos.x and playpos.y<npcpos.y+20 and npcpos.z-20<playpos.z then
if b.Info.SpawnCFrame.Value ~= b.realPos.Value then
_G.CurrentTarget = b
_G.MovingTarget = b
end
end
end
end
end
end
end)

spawn(function()
if _G.Autofarm1 == true then
if v.Name == "Dungeon Gun User" or v.Name == "Dungeon Attacker" or v.Name == "Dungeon Katana User" then
wait()
local Player = game:GetService("Players").LocalPlayer
    pcall(function()
        if Player.Backpack:FindFirstChild(_G.AutoEquip) and Player.Character:FindFirstChild(_G.AutoEquip) == nil then
            local tool = Player.Backpack:FindFirstChild(_G.AutoEquip)
            Player.Character.Humanoid:EquipTool(tool)
        end
    end)
wait()
if _G.MovingTarget == nil then
_G.pos = (_G.CurrentTarget.HumanoidRootPart.CFrame + _G.CurrentTarget.HumanoidRootPart.CFrame.lookVector*_G.Distance)
_G.pos2 = _G.CurrentTarget.HumanoidRootPart.Position
else
_G.pos = (_G.MovingTarget.HumanoidRootPart.CFrame + _G.MovingTarget.HumanoidRootPart.CFrame.lookVector*_G.Distance)
_G.pos2 = _G.MovingTarget.HumanoidRootPart.Position
end
if 50 > (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - _G.pos2).magnitude then
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(_G.pos.x, _G.pos.y + 5, _G.pos.z))
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, Vector3.new(_G.pos2.x, _G.pos2.y + 5, _G.pos2.z)))
punch()
else
local bruh2 = _G.Speed
_G.Speed = 5
To(Vector3.new(_G.pos.x, _G.pos.y, _G.pos.z))
_G.Speed = bruh2
end
end
end
end)
end
end
end
else
for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
spawn(function()
if v.Name == _G.NPC or v.Name == _G.NPC2 or v.Name == _G.NPC3 then
if _G.Closest > (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).magnitude then
_G.Closest = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).magnitude
_G.CurrentTarget = v
wait(5)
if _G.MovingTarget == nil then
_G.MovingTarget = v
end
end
end
end)
if v.Name == _G.NPC or v.Name == _G.NPC2 or v.Name == _G.NPC3 then
while wait(0.2) do
spawn(function()
if _G.CurrentTarget:FindFirstChild("Humanoid") then
if _G.CurrentTarget.Humanoid.Health and _G.CurrentTarget.Humanoid.Health < 0.1 then
for _,z in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
if z.Name == _G.NPC or z.Name == _G.NPC2 or z.Name == _G.NPC3 then
if 0 < (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - z.HumanoidRootPart.Position).magnitude then
_G.CurrentTarget = z
_G.MovingTarget = z
end
end
end
end
end
end)

spawn(function()
wait(1)
for l,b in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
if b:FindFirstChild("Info") then
if b:FindFirstChild('realPos') then
if b.Name == _G.NPC or b.Name == _G.NPC2 or b.Name == _G.NPC3 then
local playpos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
local npcpos = b.HumanoidRootPart.Position
if npcpos.x-20<playpos.x and playpos.y<npcpos.y+20 and npcpos.z-20<playpos.z then
if b.Info.SpawnCFrame.Value ~= b.realPos.Value then
_G.CurrentTarget = b
_G.MovingTarget = b
end
end
end
end
end
end
end)

spawn(function()
if _G.Autofarm1 == true then
if v.Name == _G.NPC or v.Name == _G.NPC2 or v.Name == _G.NPC3 then
wait()
local Player = game:GetService("Players").LocalPlayer
    pcall(function()
        if Player.Backpack:FindFirstChild(_G.AutoEquip) and Player.Character:FindFirstChild(_G.AutoEquip) == nil then
            local tool = Player.Backpack:FindFirstChild(_G.AutoEquip)
            Player.Character.Humanoid:EquipTool(tool)
        end
    end)
wait()
if _G.MovingTarget == nil then
_G.pos = (_G.CurrentTarget.HumanoidRootPart.CFrame + _G.CurrentTarget.HumanoidRootPart.CFrame.lookVector*_G.Distance)
_G.pos2 = _G.CurrentTarget.HumanoidRootPart.Position
else
_G.pos = (_G.MovingTarget.HumanoidRootPart.CFrame + _G.MovingTarget.HumanoidRootPart.CFrame.lookVector*_G.Distance)
_G.pos2 = _G.MovingTarget.HumanoidRootPart.Position
end
if 50 > (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - _G.pos2).magnitude then
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(_G.pos.x, _G.pos.y + 5, _G.pos.z))
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, Vector3.new(_G.pos2.x, _G.pos2.y + 5, _G.pos2.z)))
punch()
else
local bruh2 = _G.Speed
_G.Speed = 5
To(Vector3.new(_G.pos.x, _G.pos.y, _G.pos.z))
_G.Speed = bruh2
end
end
end
end)
end
end
end
end
end

function Quest(NPC3)
_G.NPC3 = NPC3
local args = {
    [1] = {
        [1] = "quit"
    }
}
game:GetService("ReplicatedStorage").Events.Quest:InvokeServer(unpack(args))
for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
if v.Name == NPC3 then
while true do
if v.Name == NPC3 then
if _G.Quest1 == true and game:GetService("Players").LocalPlayer.PlayerGui.Quest.Quest.Visible == false then
_G.Autofarm1 = false
wait(1)
repeat
pos4 = (v.HumanoidRootPart.CFrame + v.HumanoidRootPart.CFrame.lookVector*7)
if 50 > (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).magnitude then
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(pos4.x, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.y, pos4.z))
else
To(Vector3.new(pos4.x, pos4.y, pos4.z))
end
wait(2)
if v.Name ~= "Daph" and v.Name ~= "Chef Rice" then
local args = {
    [1] = {
        [1] = "takequest",
        [2] = table.concat({"Help", v.Name}, " ")
    }
}
game:GetService("ReplicatedStorage").Events.Quest:InvokeServer(unpack(args))
elseif v.Name == "Daph" then
local args = {
    [1] = {
        [1] = "takequest",
        [2] = table.concat({"Help", "Raphtalia"}, " ")
    }
}
game:GetService("ReplicatedStorage").Events.Quest:InvokeServer(unpack(args))
elseif v.Name == "Chef Rice" then
local args = {
    [1] = {
        [1] = "takequest",
        [2] = table.concat({"Help", "Rice"}, " ")
    }
}
game:GetService("ReplicatedStorage").Events.Quest:InvokeServer(unpack(args))
end
wait(0.5)
until game:GetService("Players").LocalPlayer.PlayerGui.Quest.Quest.Visible == true
_G.Autofarm1 = _G.AF
end
end
wait(5)
end
end
end
end

function DFCheck()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.ClassName == "Tool" then
if v:FindFirstChild("Owner") and v:FindFirstChild("FruitEater") then
if v.Owner.Value == nil then
_G.Found = true
_G.FoundItem = v
pos3 = (v.preHandle.CFrame + v.preHandle.CFrame.lookVector*-5)
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, Vector3.new(pos3.x, pos3.y, pos3.z)))
end
end
end
end
if _G.Found == true then
_G.Label2.Text = _G.FoundItem.Name
_G.Label3.Text = tostring(_G.FoundItem.preHandle.Position)
elseif _G.Found ~= true then
_G.Label2.Text = "Not Found"
_G.Label3.Text = "Not Found"
end
end

function To(position)
_G.Tp = (Vector3.new(position.x, position.y, position.z))
spawn(function()
local Chr = Plr.Character
if Chr ~= nil then
local ts = game:GetService("TweenService")
local char = game.Players.LocalPlayer.Character
local hm = char.HumanoidRootPart
_G.YPos = hm.Position.y + 10
local dist = (hm.Position - position).magnitude
local tweenspeed = dist/tonumber(_G.speed*10)
local ti = TweenInfo.new(tonumber(tweenspeed), Enum.EasingStyle.Linear)
local tp = {CFrame = CFrame.new(position)}
_G.TweenThing = ts:Create(hm, ti, tp)
_G.TweenThing:Play()
wait(tonumber(tweenspeed))
_G.TweenThing = nil
end
end)
end

function walkspeed(Number)
if _G.Walkspeed ~= true then
_G.Walkspeed = true
repeat
game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = Number
wait()
until _G.Walkspeed ~= true
else
_G.Walkspeed = false
game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = Number
end
end

function water()
while _G.value4 == true do
if workspace.Effects.Water.Position.y > game.Players.LocalPlayer.Character.HumanoidRootPart.Position.y then
game.Players.LocalPlayer.Character.HumanoidRootPart.Position = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.x, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.y + 10, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.z)
end
local test = game:GetService("Players").LocalPlayer.Backpack.WaterLogia["Hie-Hie"].floor:Clone()
test.Parent = game.Workspace.FruitFloors
test.CFrame = CFrame.new(game.Players.LocalPlayer.Character.RightFoot.Position.x, workspace.Effects.Water.Position.y, game.Players.LocalPlayer.Character.RightFoot.Position.z)
wait()
test:Destroy()
end
end

if _G.AlrExecuted ~= true then
_G.AlrExecuted = true
pcall(function()
_G.Running1 = false
i = hookfunction(wait, function(v) if _G.Running1 == true and getcallingscript(i) ~= nil then if _G.HookWait ~= true then return i(0.1) else return i(v) end else return i(v) end end)
end)

spawn(function()
local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        if _G.AutoBlock == true then
local args = {
    [1] = false,
    [2] = "Melee"
}
game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
wait()
        end
    end
end)
end)

pcall(function()
local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Space then 
        _G.HookWait = true
        wait()
        _G.HookWait = false
    end
end)
end)

pcall(function()
local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.LeftControl then 
        if _G.Down ~= true then
        _G.Down = true
        else
        _G.Down = false
        end
    end
end)
end)

pcall(function()
_G.Running2 = false
local mt = getrawmetatable(game)
setreadonly(mt, false)

local namecall = mt.__namecall

mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local args = {...}

    if method == "FireServer" and args[1] == 10 and _G.Running2 == true then
        return 1
    end
    return namecall(self, ...)
end)
end)

pcall(function()
_G.Running2 = false
local mt = getrawmetatable(game)
setreadonly(mt, false)

local namecall = mt.__namecall

mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local args = {...}

    if method == "InvokeServer" and args[1] == "Soru" and _G.Running2 == true or method == "InvokeServer" and args[1] == "Geppo" and _G.Running2 == true or method == "InvokeServer" and args[1] == "Sky Walk" and _G.Running2 == true or method == "FireServer" and args[1] == "drown" and _G.Running2 == true then
        spawn(function()
        wait(0.2)
        _G.HookWait = false
        end)
        _G.HookWait = true
        return wait()
    end
    return namecall(self, ...)
end)
end)

spawn(function()
while wait(3) do
if getconstant and getgc and _G.fhing == nil or getconstant and getgc and game:GetService("Players").LocalPlayer.Character:FindFirstChild("SafeForceField") then
for i,v in next, getgc() do
if type(v) == 'function' and getfenv(v).script == game:GetService("Players").LocalPlayer.Backpack:FindFirstChild('MeleeScript') then
local therightgoddamnscript = pcall(function() getconstant(v,85) end)
if therightgoddamnscript == true then
_G.fhing = v
end
end
end
end
end
end)

spawn(function()
while true do
wait()
if _G.AutoBlock == true then
for i=1, 50 do
if _G.AutoBlock == true then
local args = {
    [1] = true,
    [2] = "Melee"
}
game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
wait()
end
end
local args = {
    [1] = false,
    [2] = "Melee"
}
game:GetService("ReplicatedStorage").Events.Block:InvokeServer(unpack(args))
end
end
end)

spawn(function()
wait()
pcall(function()
local Player = game:GetService('Players').LocalPlayer
local Humanoid = Player.Character:FindFirstChildOfClass('Humanoid')
local mt = getrawmetatable(game)
local index = mt.__index
local newindex = mt.__newindex
setreadonly(mt, false)

mt.__index = newcclosure(function(i, v) if v:lower() == 'walkspeed' or v:lower() == 'WalkSpeed' then return 16 end return index(i, v) end)

setreadonly(mt, true)
end)

pcall(function()
local mt = getrawmetatable(game)
setreadonly(mt, false)

local namecall = mt.__namecall

mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local args = {...}

    if method == "Kick" then
        return wait(9e9)
    end
    return namecall(self, ...)
end)
end)
end)

spawn(function()
if _G.value == nil then
_G.value = false
end
end)

spawn(function()
while true do
game:GetService("Workspace").PlayerCharacters[game.Players.LocalPlayer.Name].FallDamage.Disabled = _G.value
wait(1)
end
end)
end

spawn(function()
	local Window = library:AddWindow("Grand Piece Online Gui.", {
		main_color = Color3.fromRGB(255, 170, 0),
		min_size = Vector2.new(400, 270),
		toggle_key = Enum.KeyCode.RightShift,
		can_resize = true,
	})
	local Tab = Window:AddTab("Cheats")
	_G.Tab = Tab
	local Tab2 = Window:AddTab("Misc Cheats")
	_G.Tab2 = Tab2
	local Tab3 = Window:AddTab("World")
	_G.Tab3 = Tab3
	local Tab5 = Window:AddTab("Autofarms")
	_G.Tab5 = Tab5
	local Tab4 = Window:AddTab("Notes")
	_G.Tab4 = Tab4

	do -- Elements
		Tab:AddLabel("Mostly stable cheats? i think")
		
		Tab2:AddLabel("unstable shit")
		
		Tab2:AddLabel("hook wait no longer affects scripts executed by you.")
		
		Tab2:AddLabel("AutoBlock doesn't work without Hook wait()")
		
		Tab2:AddLabel("AutoBlock without lag worke %80 of time")
		
		Tab4:AddLabel("reconstructed by pieboi_ = true")

		Tab4:AddLabel("styro has a furry porn stash = true")
		
		Tab4:AddLabel("fps Boost = IY fps boost")
		
		Tab4:AddLabel("Tween is by Walmort.")
		
		Tab4:AddLabel("Stellar was cool to look thru the game scripts.")
		
		Tab4:AddLabel("UI Lib by Singularity")
		
		Tab:AddButton("fps boost(from IY)", function()
		workspace:FindFirstChildOfClass('Terrain').WaterWaveSize = 0
	workspace:FindFirstChildOfClass('Terrain').WaterWaveSpeed = 0
	workspace:FindFirstChildOfClass('Terrain').WaterReflectance = 0
	workspace:FindFirstChildOfClass('Terrain').WaterTransparency = 0
	game:GetService("Lighting").GlobalShadows = false
	game:GetService("Lighting").FogEnd = 9e9
	settings().Rendering.QualityLevel = 1
	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
		elseif v:IsA("Decal") then
			v.Transparency = 1
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(0)
		elseif v:IsA("Explosion") then
			v.BlastPressure = 1
			v.BlastRadius = 1
		end
	end
	for i,v in pairs(game:GetService("Lighting"):GetDescendants()) do
		if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
			v.Enabled = false
		end
	end
		end)
		
		Tab:AddSwitch("No Fall Damage", function(value)
        _G.value = value
		end)
		
		Tab2:AddSwitch("Hook wait() (It allows you to do most things faster)", function(value7)
        if _G.Running1 == false then
        _G.Running1 = true
        elseif _G.Running1 == true then
        _G.Running1 = false
        end
		end)
    
        Tab:AddSwitch("Infinite Roll/Soru/Geppo/Bubble/SkyWalk", function(value10)
        if _G.Running2 == false then
        _G.Running2 = true
        elseif _G.Running2 == true then
        _G.Running2 = false
        end
        end)
    
        Tab2:AddSwitch("Autoblock(Don't Take Damage; Sometimes)", function(value6)
        wait(0.7)
        _G.AutoBlock = value6
        end)
		
		Tab:AddSwitch("Walkspeed", function(value2)
        if value2 == true then
        _G.value2 = true
        if _G.value3 ~= 0 then
        walkspeed(_G.value3)
        end
		else
		_G.value2 = false
		walkspeed(16)
        end
		end)
		
		local Dropdown = Tab3:AddDropdown("Island TP", function(inp)
if inp == "Town of Beginnings" then
_G.ResponseX = 1060
_G.ResponseZ = 1200
To(Vector3.new(_G.ResponseX, 10, _G.ResponseZ))
elseif inp == "Sandora" then
_G.ResponseX = -1200
_G.ResponseZ = 1200
To(Vector3.new(_G.ResponseX, 10, _G.ResponseZ))
elseif inp == "Desert Bandit" then
_G.ResponseX = -1200
_G.ResponseZ = 1200
elseif inp == "Kori Island" then
_G.ResponseX = -6800
_G.ResponseZ = 1800
To(Vector3.new(_G.ResponseX, 10, _G.ResponseZ))
elseif inp == "Island of Zou" then
_G.ResponseX = -4400
_G.ResponseZ = -2500
To(Vector3.new(_G.ResponseX, 10, _G.ResponseZ))
elseif inp == "Zou Inhabitant" then
_G.ResponseX = -4400
_G.ResponseZ = -2500
To(Vector3.new(_G.ResponseX, 10, _G.ResponseZ))
elseif inp == "Marine Fort F-1" then
_G.ResponseX = 2832
_G.ResponseZ = -987
To(Vector3.new(_G.ResponseX, 10, _G.ResponseZ))
elseif inp == "Marine" then
_G.ResponseX = 2800
_G.ResponseZ = -800
elseif inp == "Marine Cannoneer" then
_G.ResponseX = 2800
_G.ResponseZ = -800
elseif inp == "Marine Captain" then
_G.ResponseX = 2800
_G.ResponseZ = -800
elseif inp == "Roca Island" then
_G.ResponseX = 5200
_G.ResponseZ = -4900
To(Vector3.new(_G.ResponseX, 10, _G.ResponseZ))
elseif inp == "Land of The Sky" then
_G.ResponseX = 9000
_G.ResponseZ = -10500
elseif inp == "Shell's Town" then
_G.ResponseX = -550
_G.ResponseZ = -4400
To(Vector3.new(_G.ResponseX, 10, _G.ResponseZ))
elseif inp == "Barattle" then
To(Vector3.new(-3901, 6, -5509))
elseif inp == "Mysterious Cliff" then
To(Vector3.new(2215, 413, -8627))
elseif inp == "Colosseum" then
_G.ResponseX = -2000
_G.ResponseZ = -7700
To(Vector3.new(_G.ResponseX, 10, _G.ResponseZ))
elseif inp == "Trade Island" then
_G.ResponseX = -2800
_G.ResponseZ = -10100
To(Vector3.new(_G.ResponseX, 10, _G.ResponseZ))
elseif inp == "Sphinx Island" then
_G.ResponseX = -6300
_G.ResponseZ = -9900
To(Vector3.new(_G.ResponseX, 10, _G.ResponseZ))
elseif inp == "Arlong Park" then
_G.ResponseX = 400
_G.ResponseZ = -12700
To(Vector3.new(_G.ResponseX, 10, _G.ResponseZ))
elseif inp == "Gravito's Fort" then
_G.ResponseX = 2600
_G.ResponseZ = -15300
To(Vector3.new(_G.ResponseX, 10, _G.ResponseZ))
elseif inp == "Valentine Island" then
To(Vector3.new(-2593, 9, -14766))
elseif inp == "Fishman Cave" then
_G.ResponseX = 5600
_G.ResponseZ = -16400
To(Vector3.new(_G.ResponseX, 10, _G.ResponseZ))
end
		end)
		Dropdown:Add("Town of Beginnings")
		Dropdown:Add("Sandora")
		Dropdown:Add("Kori Island")
		Dropdown:Add("Island of Zou")
		Dropdown:Add("Marine Fort F-1")
		Dropdown:Add("Roca Island")
		Dropdown:Add("Shell's Town")
		Dropdown:Add("Barattle")
		Dropdown:Add("Mysterious Cliff")
		Dropdown:Add("Colosseum")
		Dropdown:Add("Trade Island")
		Dropdown:Add("Sphinx Island")
		Dropdown:Add("Valentine Island")
		Dropdown:Add("Arlong Park")
		Dropdown:Add("Gravito's Fort")
		Dropdown:Add("Fishman Cave")
		
		local Dropdown2 = Tab3:AddDropdown("Island TP(Cont)", function(inp)
if inp == "Land of the Sky" then
_G.ResponseX = 9000
_G.ResponseZ = -10500
To(Vector3.new(_G.ResponseX, 1460, _G.ResponseZ))
elseif inp == "Arlong Park" then
_G.ResponseX = 400
_G.ResponseZ = -12700
To(Vector3.new(_G.ResponseX, 10, _G.ResponseZ))
elseif inp == "Gravito's Fort" then
_G.ResponseX = 2600
_G.ResponseZ = -15300
To(Vector3.new(_G.ResponseX, 10, _G.ResponseZ))
elseif inp == "Fishman Cave" then
_G.ResponseX = 5600
_G.ResponseZ = -16400
To(Vector3.new(_G.ResponseX, 10, _G.ResponseZ))
elseif inp == "Orange Town" then
_G.ResponseX = -7000
_G.ResponseZ = -5300
To(Vector3.new(_G.ResponseX, 10, _G.ResponseZ))
end
		end)
		Dropdown2:Add("Arlong Park")
		Dropdown2:Add("Gravito's Fort")
		Dropdown2:Add("Fishman Cave")
		Dropdown2:Add("Land of the Sky")
		Dropdown2:Add("Orange Town")
		
		_G.Sl = Tab3:AddSlider("Speed(Default 15)", function(value19)
        _G.speed = value19
        if _G.TweenThing ~= nil then
        _G.TweenThing:Pause()
        _G.TweenThing = nil
        local bruh = game:GetService("Players").LocalPlayer.Character
        bruh:SetPrimaryPartCFrame(CFrame.new(bruh.HumanoidRootPart.Position.x, _G.YPos, bruh.HumanoidRootPart.Position.z))
        To(_G.Tp)
        end
        end, {
			["min"] = 0,
			["max"] = 15,
		})
		_G.Sl:Set(100)
		
		local Dropdown3 = Tab5:AddDropdown("NPCs (Select NPC to Autofarm)", function(NPC)
			if NPC ~= "None" then
			_G.Autofarm1 = true
			_G.AF = true
			Autofarm(NPC)
			else
			_G.AF = false
			_G.Autofarm1 = false
			end
		end)
spawn(function()
for i,v in pairs(_G.AllNpcsList) do
Dropdown3:Add(tostring(v))
end
end)

local Dropdown5 = Tab5:AddDropdown("Extra NPCs(Checks for another npc to autofarm))", function(NPC2)
			if NPC2 ~= "None" then
			local NPC = NPC2
			_G.NPC2 = NPC
			else
            _G.NPC2 = ""
			end
		end)
spawn(function()
for i,v in pairs(_G.AllNpcsList) do
Dropdown5:Add(tostring(v))
end
end)

local Dropdown6 = Tab5:AddDropdown("Extra NPCs(Checks for another npc to autofarm))", function(NPC3)
			if NPC2 ~= "None" then
			local NPC = NPC3
			_G.NPC3 = NPC
			else
            _G.NPC3 = ""
			end
		end)
spawn(function()
for i,v in pairs(_G.AllNpcsList) do
Dropdown6:Add(tostring(v))
end
end)

local Dropdown4 = Tab5:AddDropdown("Auto Quest(Select NPC)", function(NPC2)
			if NPC2 ~= "None" then
			_G.Quest1 = true
			Quest(NPC2)
			else
			_G.Quest1 = false
			end
end)
spawn(function()
for i,v in pairs(_G.AutoQuestList) do
Dropdown4:Add(tostring(v))
end
end)
	
local Dropdown7 = Tab5:AddDropdown("Auto Equip", function(AutoEquip)
			if AutoEquip ~= nil then
			_G.AutoEquip = AutoEquip
			end
end)
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
if v.ClassName == "Tool" then
Dropdown7:Add(v.Name)
end
end
		
		Tab:AddSlider("Walkspeed", function(value3)
        _G.value3 = value3
        if _G.value2 == true then
        walkspeed(value3)
		end
		end, {
			["min"] = 0,
			["max"] = 120,
		})
end

Tab3:AddButton("Check For DF(And Get Direction if it's there)", function()
DFCheck()
end)

Tab5:AddSwitch("Auto Punch/Click(For Auto Farm)", function(autoclicktoggle)
        if autoclicktoggle == true then
        wait(1)
        _G.AutoPunch = true
        else
        _G.AutoPunch = false
        end
end)

Tab5:AddSwitch("Autofarm Dungeons (Set Weapon AutoEquip and AutoPunch)", function(autodung)
if autodung == true then
_G.Autofarm1 = true
_G.AF = true
Autofarm("Dungeon Mobs")
else
_G.Autofarm1 = false
_G.AF = false
end
end)

_G.Label2 = Tab3:AddLabel("Check For DF First", function() end)

_G.Label3 = Tab3:AddLabel("Check For DF First", function() end)

	Tab:Show()
	wait()
	game:GetService("CoreGui").imgui.Windows.Position = UDim2.new(0, _G.CustomXStartPosition, 0, _G.CustomYStartPosition)
	library:FormatWindows()
end)
end
end
end
end
function clearremotes()
for i,v in pairs(game:GetService("CoreGui").imgui.Windows:GetChildren()) do
if tostring(v.Title.Text) == "Dev Shit" then
for _,b in pairs(v:GetDescendants()) do
if b.Name == "Dropdown" then
for j,k in pairs(b.Box.Objects:GetChildren()) do
if k.Name ~= "UIListLayout" then
k:Destroy()
end
end
end
end
end
end
end
spawn(function()
local mt = getrawmetatable(game)
make_writeable(mt)

local namecall = mt.__namecall

mt.__namecall = newcclosure(function(self, ...)
    _G.method = getnamecallmethod()
    _G.args = {...} --gets all arguments
    _G.thing = self

    if _G.Blocklist ~= {} then
    _G.Blocc = false
    for i,v in pairs(_G.Blocklist) do
        if tostring(_G.thing) == tostring(v) then
        _G.Blocc = true
        end
    end
    end
    
    if _G.Blocc == true then
    return wait(9e9)
    end
    
    if _G.method == "FireServer" and _G.RemoteToggle == true or _G.method == "InvokeServer" and _G.RemoteToggle == true then
        _G.End = false
        pcall(function()
        for i,v in pairs(_G.Blacklist) do
        if tostring(_G.thing) == tostring(v) then
        _G.End = true
        end
        end
        end)
        pcall(function()
        if _G.End ~= true then
        store()
        makescript()
        table.insert(_G.RemoteTable, table.concat({tostring(_G.storedthing), tostring(_G.storedmethod), tostring(_G.storedpath), tostring(table.concat(_G.storedargs, ","))}, "                                                                                                                             "))
        end
        end)
    end
    return namecall(self, ...)
end)
end)

spawn(function()
while true do
if _G.RemoteToggle == true and _G.RemoteTable ~= {} then
for i,v in pairs(_G.RemoteTable) do
_G.RemoteDropdown:Add(tostring(v))
table.remove(_G.RemoteTable, 1)
end
end
wait(0.1)
end
end)
local ExecutorWindow = library:AddWindow("Dev Shit", {
		main_color = _G.maincolor,
		min_size = Vector2.new(480, 310),
		toggle_key = Enum.KeyCode.RightControl,
		can_resize = true,
	})
    local ExeTab = ExecutorWindow:AddTab("Xequtor")
	local RspyTab = ExecutorWindow:AddTab("RemoteStalker")
	RspyTab:AddSwitch("Remote Toggle (Logging Remotes)", function(RemoteToggle)
    _G.RemoteToggle = RemoteToggle
	end)
	_G.RemoteDropdown = RspyTab:AddDropdown("Remotes", function(object)
	_G.StorageTable = {}
		for i,v in string.gmatch(object, "[^%s]+") do
            table.insert(_G.StorageTable, i)
		end
        _G.argstable = {}
        _G.argstable2 = {}
	    for i,v in pairs(_G.StorageTable) do
            if i == 1 then
            _G.thing2 = v
            elseif i == 2 then
            _G.method2 = v
            elseif i == 3 then
            _G.pat = v
            elseif i == 4 then
            table.insert(_G.argstable2, v)
            elseif i > 4 then
            table.insert(_G.argstable2, " ")
            table.insert(_G.argstable2, v)
            end
	    end
	print(table.concat(_G.argstable2))
	_G.bald2 = {}
	str = tostring(table.concat(_G.argstable2))
	for word in string.gmatch(str, '([^,]+)') do
    table.insert(_G.argstable, tostring(word))
    end
    for i,v in pairs(_G.argstable) do
    if type(v) == 'number' then
    table.insert(_G.bald2, tostring(table.concat({"[", i, "]", " = ", v}, "")))
    else
    table.insert(_G.bald2, tostring(table.concat({"[", i, "]", " = ", '"', v, '"'}, "")))
    end
    end
    _G.Console:Set(tostring(table.concat({"local args = {", table.concat(_G.bald2, ",\n"), "}", "", table.concat({"game.", _G.pat, ':', tostring(_G.method2), "(unpack(args))"}, "")}, "\n")))
	end)
_G.Console = RspyTab:AddConsole({
			["y"] = 100,
			["source"] = "Lua",
		})
local RspyButtons = RspyTab:AddHorizontalAlignment()
RspyButtons:AddButton("Run Remote", function()
    if _G.RemoteToggle == true then
        _G.RemoteToggle = false
		loadstring(_G.Console:Get())()
	    _G.RemoteToggle = true
	else
	loadstring(_G.Console:Get())()
	end
end)
RspyButtons:AddButton("Copy Code", function()
		setclipboard(_G.Console:Get())()
end)
RspyButtons:AddButton("Clear Logs", function()
clearremotes()
end)
RspyButtons:AddButton("Clear Console", function()
		_G.Console:Set("")
end)
local RspyButtons2 = RspyTab:AddHorizontalAlignment()
RspyButtons2:AddButton("Block Remote", function()
		table.insert(_G.Blocklist, tostring(_G.thing2))
end)
RspyButtons2:AddButton("Blacklist Remote", function()
		table.insert(_G.Blacklist, tostring(_G.thing2))
end)
RspyButtons2:AddButton("Clear Blocklist", function()
		_G.Blocklist = {}
end)
RspyButtons2:AddButton("Clear Blacklist", function()
		_G.Blacklist = {}
end)
	local Console = ExeTab:AddConsole({
			["y"] = 100,
			["source"] = "Lua",
		})
		Console:Set("-- This is a executor console, try both buttons.\n    print('test')")
		local ExecutorButtons = ExeTab:AddHorizontalAlignment()
		ExecutorButtons:AddButton("Execute", function()
			loadstring(Console:Get())()
		end)
		ExecutorButtons:AddButton("Clear", function()
			Console:Set("")
		end)
	if getgc and getreg then
	local UpvalueTab = ExecutorWindow:AddTab("Upvalues")
	UpvalueTab:AddTextBox("Upvalue Name(Ex. Ammo)/Value(Ex. 19)", function(UN)
		_G.ChangeValue = UN
		end, {
			["clear"] = false,
		})
		
		UpvalueTab:AddTextBox("Upvalue New Value(Ex. 999 or 0.01, or true/false)", function(UV)
		print(UV)
		if tonumber(UV) ~= nil or UV == "true" or UV == "false" then
		upvalue(_G.ChangeValue, UV, _G.GetGC)
		end
		end, {
			["clear"] = false,
		})
		UpvalueTab:AddTextBox("Search For Upvalue (Can be Partial Name, Results Printed)", function(UPV)
		if _G.GetGC == true then
for i,v in pairs(getgc(true)) do
    if typeof(v) == "table" then
            for _,b in pairs(v) do
            if string.match(tostring(_):lower(),UPV:lower()) then
            print(_,b)
            end
        end
    end
end
else
for i,v in pairs(getreg()) do
    if typeof(v) == "table" then
            for _,b in pairs(v) do
            if string.match(tostring(_):lower(),UPV:lower()) then
            print(_,b)
            end
        end
    end
end
end
		end, {
			["clear"] = false,
		})
		UpvalueTab:AddButton("Print all Upvalues", function()
		upvalue("Change", Bruh, _G.GetGC)
		end)
		UpvalueTab:AddSwitch("getgc (whole different table for upvalues)", function(GC)
        _G.GetGC = GC
		end)
	end
	local Creds = ExecutorWindow:AddTab("Credits")
	Creds:AddLabel("Made by Jakekill871#9002")
	Creds:AddLabel("Hevily Edited by SleepyKoder")
	Creds:AddLabel("BiggerMath is licenced to RealSwag LLC, 2019-2022")
	ExeTab:Show()
	library:FormatWindows()
end
end)
