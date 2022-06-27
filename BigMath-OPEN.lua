--created by PiePixel#0855 
--Big Math Basic Immigrant Client
--message for support lol
--this took me 4 hrs lol fuck this script


--fps boost cuz this shit kills ur fps even on a good pc
--true = remove
--false = keep
_G.FPS_Settings = {
	Graphics = true,
	Lighting = true,
	Texture = false,
	Terrain = true,
	Effects = false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/GRIPPERTV/FPS-Booster/main/Source.lua", true))()

--thank you GRIPPERTV for making that script 

-- actual shit that took me so long that the core i-11 came out and intel went back to being on top (never actually happened)
local function CreateInstance(cls,props)
local inst = Instance.new(cls)
for i,v in pairs(props) do
	inst[i] = v
end
return inst
end
--GUI (DO NOT MESS WITH MESSING WITH ANYTHING CAN BREAK EVERYTHING)
local FEKillGUI = CreateInstance('ScreenGui',{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name='Big Math Client', Parent=game.CoreGui})
local Topframe = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.129412, 0.129412, 0.129412),BackgroundTransparency=0,BorderColor3=Color3.new(0.196078, 0.196078, 0.196078),BorderSizePixel=2,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.31173709, 0, 0.404096842, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 180, 0, 27),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'Topframe',Parent = FEKillGUI})
local Mainframe = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.129412, 0.129412, 0.129412),BackgroundTransparency=0,BorderColor3=Color3.new(0.196078, 0.196078, 0.196078),BorderSizePixel=2,ClipsDescendants=false,Draggable=false,Position=UDim2.new(-0.00117374002, 0, 0.970018506, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 180, 0, 132),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'Mainframe',Parent = Topframe})
local Start = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Gameing',TextColor3=Color3.new(0, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.313726, 0.313726, 0.313726),BackgroundTransparency=0,BorderColor3=Color3.new(0.121569, 0.121569, 0.121569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0388888903, 0, 0.0681818202, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 78, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='Start',Parent = Mainframe})
local Stop = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Gameing',TextColor3=Color3.new(0, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.313726, 0.313726, 0.313726),BackgroundTransparency=0,BorderColor3=Color3.new(0.121569, 0.121569, 0.121569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.522222221, 0, 0.0681818202, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 78, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='Stop',Parent = Mainframe})
local Plus100 = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='v1.001',TextColor3=Color3.new(0, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.196078, 0.196078, 0.196078),BackgroundTransparency=0,BorderColor3=Color3.new(0.121569, 0.121569, 0.121569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0388888903, 0, 0.25, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 165, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='Plus100',Parent = Mainframe})
local Plus10000 = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='https://bit.ly/ImmigranteServ',TextColor3=Color3.new(0, 0, 0),TextScaled=true,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.196078, 0.196078, 0.196078),BackgroundTransparency=0,BorderColor3=Color3.new(0.121569, 0.121569, 0.121569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0388888903, 0, 0.431818187, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 165, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='Plus10000',Parent = Mainframe})
local Plus100000 = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='OPEN SOURCE',TextColor3=Color3.new(0, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.196078, 0.196078, 0.196078),BackgroundTransparency=0,BorderColor3=Color3.new(0.121569, 0.121569, 0.121569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0388888903, 0, 0.613636374, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 165, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='Plus100000',Parent = Mainframe})
local KillAll = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Kill All',TextColor3=Color3.new(0, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.196078, 0.196078, 0.196078),BackgroundTransparency=0,BorderColor3=Color3.new(0.121569, 0.121569, 0.121569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0388888903, 0, 0.795454562, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 165, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='KillAll',Parent = Mainframe})
local Creds = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size24,Text='Big Math Client',TextColor3=Color3.new(0.529412, 0.529412, 0.529412),TextScaled=false,TextSize=19,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.129412, 0.129412, 0.129412),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.294444442, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 72, 0, 22),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='Creds',Parent = Topframe})
local CloseSpin = CreateInstance('TextButton',{Font=Enum.Font.Code,FontSize=Enum.FontSize.Size24,Text='',TextColor3=Color3.new(0.529412, 0.529412, 0.529412),TextScaled=false,TextSize=20,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.129412, 0.129412, 0.129412),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.872222245, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 22, 0, 22),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='CloseSpin',Parent = Topframe})
local IY = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='IY',TextColor3=Color3.new(0.529412, 0.529412, 0.529412),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.129412, 0.129412, 0.129412),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 14, 0, 12),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='IY',Parent = Topframe})
local Help = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='?',TextColor3=Color3.new(0.529412, 0.529412, 0.529412),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.129412, 0.129412, 0.129412),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0777777806, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 14, 0, 12),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='Help',Parent = Topframe})
local Topframe2 = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.129412, 0.129412, 0.129412),BackgroundTransparency=0,BorderColor3=Color3.new(0.196078, 0.196078, 0.196078),BorderSizePixel=2,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.12582159, 0, 0.404096842, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 180, 0, 27),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'Topframe2',Parent = FEKillGUI})
local Mainframe2 = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.129412, 0.129412, 0.129412),BackgroundTransparency=0,BorderColor3=Color3.new(0.196078, 0.196078, 0.196078),BorderSizePixel=2,ClipsDescendants=false,Draggable=false,Position=UDim2.new(-0.00117374002, 0, 0.970018148, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 180, 0, 99),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'Mainframe2',Parent = Topframe2})
local KillAll2 = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Kill All',TextColor3=Color3.new(0, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.196078, 0.196078, 0.196078),BackgroundTransparency=0,BorderColor3=Color3.new(0.121569, 0.121569, 0.121569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0388888903, 0, 0.705106497, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 165, 0, 22),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='KillAll2',Parent = Mainframe2})
local KillPlr = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Kill Player',TextColor3=Color3.new(0, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.196078, 0.196078, 0.196078),BackgroundTransparency=0,BorderColor3=Color3.new(0.121569, 0.121569, 0.121569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0388888903, 0, 0.421717167, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 165, 0, 22),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='KillPlr',Parent = Mainframe2})
local Namebox = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='Player Name',TextColor3=Color3.new(0, 0, 0), PlaceholderText='', PlaceholderColor3=Color3.new(0.7, 0.7, 0.7),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.305882, 0.305882, 0.305882),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0388888903, 0, 0.0681818202, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 165, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='Namebox',Parent = Mainframe2})
local Creds = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size24,Text='Big Math Client',TextColor3=Color3.new(0.529412, 0.529412, 0.529412),TextScaled=false,TextSize=19,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.129412, 0.129412, 0.129412),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.294444442, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 72, 0, 22),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='Creds',Parent = Topframe2})
local CloseTool = CreateInstance('TextButton',{Font=Enum.Font.Code,FontSize=Enum.FontSize.Size24,Text='',TextColor3=Color3.new(0.529412, 0.529412, 0.529412),TextScaled=false,TextSize=20,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.129412, 0.129412, 0.129412),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.872222245, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 22, 0, 22),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='CloseTool',Parent = Topframe2})
local Help2 = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='?',TextColor3=Color3.new(0.529412, 0.529412, 0.529412),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.129412, 0.129412, 0.129412),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 15, 0, 12),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='Help2',Parent = Topframe2})
local Topframe3 = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.129412, 0.129412, 0.129412),BackgroundTransparency=0,BorderColor3=Color3.new(0.196078, 0.196078, 0.196078),BorderSizePixel=2,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.501488745, 0, 0.403617978, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 252, 0, 25),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'Topframe3',Parent = FEKillGUI})
local Mainframe3 = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.129412, 0.129412, 0.129412),BackgroundTransparency=0,BorderColor3=Color3.new(0.196078, 0.196078, 0.196078),BorderSizePixel=2,ClipsDescendants=false,Draggable=false,Position=UDim2.new(-0.00117807544, 0, 0.960024238, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 252, 0, 169),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'Mainframe3',Parent = Topframe3})
local TextLabel = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Tools method                                 Spin Method',TextColor3=Color3.new(0.639216, 0.639216, 0.639216),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.196078, 0.196078, 0.196078),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 252, 0, 24),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='TextLabel',Parent = Mainframe3})
local TextLabel = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='',TextColor3=Color3.new(0.639216, 0.639216, 0.639216),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.196078, 0.196078, 0.196078),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.492063493, 0, 0.142011836, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 1, 0, 146),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='TextLabel',Parent = Mainframe3})
local TextLabel = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='This method is the best method for killing all players, but still doesn\'t always kill 100% of them. What this does is teleports you to every player after equipping the tool, which may or may not kill all of the players. First, click the Kill Player button when the textbox is empty, then click Kill All.',TextColor3=Color3.new(0.470588, 0.470588, 0.470588),TextScaled=true,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.129412, 0.129412, 0.129412),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0.177514791, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 124, 0, 139),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='TextLabel',Parent = Mainframe3})
local TextLabel = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='This method can be very buggy but does (usually) work. It does not always kill everyone but will usually knock a few people out of the map. First enable IY (the top left button), then type ;Fly, then set a spin speed and start. When you hit kill all, it should teleport you to every player one-by-one.',TextColor3=Color3.new(0.470588, 0.470588, 0.470588),TextScaled=true,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.129412, 0.129412, 0.129412),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.507936537, 0, 0.177514791, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 124, 0, 139),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='TextLabel',Parent = Mainframe3})
local HelpTitle = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size24,Text='Help',TextColor3=Color3.new(0.529412, 0.529412, 0.529412),TextScaled=false,TextSize=19,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.129412, 0.129412, 0.129412),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.295512855, 0, 0.00879141036, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 101, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='HelpTitle',Parent = Topframe3})
local CloseHelp = CreateInstance('TextButton',{Font=Enum.Font.Code,FontSize=Enum.FontSize.Size24,Text='',TextColor3=Color3.new(0.529412, 0.529412, 0.529412),TextScaled=false,TextSize=20,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.129412, 0.129412, 0.129412),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.875387311, 0, 0.00879141036, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 30, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='CloseHelp',Parent = Topframe3})

