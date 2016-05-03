local ver = "0.3"
local s = "Developed by Zeyx"
local vr = "Current Version " ..ver.. " . 21/04/2016"
local Champ = MyHeroName 
printIt = {s,vr} 
PrintChat(printIt[1])
PrintChat(printIt[2])
function AutoUpdate(data)
    if tonumber(data) > tonumber(ver) then
        PrintChat("New Version Found " .. data)
        PrintChat("Downloading update, please wait...")
        DownloadFileAsync("https://raw.githubusercontent.com/estruptum/GoS/master/GoS-2.0/Champion-Scripts/JungleGankAlerter.lua", SCRIPT_PATH .. "JungleGankAlerter.lua", function() PrintChat(string.format("<font color=\"#FC5743\"><b>Script Downloaded succesfully. please 2x f6</b></font>")) return end)
    else
        PrintChat(string.format("<font color=\"#fa87b4\"><b>Script Up to date.</b></font>"))
    end
end

GetWebResultAsync("https://raw.githubusercontent.com/estruptum/GoS/master/GoS-2.0/Champion-Scripts/JungleGankAlerter.version", AutoUpdate)



local JGA = MenuConfig("JGA", "JungleGankAlerter")

JGA:Menu("jungleGA", "Jungle Gank Alerter")
JGA.jungleGA:Boolean("Enabled", "Enable Jungle Gank Alerter", true)

JGA.jungleGA:SubMenu("Line", "JGA with Line")
	JGA.jungleGA.Line:Boolean("Yes", "Enable JGA with line", false)
	JGA.jungleGA.Line:Boolean("Sc", "Silent Check?", false)
	JGA.jungleGA.Line:Info("I1", "Silent Check = No drawing")
	JGA.jungleGA.Line:Slider("jCh", "Range to check jungler", 2690, 300, 7000)
	JGA.jungleGA.Line:Empty("Empty1", 0)
	JGA.jungleGA.Line:Slider("width", "Width of the line", 8, 1, 16)

JGA.jungleGA:SubMenu("Text", "JGA with text")
	JGA.jungleGA.Text:Boolean("Yes", "Enable JGA with text", false)
	JGA.jungleGA.Text:Boolean("Sc", "Silent Check?", false)
	JGA.jungleGA.Text:Info("I1", "Silent Check = No drawing")
	JGA.jungleGA.Text:Slider("jCh", "Range to check jungler", 2690, 300, 7000)
	JGA.jungleGA.Text:Empty("Empty1", 0)


JGA:Menu("Inf", "Information")
JGA.Inf:Info("I2", "Current Version ..." ..ver.."")
JGA.Inf:Info("I3", "Made By Zeyx")
JGA.Inf:Info("I4", "Upove if you liked it")


local GotSmite = nil
 DelayAction(function()
  for _, enemies in pairs(GetEnemyHeroes()) do
    if GetCastName(enemies, SUMMONER_1) == "SummonerSmite" or GetCastName(enemies, SUMMONER_1) == "S5_SummonerSmitePlayerGanker" or GetCastName(enemies, SUMMONER_1) == "S5_SummonerSmiteDuel"  or GetCastName(enemies, SUMMONER_2) == "SummonerSmite" or GetCastName(enemies, SUMMONER_2) == "S5_SummonerSmitePlayerGanker" or GetCastName(enemies, SUMMONER_2) == "S5_SummonerSmiteDuel" then
    GotSmite = enemies
    end
  end
 end)

OnDraw(function(myHero)

local RangeToCheck = JGA.jungleGA.Line.jCh:Value()
local width = JGA.jungleGA.Line.width:Value()

		if JGA.jungleGA.Line.Sc:Value() ~= true or JGA.jungleGA.Text.Sc:Value() ~= true then	
			DrawCircle(myHero.pos, RangeToCheck, 2, 3, GoS.Yellow)
		end

		if JGA.jungleGA.Enabled:Value() and ValidTarget(GotSmite, RangeToCheck) then
		   	DrawLine(WorldToScreen(0, GetOrigin(myHero)).x,WorldToScreen(0, GetOrigin(myHero)).y,WorldToScreen(0, GetOrigin(GotSmite)).x,WorldToScreen(0, GetOrigin(GotSmite)).y,width,GoS.Red)
		end

		if JGA.jungleGA.Enabled:Value() and ValidTarget(GotSmite, RangeToCheck) then
		   DrawText("Jungler in range", 15, GetResolution().x/2+400, GetResolution().y/2+60, ARGB(255, 75, 168, 202))
		end

end)

function HiUser()
        if GetGroup() == "Scripts Developer" then
            PrintChat(string.format("<font color=\"#8327BF\"><b>Welcome " ..GetUser().. " .</b></font>"))
        elseif GetGroup() == "Support" or GetGroup() == "support" then
            PrintChat(string.format("<font color=\"#0098ED\"><b>Welcome " ..GetUser().. " .</b></font>")) 
        elseif GetGroup() == "Local Support" then
            PrintChat(string.format("<font color=\"#33CCBB\"><b>Welcome " ..GetUser().. " .</b></font>")) 
        elseif GetGroup() == "Contributor" or GetGroup() == "contributor" then
            PrintChat(string.format("<font color=\"#FF69b4\"><b>Welcome " ..GetUser().. " .</b></font>")) 
        elseif GetGroup() == "Administrators" or GetGroup() == "Administrator" or GetGroup() == "administratos" or GetGroup() == "administrator" then
            PrintChat(string.format("<font color=\"#FF0000\"><b>Welcome " ..GetUser().. " .</b></font>"))
        elseif GetGroup() == "Moderator" or GetGroup() == "Moderators" or GetGroup() == "moderators" or GetGroup() == "moderator" then
            PrintChat(string.format("<font color=\"#3010D0\"><b>Welcome " ..GetUser().. " .</b></font>"))
        elseif GetGroup() == "Donator" or GetGroup() == "Donators" or GetGroup() == "donators" or GetGroup() == "donator" then
            PrintChat(string.format("<font color=\"#33CC33\"><b>Welcome " ..GetUser().. " .</b></font>"))
        elseif GetGroup() == "Subscriber" or GetGroup() == "Subscribers" or GetGroup() == "subscriber" or GetGroup() == "subscribers" then
            PrintChat(string.format("<font color=\"#FF8C00\"><b>Welcome " ..GetUser().. " .</b></font>"))
        elseif GetGroup() == "Vip" or GetGroup() == "+Vip" then
            PrintChat(string.format("<font color=\"#D3D300\"><b>Welcome " ..GetUser().. " .</b></font>"))
        elseif GetGroup() == "Member" or GetGroup() == "member" then
            PrintChat(string.format("<font color=\"#707070\"><b>Welcome " ..GetUser().. " .</b></font>"))
        end
end

HiUser()

PrintChat(string.format("<font color=\"#984DD1\"><b>Thanks for using Jungle Gank Alerter</b></font>"))
