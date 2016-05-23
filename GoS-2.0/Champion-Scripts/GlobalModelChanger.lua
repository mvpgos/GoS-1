local ver = "0.1"
function AutoUpdate(data)
    if tonumber(data) > tonumber(ver) then
        PrintChat("New Global Model Changer Version Found " .. data)
        PrintChat("Downloading update, please wait...")
        DownloadFileAsync("https://raw.githubusercontent.com/estruptum/GoS/master/GoS-2.0/Champion-Scripts/GlobalModelChanger.lua", SCRIPT_PATH .. "GlobalModelChanger.lua", function() PrintChat(string.format("<font color=\"#FC5743\"><b>Script Downloaded succesfully. please 2x f6</b></font>")) return end)
    else
    	DelayAction(function() PrintChat(string.format("<font color=\"#fa87b4\"><b>Script Up to date.</b></font>")) end, 0.5)
    end
end 
GetWebResultAsync("https://raw.githubusercontent.com/estruptum/GoS/master/GoS-2.0/Champion-Scripts/GlobalModelChanger.version", AutoUpdate)

Global = MenuConfig("Global Model Changer", "Global Model Changer")
Global:Menu("a1st", "On/Off")
	Global.a1st:Boolean("OnOff", "Enable Model Changer", true)
	Global.a1st:Info("Tere", "To change Model press '+' or '-' ")
	Global.a1st:Empty("fs", 0)
	Global.a1st:Boolean("Value", "Enable Model Value text", true)
	Global.a1st:Empty("gd", 0)
	Global.a1st:Info("a", "Value 1: Rift Herald")
	Global.a1st:Info("aad", "Value 2: Krug")
	Global.a1st:Info("aa1", "Value 3: Razorbeak")
	Global.a1st:Info("a1313", "Value 4: Dragon Water")
	Global.a1st:Info("34523a", "Value 5: Dragon Fire")
	Global.a1st:Info("325235a", "Value 6: Dragon Earth")
	Global.a1st:Info("a32674", "Value 7: Dragon Air")
	Global.a1st:Info("aewqe", "Value 8: Dragon Elder")
	Global.a1st:Info("sdfsa", "Value 9: A beautiful Duck")
	Global.a1st:Info("sdfhsa", "Value 10: Crab")
	Global.a1st:Info("sdfhasa", "Value 11: Red Buff")
	Global.a1st:Info("sdfhdwsa", "Value 12: Blue Buff")
Global:Menu("Info", "Version & Info")
	Global.Info:Info("Ee", "Current Version: "..ver)

local MobId = {
	[1]		= "SRU_RiftHerald",
	[2] 	= "SRU_Krug",
	[3] 	= "Sru_Razorbeak",
	[4] 	= "SRU_Dragon_Water",
	[5] 	= "SRU_Dragon_Fire",
	[6] 	= "SRU_Dragon_Earth",
	[7] 	= "SRU_Dragon_Air",
	[8] 	= "SRU_Dragon_Elder",
	[9] 	= "Sru_Duckie",
	[10] 	= "Sru_Crab",
	[11]	= "SRU_Red",
	[12]	= "SRU_Blue"
}
--Hero Model Changer // I have to change the first letter of each name to capital... :lazy:
local HeroId = {
      [1] = "Aatrox",
      [2] = "ahri",
      [3] = "akali",
      [4] = "alistar",
      [5] = "amumu",
      [6] = "anivia",
      [7] =  "annie",
      [8] = "ashe",
      [9] = "aurelionsol",
      [10] = "azir",
      [11] = "bard",
      [12] = "blitzcrank",
      [13] = "brand",
      [14] = "braum",
      [15] = "caitlyn",
      [16] = "cassiopeia",
      [17] = "chogath",
      [18] = "corki",
      [19] = "darius",
      [20] = "diana",
      [21] = "drmundo",
      [22] = "draven",
      [23] = "ekko",
      [24] = "elise",
      [25] = "evelynn",
      [26] = "ezreal",
      [27] = "fiddlesticks",
      [28] = "fiora",
      [29] = "fizz",
      [30] = "galio",
      [31] = "gangplank",
      [32] = "garen",
      [33] = "gnar",
      [34] = "janna",
      [35] = "jarvaniv",
      [36] = "jax",
      [37] = "jayce",
      [38] = "jhin",
      [39] = "jinx",
      [40] = "kalista",
      [41] = "karma", 
      [42] = "karthus",
      [43] = "kassadin", 
      [44] = "katarina", 
      [45] = "kayle",
      [46] = "kennen",
      [47] = "khazix",
      [48] = "kindred",
      [49] = "kogmaw",
      [50] = "leblanc",
      [51] = "leesin",
      [52] = "leona",
      [53] = "lissandra",
      [54] = "lucian",
      [55] = "lulu",
      [56] = "lux",
      [57] = "Masteryi",
      [58] = "Malphite",
      [59] = "Malzahar",
      [60] = "Maokai",
      [61] = "Missfortune",
      [62] = "Mordekaiser",
      [63] = "Morgana",
      [64] = "Nami",
      [65] = "Nasus",
      [66] = "Nautilus",
      [67] = "Nidalee",
      [68] = "Nocturne",
      [69] = "Nunu",
      [70] = "Olaf",
      [71] = "Orianna",
      [72] = "Pantheon",
      [73] = "Poppy",
      [74] = "Quinn",
      [75] = "Rammus",
      [76] = "Reksai",
      [77] = "Rengar",
      [78] = "Riven",
      [79] = "Rumble", 
      [80] = "Ryze",
      [81] = "Sejuani",
      [82] = "Shaco",
      [83] = "Shen",
      [84] = "Shyvana",
      [85] = "Singed",
      [86] = "Sion",
      [87] = "Sivir",
      [88] = "Skarner",
      [89] = "Sona",
      [90] = "Soraka", 
      [91] = "Swain",
      [92] = "Syndra",
      [93] = "Tahmkench",
      [94] = "Taliyah",
      [95] = "Talon", 
      [96] = "Taric",
      [97] = "Teemo",
      [98] = "Thresh",
      [99] = "Tristana",
      [100] = "Trundle",
      [101] = "Tryndamere",
      [102] = "Twistedfate",
      [103] = "Twitch",
      [104] = "Udyr",
      [105] = "Urgot",
      [106] = "Varus",
      [107] = "Vayne",
      [108] = "Veigar",
      [109] = "Velkoz",
      [110] = "Vi",
      [111] = "Viktor",
      [112] = "Vladimir",
      [113] = "Volibear",
      [114] = "Warwick",
      [115] = "Wukong",
      [116] = "Xerath",
      [117] = "Xinzhao",
      [118] = "Yasuo",
      [119] = "Yorick",
      [120] = "Zac",
      [121] = "Zed",
      [122] = "Ziggs",
      [123] = "Zilean",
      [124] = "Zyra"
} -- Zeyx's
local SetDCP, GlobalModel = 0
local function GlobalModelChanger()
    if Global.a1st.OnOff:Value() then
        if SetDCP > 0 and SetDCP ~= GlobalModel and SetDCP <= 12 then
            ModelChanger(myHero, 0, MobId[SetDCP])
            GlobalSkin = SetDCP
        end
    else ModelChanger(myHero, 0, GetObjectName(myHero)) SetDCP = 0
    end
end
local function ValueDrawing()
    if Global.a1st.Value:Value() then
        DrawText("Model Value: "..SetDCP, 20, WorldToScreen(0, GetOrigin(myHero)).x, WorldToScreen(0, GetOrigin(myHero)).y, ARGB(255, 247, 8, 64))
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
    GlobalModelChanger()
end)