Topframe.Active = true
Topframe.Draggable = true
Topframe2.Active = true
Topframe2.Draggable = true
Topframe3.Active = true
Topframe3.Draggable = true
Topframe3.Visible = false

Topframe.Active = true
Topframe.Draggable = true

CloseTool.MouseButton1Click:Connect(function()
	Topframe2:Destroy()
end)

CloseSpin.MouseButton1Click:Connect(function()
	Topframe:Destroy()
end)

CloseHelp.MouseButton1Click:Connect(function()
	Topframe3.Visible = false
end)

Help.MouseButton1Click:Connect(function()
	if Topframe3.Visible == false then
		Topframe3.Visible = true
	elseif
		Topframe3.Visible == true then
			Topframe3.Visible = false
	end
end)

Help2.MouseButton1Click:Connect(function()
	if Topframe3.Visible == false then
		Topframe3.Visible = true
	elseif
		Topframe3.Visible == true then
			Topframe3.Visible = false
	end
end)

power = 500
active = false
local val = Instance.new("IntValue")
val.Name = "Number"
val.Parent = game.Players.LocalPlayer
val.Value = 5

Start.MouseButton1Click:Connect(function()
	game:GetService('RunService').Stepped:connect(function()
if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character.Torso.CanCollide = false
game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
else
if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character.UpperTorso.CanCollide = false
game.Players.LocalPlayer.Character.LowerTorso.CanCollide = false
game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
end
end
end)
wait(.1)
local bambam = Instance.new("BodyThrust")
bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bambam.Force = Vector3.new(power,0,power)
bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
end)

