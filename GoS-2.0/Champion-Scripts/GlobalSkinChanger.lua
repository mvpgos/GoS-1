local ver = "0.1"
function AutoUpdate(data)
    if tonumber(data) > tonumber(ver) then
        PrintChat("New Version Found " .. data)
        PrintChat("Downloading update, please wait...")
        DownloadFileAsync("https://raw.githubusercontent.com/estruptum/GoS/master/GoS-2.0/Champion-Scripts/GlobalSkinChanger.lua", SCRIPT_PATH .. "GlobalSkinChanger.lua", function() PrintChat(string.format("<font color=\"#FC5743\"><b>Script Downloaded succesfully. please 2x f6</b></font>")) return end)
    else
        PrintChat(string.format("<font color=\"#fa87b4\"><b>Script Up to date.</b></font>"))
    end
end
GetWebResultAsync("https://raw.githubusercontent.com/estruptum/GoS/master/GoS-2.0/Champion-Scripts/GlobalSkinChanger.version", AutoUpdate)

Global = MenuConfig("Global Skin Changer", "Global Skin Changer")
Global:Menu("a1st", "On/Off")
Global.a1st:Boolean("OnOff", "Enable Skin Changer", true)
Global.a1st:Info("Tere", "To change skin press '+' or '-' ")
Global.a1st:Empty("fs", 0)
Global.a1st:Boolean("Value", "Enable Value text", true)

local SetDCP, GlobalSkin = 0
local function GlobalSkinChanger()
	if Global.a1st.OnOff:Value() then
		if SetDCP >= 0  and SetDCP ~= GlobalSkin then
			HeroSkinChanger(myHero, SetDCP)
			GlobalSkin = SetDCP
		end
	else HeroSkinChanger(myHero, 0) SetDCP = 0
	end
end
local function ValueDrawing()
	if Global.a1st.Value:Value() then
		DrawText("Skin Value: "..SetDCP, 20, WorldToScreen(0, GetOrigin(myHero)).x, WorldToScreen(0, GetOrigin(myHero)).y, ARGB(255, 247, 8, 64))
	end
end
local function ReturnNormal()
	if SetDCP < 0 then SetDCP = 0 end
end
OnWndMsg(function(msg, wParam)
  if msg == 256 and wParam == 187 then
  	SetDCP = SetDCP + 1
  end
  if msg == 256 and wParam == 189 then
  	SetDCP = SetDCP - 1
  end
end)
OnDraw(function(myHero)
	ReturnNormal()
	ValueDrawing()
	GlobalSkinChanger()
end)
