local ver = "0.13"
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

LoadGOSScript(Base64Decode("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"))

id = 11
scriptname = "GlobalModel"
GoSTracker(scriptname,id)

if not DirExists(SOUNDS_PATH.. "\\DragonSounds\\") then
  CreateDir(SOUNDS_PATH.."\\DragonSounds\\")
end

if not FileExist(SOUNDS_PATH.."//DragonSounds//DragonSound.wav") then
   PrintChat("DragonSound.wav not found. Please wait for download.")
   DownloadFileAsync("https://raw.githubusercontent.com/estruptum/GoS/master/Dragon-Sounds/DragonSound.wav", SOUNDS_PATH.."//DragonSounds//DragonSound.wav", function() PrintChat("File downloaded succesfully, press 2x f6!") return end)
end

Global = MenuConfig("Global Model Changer", "Global Model Changer")
Global:Menu("a1st", "On/Off")
	Global.a1st:Boolean("OnOff", "Enable Model Changer", true)
	Global.a1st:Info("Tere", "To change Model press '+' or '-' ")
	Global.a1st:Empty("fs", 0)
	Global.a1st:Boolean("Value", "Enable Model Value text", true)
  Global.a1st:Empty("fdsw", 0)
  Global.a1st:Boolean("Sound", "Enable Dragon Sound", true)
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
	[1]	= "SRU_RiftHerald",
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
OnWndMsg(function(msg, wParam)
  if msg == 256 and wParam == 189  and SetDCP > 0 then
    SetDCP = SetDCP - 1
  end
  if msg == 256 and wParam == 187 then
    if Global.a1st.Sound:Value() then
      if SetDCP >= 4 and SetDCP <= 7 then
        PlaySound(SOUNDS_PATH.. "//DragonSounds//DragonSound.wav")
      end
    end
    SetDCP = SetDCP + 1
  end
	GlobalModelChanger()
end)
OnDraw(function(myHero)
    ValueDrawing()
end)