Stop.MouseButton1Click:Connect(function()
	for i=1, 200 do
	active = false
game.Players.LocalPlayer.Character.HumanoidRootPart.BodyThrust:Remove()
	end
	power = power - 100000
game.Players.LocalPlayer.Number.Value = game.Players.LocalPlayer.Number.Value - 1
end)

Plus100.MouseButton1Click:Connect(function()
	power = power + 100
game.Players.LocalPlayer.Number.Value = game.Players.LocalPlayer.Number.Value + 1
end)

Plus10000.MouseButton1Click:Connect(function()
	power = power + 1000
game.Players.LocalPlayer.Number.Value = game.Players.LocalPlayer.Number.Value + 1
end)

Plus100000.MouseButton1Click:Connect(function()
	power = power + 100000
game.Players.LocalPlayer.Number.Value = game.Players.LocalPlayer.Number.Value + 1
end)


--INF YEILD FE
IY.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet(('https://pastebin.com/raw/tzTXmYf2'),true))()
end)

--INF YEILD FE END SCRIPT


KillAll.MouseButton1Click:Connect(function()
local first = game.Players
local you = first.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(first:GetPlayers()) do
	for i=1,3 do
you.CFrame = v.Character.HumanoidRootPart.CFrame
wait(.1)
you.CFrame = v.Character.HumanoidRootPart.CFrame		
end
wait(.1)
end
local first = game.Players
local you = first.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(first:GetPlayers()) do
	for i=1,3 do
you.CFrame = v.Character.HumanoidRootPart.CFrame
wait(.1)
you.CFrame = v.Character.HumanoidRootPart.CFrame		
end
wait(.1)
end
local first = game.Players
local you = first.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(first:GetPlayers()) do
	for i=1,3 do
you.CFrame = v.Character.HumanoidRootPart.CFrame
wait(.1)
you.CFrame = v.Character.HumanoidRootPart.CFrame		
end
wait(.1)
end
local first = game.Players
local you = first.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(first:GetPlayers()) do
	for i=1,3 do
you.CFrame = v.Character.HumanoidRootPart.CFrame
wait(.1)
you.CFrame = v.Character.HumanoidRootPart.CFrame		
end
wait(.1)
end
local first = game.Players
local you = first.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(first:GetPlayers()) do
	for i=1,3 do
you.CFrame = v.Character.HumanoidRootPart.CFrame
wait(.1)
you.CFrame = v.Character.HumanoidRootPart.CFrame		
end
wait(.1)
end
local first = game.Players
local you = first.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(first:GetPlayers()) do
	for i=1,3 do
you.CFrame = v.Character.HumanoidRootPart.CFrame
wait(.1)
you.CFrame = v.Character.HumanoidRootPart.CFrame		
end
wait(.1)
end
local first = game.Players
local you = first.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(first:GetPlayers()) do
	for i=1,3 do
you.CFrame = v.Character.HumanoidRootPart.CFrame
wait(.1)
you.CFrame = v.Character.HumanoidRootPart.CFrame		
end
wait(.1)
end
local first = game.Players
local you = first.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(first:GetPlayers()) do
	for i=1,3 do
you.CFrame = v.Character.HumanoidRootPart.CFrame
wait(.1)
you.CFrame = v.Character.HumanoidRootPart.CFrame		
end
wait(.1)
end
end)

KillAll2.MouseButton1Click:Connect(function()
local first = game.Players
local you = first.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(first:GetPlayers()) do
	for i=1,3 do
you.CFrame = v.Character.HumanoidRootPart.CFrame
wait(.1)
you.CFrame = v.Character.HumanoidRootPart.CFrame		
end
wait(.1)
end
local first = game.Players
local you = first.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(first:GetPlayers()) do
	for i=1,3 do
you.CFrame = v.Character.HumanoidRootPart.CFrame
wait(.1)
you.CFrame = v.Character.HumanoidRootPart.CFrame		
end
wait(.1)
end
local first = game.Players
local you = first.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(first:GetPlayers()) do
	for i=1,3 do
you.CFrame = v.Character.HumanoidRootPart.CFrame
wait(.1)
you.CFrame = v.Character.HumanoidRootPart.CFrame		
end
wait(.1)
end
local first = game.Players
local you = first.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(first:GetPlayers()) do
	for i=1,3 do
you.CFrame = v.Character.HumanoidRootPart.CFrame
wait(.1)
you.CFrame = v.Character.HumanoidRootPart.CFrame		
end
wait(.1)
end
local first = game.Players
local you = first.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(first:GetPlayers()) do
	for i=1,3 do
you.CFrame = v.Character.HumanoidRootPart.CFrame
wait(.1)
you.CFrame = v.Character.HumanoidRootPart.CFrame		
end
wait(.1)
end
local first = game.Players
local you = first.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(first:GetPlayers()) do
	for i=1,3 do
you.CFrame = v.Character.HumanoidRootPart.CFrame
wait(.1)
you.CFrame = v.Character.HumanoidRootPart.CFrame		
end
wait(.1)
end
local first = game.Players
local you = first.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(first:GetPlayers()) do
	for i=1,3 do
you.CFrame = v.Character.HumanoidRootPart.CFrame
wait(.1)
you.CFrame = v.Character.HumanoidRootPart.CFrame		
end
wait(.1)
end
local first = game.Players
local you = first.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(first:GetPlayers()) do
	for i=1,3 do
you.CFrame = v.Character.HumanoidRootPart.CFrame
wait(.1)
you.CFrame = v.Character.HumanoidRootPart.CFrame		
end
wait(.1)
end
end)

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local function RemoveSpaces(String)
	return String:gsub("%s+", "") or String
end

local function FindPlayer(String)
	String = RemoveSpaces(String)
	for _, _Player in pairs(Players:GetPlayers()) do
		if _Player.Name:lower():match('^'.. String:lower()) then
			return _Player
		end
	end
	return nil
end

KillPlr.MouseButton1Click:Connect(function()
	local Target = FindPlayer(Namebox.Text)
	if Target and Target.Character then
		local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
		local Torso = Character:FindFirstChild("Torso") or Character:FindFirstChild("UpperTorso")
		
		local savepos = LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
	    Torso.Anchored = true
	    local tool = Instance.new("Tool", LocalPlayer.Backpack)
	    local hat = LocalPlayer.Character:FindFirstChildOfClass("Accessory")
	    local hathandle = hat.Handle
	    hathandle.Parent = tool
	    hathandle.Massless = true
	    tool.GripPos = Vector3.new(0, 9e99, 0)
	    tool.Parent = LocalPlayer.Character
	    repeat wait() until LocalPlayer.Character:FindFirstChildOfClass("Tool") ~= nil
	    tool.Grip = CFrame.new(Vector3.new(0, 0, 0))
		Torso.Anchored = false
	    repeat LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = Target.Character:FindFirstChild("HumanoidRootPart").CFrame wait()
	    until Target.Character == nil or Target.Character:FindFirstChild("Humanoid").Health <= 0 or LocalPlayer.Character == nil or LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0 or (Target.Character:FindFirstChild("HumanoidRootPart").Velocity.magnitude - Target.Character:FindFirstChild("Humanoid").WalkSpeed) > (Target.Character:FindFirstChild("Humanoid").WalkSpeed + 20)
	    LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools()
	    hathandle.Parent = hat
	    hathandle.Massless = false
	    tool:Destroy()
	    LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = savepos
      else
--big error i make here dont know how to fix lol	
		warn'no player found named like that and shit'
	end
end)
--ok bye
