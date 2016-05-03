require 'DamageLib'


local ver = "1.08 "

local res = GetResolution()

  function OnScreen(x, y)
      return x > 0 and x <= res.x and y > 0 and y <= res.y
  end



local ReqLoader = MenuConfig("Rql", "Zeyx's")

ReqLoader:Menu("Load", "Load Utilies")
    ReqLoader.Load:Boolean("LoadDamage", "Load Damage Drawing", false)
    ReqLoader.Load:Info("LoadIste2m", "")
    ReqLoader.Load:Boolean("LoadJumpSpots", "Load Jump Spots", false)
    ReqLoader.Load:Info("LoadIste2m", "")
    ReqLoader.Load:Boolean("LoadLevelUP", "Load Level Up Skills", false)
    ReqLoader.Load:Info("LoadIstem", "")
    ReqLoader.Load:Boolean("LoadInfo", "Load Personal Info", false)
    ReqLoader.Load:Info("LoadIsdem", "")
    ReqLoader.Load:Boolean("LoadWard", "Load AutoWard / Drawings", false)
    ReqLoader.Load:Info("LeoadIstem", "")
    ReqLoader.Load:Boolean("LoadItem", "Load Item Activator", false)
    ReqLoader.Load:Info("LoadIstsem", "")
    ReqLoader.Load:Boolean("LoadSmite", "Load Auto Smite", false)
    ReqLoader.Load:Info("LogadIstsem", "")
    ReqLoader.Load:Boolean("LoadSkin", "Load Skin Changer", false)
    ReqLoader.Load:Info("LogadIstwsem", "")
    ReqLoader.Load:Boolean("LoadDraws", "Load Skill Drawings", false)
    ReqLoader.Load:Info("LogadIstw2sem", "")
    ReqLoader.Load:Boolean("LoadDevs", "Load Dev Utilities", false)
    ReqLoader.Load:Info("LogadIstw2sem", "")
    ReqLoader.Load:Info("LogadIstw2s2em", "2x F6 to refresh modules")
    ReqLoader.Load:Info("LogadIstw2s2ems", "Ignore error msg, 2xf6 will fix")
    ReqLoader.Load:Empty("Empt1y23", 0)
    ReqLoader.Load:Info("c", "Developed by Zeyx")
    ReqLoader.Load:Empty("Te", 0)
    ReqLoader.Load:Info("e", "Current Version ... " ..ver.. "")
    

         



local Required = MenuConfig("REQ", "Zeyx's Utility")

Required:Menu("Req", "Required Utility")
                Required.Req:Empty("Empty1", 0)
                Required.Req:Boolean("ReqYes", "Enable Zeyx utilities", true)

                    

                    
                    

function DevsMenu()
Required.Req:SubMenu("SubReq6", "For Developers")
                                    Required.Req.SubReq6:Boolean("xyz", "Show XYZ Pos", false)
                                    Required.Req.SubReq6:Boolean("GCN1", "Get Summoner 1 Name", false)
                                    Required.Req.SubReq6:Boolean("GCN2", "Get Summoner 2 Name", false)
                                    Required.Req.SubReq6:Empty("Tese", 0)
                                    Required.Req.SubReq6:Boolean("ItemId1", "Get Item Slot 1's Name", false)
                                    Required.Req.SubReq6:Boolean("ItemId2", "Get Item Slot 2's Name", false)
                                    Required.Req.SubReq6:Boolean("ItemId3", "Get Item Slot 3's Name", false)
                                    Required.Req.SubReq6:Boolean("ItemId4", "Get Item Slot 4's Name", false)
                                    Required.Req.SubReq6:Boolean("ItemId7", "Get Item Slot 5's Name", false)
                                    Required.Req.SubReq6:Boolean("ItemId6", "Get Item Slot 6's Name", false)
                                    Required.Req.SubReq6:Boolean("ItemId5", "Get Item Slot 7's Name", false)
                                    Required.Req.SubReq6:Info("Return-1", "Will Return -1 if it's empty")
                                    Required.Req.SubReq6:Empty("Tesee", 0)
                                    Required.Req.SubReq6:Boolean("qN", "Get Q Skill name", false)
                                    Required.Req.SubReq6:Boolean("qR", "Get Q Range", false)
                                    Required.Req.SubReq6:Boolean("wN", "Get W Skill name", false)
                                    Required.Req.SubReq6:Boolean("wR", "Get W Range", false)
                                    Required.Req.SubReq6:Boolean("eN", "Get E Skill name", false)
                                    Required.Req.SubReq6:Boolean("eR", "Get E Range", false)
                                    Required.Req.SubReq6:Boolean("rN", "Get R Skill name", false)
                                    Required.Req.SubReq6:Boolean("rR", "Get R Range", false)
                                    Required.Req.SubReq6:Empty("Tdesee", 0)
                                    Required.Req.SubReq6:Boolean("MapId", "Print Map ID", false)
                                    Required.Req.SubReq6:Boolean("MobsID", "Draw Mobs names", false)
                                    Required.Req.SubReq6:Info("SDWW", "To Draw Names is needed vision")
end

if ReqLoader.Load.LoadDevs:Value() then   
    DevsMenu()
end 
function DrawingsMenu()
Required.Req:SubMenu("SubReq4", "Drawings")
                                    Required.Req.SubReq4:Boolean("DrawingsEnabled", "Enable Drawings", true)
                                    Required.Req.SubReq4:Empty("Empty4", 0)
                                    Required.Req.SubReq4:Boolean("DrawQ", "Enable Q Draw", true)
                                    Required.Req.SubReq4:Boolean("DrawW", "Enable W Draw", true)
                                    Required.Req.SubReq4:Boolean("DrawE", "Enable E Draw", true)
                                    Required.Req.SubReq4:Boolean("DrawR", "Enable R Draw", true)
end        
if ReqLoader.Load.LoadDraws:Value() then   
    DrawingsMenu()
end                       
function SkinChangerMenu()
Required.Req:SubMenu("SubReq3", "Skin Changer")
                                    Required.Req.SubReq3:Boolean("SkinEnabled", "Enable Skin Changer", true)
                                    Required.Req.SubReq3:Empty("Empty3", 0)
                                    Required.Req.SubReq3:Slider("SkinID", "Select Skin", 1, 1, 10)
                                    Required.Req.SubReq3:Boolean("ModelChanger", "Enable Model Changer", false)
                                    Required.Req.SubReq3:DropDown("ModelID", "Select Model", 1, {"Baron", "Dragon", "RiftHerald", "Chaos Minion", "Order Minion"})

end
if ReqLoader.Load.LoadSkin:Value() then   
    SkinChangerMenu()
end
function AutoSmiteMenu()
Required.Req:SubMenu("SubReq8", "Auto Smite")
                                    Required.Req.SubReq8:Boolean("AutoSmite", "Enable Auto Smite", true)
                                    Required.Req.SubReq8:Boolean("AutoSmite2", "Smite Blue", true)
                                    Required.Req.SubReq8:Boolean("AutoSmite3", "Smite Red", true)
                                    Required.Req.SubReq8:Boolean("AutoSmite4", "Smite Baron", true)
                                    Required.Req.SubReq8:Boolean("AutoSmite5", "Smite Dragon", true)
                                    Required.Req.SubReq8:Boolean("AutoSmite6", "Smite Herald", true)
                                    Required.Req.SubReq8:Boolean("AutoSmite7", "Smite Vilemaw", true)
end
if ReqLoader.Load.LoadSmite:Value() then   
    AutoSmiteMenu()
end
function AutoItemMenu()
Required.Req:SubMenu("SubReq9", "Item Activator") 
                                    Required.Req.SubReq9:Boolean("OfAct", "Offensive Items Activator", true)
                                    Required.Req.SubReq9:Boolean("DefAct", "Deffensive Items Activator", true)
                                    Required.Req.SubReq9:Info("s", "")
                                    Required.Req.SubReq9:Info("Sdw", "If below is off, Cast with T")
                                    Required.Req.SubReq9:Boolean("OnCombo", "Only in combo", false)
                                    Required.Req.SubReq9:Boolean("OnHarass", "Only in harass", false)
                                    Required.Req.SubReq9:KeyBinding("itemact", "Item Activator", string.byte("T"))
end       

if ReqLoader.Load.LoadItem:Value() then   
    AutoItemMenu()
end  
function PersonalInfo1()
Required.Req:SubMenu("SubReq2", "Personal information")
                                    Required.Req.SubReq2:Boolean("Self", "Enable Personal Info", true)
                                    Required.Req.SubReq2:Empty("Empty2", 0)
                                    Required.Req.SubReq2:Boolean("LFs", "Show LifeSteal", true)
                                    Required.Req.SubReq2:Boolean("SpellVamp", "Show Spell Vamp", true)
                                    Required.Req.SubReq2:Boolean("DmgPen", "Show Armor Penetration", true)
                                    Required.Req.SubReq2:Boolean("ApPen", "Show Magic Penetration", true)
                                    Required.Req.SubReq2:Boolean("Gold", "Show Gold", true)
                                    Required.Req.SubReq2:Boolean("TotalGold", "Show Gold earned since start", true)
                                    Required.Req.SubReq2:Boolean("MSpeed", "Show Movement Speed", true)
end
function PersonalInfo()

if ReqLoader.Load.LoadInfo:Value() then
    if Required.Req.SubReq2.LFs:Value() then 
        DrawText("LifeSteal: "..math.ceil(GetLifeSteal(myHero) * 100).. "%", 15, GetResolution().x/2+475, GetResolution().y/2, ARGB(255, 247, 8, 64))
    end

    if Required.Req.SubReq2.SpellVamp:Value() then 
        DrawText("SpellVamp: "..math.ceil(GetSpellVamp(myHero) * 100).. "%", 15, GetResolution().x/2+475, GetResolution().y/2+15, ARGB(255, 69, 242, 63))
    end

    if Required.Req.SubReq2.DmgPen:Value() then 
        DrawText("Armor Penetration: "..math.ceil(GetArmorPenFlat(myHero)).. "", 15, GetResolution().x/2+475, GetResolution().y/2+30, ARGB(255, 236, 206, 58))
    end

    if Required.Req.SubReq2.ApPen:Value() then 
        DrawText("Magic Penetration: "..math.ceil(GetMagicPenFlat(myHero)).. "", 15, GetResolution().x/2+475, GetResolution().y/2+45, ARGB(255, 84, 229, 214))
    end


    if Required.Req.SubReq2.Gold:Value() then 
        DrawText("Gold: "..math.ceil(GetCurrentGold(myHero)).. "", 15, GetResolution().x/2+475, GetResolution().y/2+60, ARGB(255, 232, 226, 63))
    end

    if Required.Req.SubReq2.TotalGold:Value() then 
        DrawText("Gold: "..math.ceil(GetTotalEarnedGold(myHero)).. "", 15, GetResolution().x/2+475, GetResolution().y/2+75, ARGB(255, 245, 239, 83))
    end

    if Required.Req.SubReq2.MSpeed:Value() then 
        DrawText("Movement Speed: "..math.ceil(GetMoveSpeed(myHero)).. "", 15, GetResolution().x/2+475, GetResolution().y/2+90, ARGB(255, 75, 168, 202))
    end
end
end   
        if ReqLoader.Load.LoadInfo:Value() then
            PersonalInfo1()
        end


        --[[Required.Req:SubMenu("Data", "Get Data")
         Required.Req.Data:Boolean("Datas", "Show data", false) ]]

function DrawDamage()
if ReqLoader.Load.LoadDamage:Value() then

    colors = { ARGB(255,223,255,14), ARGB(255,79,209,192), ARGB(255,223,85,248), ARGB(255,223,255,88) }
    str = {[_Q] = "Q", [_W] = "W", [_E] = "E", [_R] = "R"}

    if Required.Req.dDmg.Ddmgs:Value() then
        
            local unit = GetCurrentTarget()
            if ValidTarget(GetCurrentTarget()) and GetTeam(unit) ~= GetTeam(myHero) then
                local barPos = GetHPBarPos(unit)
                if barPos.x > 0 and barPos.y > 0 then
                    local xDef = {}
                    for slot = 0, 3 do
                        xDef[slot] = CanUseSpell(myHero, slot) == 0 and CalcDamage(myHero, unit, 0, spellData[slot].dmg(myHero, unit)) or 0

                    end
                    local mhp = GetMaxHP(unit)
                    local chp = GetCurrentHP(unit)
                    local offset = 103 * (chp/mhp)
                    for __, spell in pairs({"Q", "W", "E", "R"}) do
                        if xDef[__-1] > 0 then
                            local off = 103*(xDef[__-1]/mhp)
                            local _ = 2*__
                            DrawLine(barPos.x+10+offset-off, barPos.y-1, barPos.x+10+offset, barPos.y-1, 5, colors[__])
                            DrawLine(barPos.x+10+offset-off, barPos.y-1, barPos.x+10+offset-off, barPos.y+10-10*_, 1, colors[__])
                            DrawText(spell, 11, barPos.x+1+offset-off, barPos.y-15-10*_, colors[__])
                            DrawText(""..math.round(xDef[__-1]), 10, barPos.x+12+offset-off, barPos.y-15-10*_, colors[__])
                            offset = offset - off
                            if (1+1) == 2 then YesInspired(myHero) else return --[[Maths are stupid, so am I]] end
                        end
                    end
                end
            end
    end
end
end
function DrawDamage1()
                        Required.Req:SubMenu("dDmg", "Damage")
                                    Required.Req.dDmg:Boolean("Ddmgs", "Damage Drawing", true)
end

        if ReqLoader.Load.LoadDamage:Value() then
            DrawDamage1()
        end
function JumpingSpots1()

    Required.Req:SubMenu("Jumps", "Jumping Spots")
    if GetObjectName(GetMyHero()) == "Riven" or GetObjectName(GetMyHero()) == "Nidalee" then Required.Req.Jumps:Boolean("JumpsEnable", "Enable Jump Spots", true) else Required.Req.Jumps:Boolean("JumpsEnable", "Enable Jump Spots", false) end
    
end
if ReqLoader.Load.LoadJumpSpots:Value() then
    JumpingSpots1()
end
function JumpingSpots()
    if ReqLoader.Load.LoadJumpSpots:Value() then    
        if Required.Req.Jumps.JumpsEnable:Value() then
                if GetDistance(Vector(11984, 51.729402, 4725), myHero) < 800 or GetDistance(Vector(11726, -71.240601, 4522), myHero) < 800 then
                    DrawCircle(11984, 51.729402, 4725, 70, 2, 200, ARGB(255,114,225,252))
                    DrawCircle(11726, -71.240601, 4522, 70, 2, 200, ARGB(255,114,225,252))
                end
                if GetDistance(Vector(9044, 52.618866, 4438), myHero) < 800 or GetDistance(Vector(9392, -71.240601, 4522), myHero) < 800 then
                    DrawCircle(9044, 52.618866, 4438, 70, 2, 200, ARGB(255,114,225,252))
                    DrawCircle(9392, -71.240601, 4522, 70, 2, 200, ARGB(255,114,225,252))
                end
                if GetDistance(Vector(9662, -70.199005, 3974), myHero) < 800 or GetDistance(Vector(9502, 62.610847, 3496), myHero) < 800 then
                    DrawCircle(9662, -70.199005, 3974, 70, 2, 200, ARGB(255,114,225,252))
                    DrawCircle(9502, 62.610847, 3496, 70, 2, 200, ARGB(255,114,225,252))
                end
                if GetDistance(Vector(7922, 50.505039, 5958), myHero) < 800 or GetDistance(Vector(8160, -71.240601, 6190), myHero) < 800 then
                    DrawCircle(7922, 50.505039, 5958, 70, 2, 200, ARGB(255,114,225,252))
                    DrawCircle(8160, -71.240601, 6190, 70, 2, 200, ARGB(255,114,225,252))
                end
                if GetDistance(Vector(7074, 58.172329, 5608), myHero) < 800 or GetDistance(Vector(7394, 52.470188, 5960), myHero) < 800 then
                    DrawCircle(7394, 52.470188, 5960, 70, 2, 200, ARGB(255,114,225,252))
                    DrawCircle(7074, 58.172329, 5608, 70, 2, 200, ARGB(255,114,225,252))
                end
                if GetDistance(Vector(6870, -70.691544, 8594), myHero) < 800 or GetDistance(Vector(7092, 52.872597, 8802), myHero) < 800 then
                    DrawCircle(7092, 52.872597, 8802, 70, 2, 200, ARGB(255,114,225,252))
                    DrawCircle(6870, -70.691544, 8594, 70, 2, 200, ARGB(255,114,225,252))
                end
                if GetDistance(Vector(3880, 51.885376, 7770), myHero) < 800 or GetDistance(Vector(3824, 51.690048, 7408), myHero) < 800 then
                    DrawCircle(3824, 51.690048, 7408, 70, 2, 200, ARGB(255,114,225,252))
                    DrawCircle(3880, 51.885376, 7770, 70, 2, 200, ARGB(255,114,225,252))
                end
                if GetDistance(Vector(4374, 48.743622, 8156), myHero) < 800 or GetDistance(Vector(4072, 50.868252, 7940), myHero) < 800 then
                    DrawCircle(4072, 50.868252, 7940, 70, 2, 200, ARGB(255,114,225,252))
                    DrawCircle(4374, 48.743622, 8156, 70, 2, 200, ARGB(255,114,225,252))
                end
                if GetDistance(Vector(3274, -64.528709, 10306), myHero) < 800 or GetDistance(Vector(2878, 54.325500, 10142), myHero) < 800 then
                    DrawCircle(3274, -64.528709, 10306, 70, 2, 200, ARGB(255,114,225,252))
                    DrawCircle(2878, 54.325500, 10142, 70, 2, 200, ARGB(255,114,225,252))
                end
                if GetDistance(Vector(5474, -71.240601, 10506), myHero) < 800 or GetDistance(Vector(5902, 55.003208, 10460), myHero) < 800 then
                    DrawCircle(5474, -71.240601, 10506, 70, 2, 200, ARGB(255,114,225,252))
                    DrawCircle(5902, 55.003208, 10460, 70, 2, 200, ARGB(255,114,225,252))
                end
                if GetDistance(Vector(6566, 53.846657, 11664), myHero) < 800 or GetDistance(Vector(6492, 56.476799, 12068), myHero) < 800 then
                    DrawCircle(6566, 53.846657, 11664, 70, 2, 200, ARGB(255,114,225,252))
                    DrawCircle(6492, 56.476799, 12068, 70, 2, 200, ARGB(255,114,225,252))
                end
                if GetDistance(Vector(11592, 63.734623, 8700), myHero) < 800 or GetDistance(Vector(11838, 50.307255, 8884), myHero) < 800 then
                    DrawCircle(11592, 63.734623, 8700, 70, 2, 200, ARGB(255,114,225,252))
                    DrawCircle(11838, 50.307255, 8884, 70, 2, 200, ARGB(255,114,225,252))
                end
        end
    end
end



        

function WardDrawings()

    if Required.Req.SubReq7.Reds:Value() then 
        DrawCircle(8292, 50.1327870, 10208, 39, 3, 100, ARGB(255,245,61,61))
        DrawCircle(4292, -68.657822, 9776, 39, 3, 100, ARGB(255,245,61,61))
        DrawCircle(6524, 50.538010, 9498, 39, 3, 100, ARGB(255,245,61,61))
        DrawCircle(4462, 56.848400, 11788, 39, 3, 100, ARGB(255,245,61,61))
        DrawCircle(6556, 48.527000, 4624, 39, 3, 100, ARGB(255,245,61,61))
        DrawCircle(10426, 50.178398, 3038, 39, 3, 100, ARGB(255,245,61,61))
        DrawCircle(10658, -62.810200, 5094, 39, 3, 100, ARGB(255,245,61,61))
        DrawCircle(8098, 53.413593, 5342, 39, 3, 100, ARGB(255,245,61,61))
    end

    if Required.Req.SubReq7.Yellows:Value() then
        DrawCircle(2232, 52.838100, 13338, 39, 3, 100, ARGB(255,239,245,61))
        DrawCircle(1296, 52.838100, 12446, 39, 3, 100, ARGB(255,239,245,61))
        DrawCircle(2222, 52.420059, 9888, 39, 3, 100, ARGB(255,239,245,61))
        DrawCircle(3392, 51.512508, 8894, 39, 3, 100, ARGB(255,239,245,61))
        DrawCircle(2982, 51.854782, 7358, 39, 3, 100, ARGB(255,239,245,61))
        DrawCircle(12002, 51.854782, 7358, 39, 3, 100, ARGB(255,239,245,61))
        DrawCircle(12510, 51.729401, 5172, 39, 3, 100, ARGB(255,239,245,61))
        DrawCircle(13230, 51.366901, 2210, 39, 3, 100, ARGB(255,239,245,61))
        DrawCircle(12652, 52.011086, 1630, 39, 3, 100, ARGB(255,239,245,61))
        DrawCircle(8502, 51.561283, 4790, 39, 3, 100, ARGB(255,239,245,61))
        DrawCircle(6272, 54.161331, 10152, 39, 3, 100, ARGB(255,239,245,61))
    end 

    if Required.Req.SubReq7.Greens:Value() then
        DrawCircle(4770, 50.766403, 7130, 39, 3, 100, ARGB(255,61,245,67))
        DrawCircle(5166, -45.305595, 8520, 39, 3, 100, ARGB(255,61,245,67))
        DrawCircle(7004, 54.678485, 11366, 39, 3, 100, ARGB(255,61,245,67))
        DrawCircle(9322, 54.260986, 11440, 39, 3, 100, ARGB(255,61,245,67))
        DrawCircle(9974, 51.716484, 7798, 39, 3, 100, ARGB(255,61,245,67))
        DrawCircle(7076, 52.574959, 3118, 39, 3, 100, ARGB(255,61,245,67))
        DrawCircle(5548, 51.418839, 3532, 39, 3, 100, ARGB(255,61,245,67))
        DrawCircle(9830, 21.151115, 6474, 39, 3, 100, ARGB(255,61,245,67))
        DrawCircle(8156, 56.476799, 11794, 39, 3, 100, ARGB(255,61,245,67))
        DrawCircle(8432, -71.240601, 6474, 39, 3, 100, ARGB(255,61,245,67))
        DrawCircle(6524, -70.806824, 8296, 39, 3, 100, ARGB(255,61,245,67))
    end
end

local RedWards={
    [1]={Vector(8292, 50.1327870, 10208), false},
    [2]={Vector(4292, -68.657822, 9776), false},
    [3]={Vector(6524, 50.538010, 9498), false},
    [4]={Vector(4462, 56.848400, 11788), false},
    [5]={Vector(6556, 48.527000, 4624), false},
    [6]={Vector(10426, 50.178398, 3038), false},
    [7]={Vector(10658, -62.810200, 5094), false},
    [8]={Vector(8098, 53.413593, 5342), false}
}

local YellowWards={
    [1]={Vector(2232, 52.838100, 13338), false},
    [2]={Vector(1296, 52.838100, 12446), false},
    [3]={Vector(2222, 52.420059, 9888), false},
    [4]={Vector(3392, 51.512508, 8894), false},
    [5]={Vector(2982, 51.854782, 7358), false},
    [6]={Vector(12002, 51.854782, 7358), false},
    [7]={Vector(12510, 51.729401, 5172), false},
    [8]={Vector(13230, 51.366901, 2210), false},
    [9]={Vector(12652, 52.011086, 1630), false},
    [10]={Vector(8502, 51.561283, 4790), false},
    [11]={Vector(6272, 54.161331, 10152), false}
}

local GreenWards={
    [1]={Vector(4770, 50.766403, 7130), false},
    [2]={Vector(5166, -45.305595, 8520), false},
    [3]={Vector(7004, 54.678485, 11366), false},
    [4]={Vector(9322, 54.260986, 11440), false},
    [5]={Vector(9974, 51.716484, 7798), false},
    [6]={Vector(7076, 52.574959, 3118), false},
    [7]={Vector(5548, 51.418839, 3532), false},
    [8]={Vector(9830, 21.151115, 6474), false},
    [9]={Vector(8156, 56.476799, 11794),false},
    [10]={Vector(8432, -71.240601, 6474), false},
    [11]={Vector(6524, -70.806824, 8296), false}
}
function AutoWard()
        local YellowWard = GetItemSlot(myHero, 3340)
if Required.Req.SubReq7.WardGreen:Value() then
    for i, v in ipairs(GreenWards) do
        local dist = GetDistance(v[1], myHero)
        if dist < 600 then
            if YellowWard > 0 and CanUseSpell(myHero, YellowWard) == READY then
                CastSkillShot(YellowWard, v[1])
                v[2] = true
            end
        end
    end
end

if Required.Req.SubReq7.WardYellow:Value() then
    for i, v in ipairs(YellowWards) do
        local dist = GetDistance(v[1], myHero)
        if dist < 600 then
            if YellowWard > 0 and CanUseSpell(myHero, YellowWard) == READY then
                CastSkillShot(YellowWard, v[1])
                v[2] = true
            end
        end
    end
end
if Required.Req.SubReq7.WardReds:Value() then
    for i, v in ipairs(RedWards) do
        local dist = GetDistance(v[1], myHero)
        if dist < 600 then
            if YellowWard > 0 and CanUseSpell(myHero, YellowWard) == READY then
                CastSkillShot(YellowWard, v[1])
                v[2] = true
            end
        end
    end
end
end

function WardMenu()

    Required.Req:SubMenu("SubReq7", "Wards Positions")
                                    Required.Req.SubReq7:Boolean("Reds", "Show very important wards", true)
                                    Required.Req.SubReq7:Boolean("WardReds", "Ward Red circles", false)
                                    Required.Req.SubReq7:Empty("Empty23", 0)
                                    Required.Req.SubReq7:Boolean("Yellows", "Show important wards", true)
                                    Required.Req.SubReq7:Boolean("WardYellow", "Ward Yellow circles", false)
                                    Required.Req.SubReq7:Empty("Empty223", 0)
                                    Required.Req.SubReq7:Boolean("Greens", "Show less important wards", true)
                                    Required.Req.SubReq7:Boolean("WardGreen", "Ward Green circles", false)
end
function SkillsLevelUp()
    Required.Req:SubMenu("SubReq", "Auto Level")
                                    Required.Req.SubReq:Boolean("LevelUp", "Level Up Skills", true)
                                    Required.Req.SubReq:Slider("Start_Level", "Level to enable lvlUP", 1, 1, 17)
                                    Required.Req.SubReq:DropDown("autoLvl", "Skill order", 1, {"Q-W-E","Q-W-Q","Q-E-W",})
                                    Required.Req.SubReq:Boolean("Humanizer", "Enable Level Up Humanizer", true)
end
if ReqLoader.Load.LoadWard:Value() then

    WardMenu()
end

    spellData = {

        [_Q] = { dmg = function(source, target) return getdmg("Q",GetCurrentTarget(), myHero, 3) end},
        [_W] = { dmg = function(source, target) return getdmg("W",GetCurrentTarget(), myHero, 3) end},
        [_E] = { dmg = function(source, target) return getdmg("E",GetCurrentTarget(), myHero, 3) end},
        [_R] = { dmg = function(source, target) return getdmg("R",GetCurrentTarget(), myHero, 3) end}
    }



           if ReqLoader.Load.LoadLevelUP:Value() then
                SkillsLevelUp()
            end
           local LevelUpTable={
        [1]={_Q,_W,_E,_Q,_Q,_R,_Q,_E,_Q,_E,_R,_E,_E,_W,_W,_R,_W,_W},

        [2]={_Q,_W,_Q,_E,_Q,_R,_Q,_E,_Q,_E,_R,_E,_E,_W,_W,_R,_W,_W},

        [3]={_Q,_E,_W,_Q,_Q,_R,_Q,_E,_Q,_E,_R,_E,_E,_W,_W,_R,_W,_W}
        }
    function AutoLevel()
        if Required.Req.SubReq.LevelUp:Value() and GetLevelPoints(myHero) >= 1 and GetLevel(myHero) >= Required.Req.SubReq.Start_Level:Value() then
            if Required.Req.SubReq.Humanizer:Value() then
            DelayAction(function() LevelSpell(LevelUpTable[Required.Req.SubReq.autoLvl:Value()][GetLevel(myHero)-GetLevelPoints(myHero)+1]) end, math.random(0.3286,1.33250))
            else
            LevelSpell(LevelUpTable[Required.Req.SubReq.autoLvl:Value()][GetLevel(myHero)-GetLevelPoints(myHero)+1])
            end
        end
    end
OnDraw(function(myHero)
        if ReqLoader.Load.LoadInfo:Value() then
            PersonalInfo() 
        end
        if ReqLoader.Load.LoadDamage:Value() then
            DrawDamage() 
        end
        if ReqLoader.Load.LoadJumpSpots:Value() then
            JumpingSpots() 
        end
        if ReqLoader.Load.LoadWard:Value() then
            WardDrawings()
        end
        if ReqLoader.Load.LoadWard:Value() then
            AutoWard()
        end
        if ReqLoader.Load.LoadLevelUP:Value() then
            AutoLevel()
        end


    if Required.Req.ReqYes:Value() then
        --if IsVisible(myHero) then print "hi" end

    

if ReqLoader.Load.LoadDevs:Value() then    
    if Required.Req.SubReq6.MobsID:Value() then
        for _, mobs in pairs(minionManager.objects) do
            
            if GetDistance(mobs) <= 3291 then
                DrawText("Name: "..GetObjectName(mobs),12,WorldToScreen(0,GetOrigin(mobs).x,GetOrigin(mobs).y,GetOrigin(mobs).z).x,WorldToScreen(1,GetOrigin(mobs).x,GetOrigin(mobs).y,GetOrigin(mobs).z).y,GoS.Pink)
            end
        end
    end
    if Required.Req.SubReq6.qN:Value() then
        PrintChat(GetCastName(myHero, 0))
    end
    if Required.Req.SubReq6.wN:Value() then
        PrintChat(GetCastName(myHero, 1))
    end
    if Required.Req.SubReq6.eN:Value() then
        PrintChat(GetCastName(myHero, 2))
    end
    if Required.Req.SubReq6.rN:Value() then
        PrintChat(GetCastName(myHero, 3))
    end

    if Required.Req.SubReq6.qR:Value() then
        PrintChat(GetCastRange(myHero, 0))
    end

    if Required.Req.SubReq6.wR:Value() then
        PrintChat(GetCastRange(myHero, 1))
    end

    if Required.Req.SubReq6.eR:Value() then
        PrintChat(GetCastRange(myHero, 2))
    end

    if Required.Req.SubReq6.rR:Value() then
        PrintChat(GetCastRange(myHero, 3))
    end

    if Required.Req.SubReq6.MapId:Value() then
        PrintChat(GetMapID())
    end

    local myHeroPos = GetOrigin(myHero)

    if Required.Req.SubReq6.xyz:Value() then
    DrawText(string.format("x,y,z = %f; %f; %f", myHeroPos.x, myHeroPos.y, myHeroPos.z),12,0,400,0xff00ff00);
    end

    if Required.Req.SubReq6.GCN1:Value() then
        PrintChat(GetCastName(myHero, SUMMONER_1))
    end
    if Required.Req.SubReq6.GCN2:Value() then
        PrintChat(GetCastName(myHero, SUMMONER_2))
    end

    if Required.Req.SubReq6.ItemId1:Value() then
        PrintChat(GetItemID(myHero, 6))
    end
    if Required.Req.SubReq6.ItemId2:Value() then
        PrintChat(GetItemID(myHero, 7))
    end
    if Required.Req.SubReq6.ItemId3:Value() then
        PrintChat(GetItemID(myHero, 8))
    end
    if Required.Req.SubReq6.ItemId4:Value() then
        PrintChat(GetItemID(myHero, 12))
    end
    if Required.Req.SubReq6.ItemId5:Value() then
        PrintChat(GetItemID(myHero, 11))
    end
    if Required.Req.SubReq6.ItemId6:Value() then
        PrintChat(GetItemID(myHero, 10))
    end
    if Required.Req.SubReq6.ItemId7:Value() then
        PrintChat(GetItemID(myHero, 9))
    end
end

if ReqLoader.Load.LoadDraws:Value() then   
    if Required.Req.SubReq4.DrawingsEnabled:Value() then
        if Required.Req.SubReq4.DrawQ:Value() then  DrawCircle(myHero.pos, GetCastRange(myHero, 0), 1, 5, ARGB(255, 68, 219, 121)) end
        if Required.Req.SubReq4.DrawW:Value() then  DrawCircle(myHero.pos, GetCastRange(myHero, 1), 1, 5, ARGB(255, 213, 227, 84)) end
        if Required.Req.SubReq4.DrawE:Value() then  DrawCircle(myHero.pos, GetCastRange(myHero, 2), 1, 5, ARGB(255, 84, 146, 227)) end
        if Required.Req.SubReq4.DrawR:Value() then  DrawCircle(myHero.pos, GetCastRange(myHero, 3), 1, 5, ARGB(255, 227, 115, 84)) end
    end
end

    -- DrawCircle(myHero.pos, 670, 1, 5, ARGB(255, 227, 115, 84)) 



end
end)

newUpdate = 0
function AutoUpdate(data)
    if tonumber(data) > tonumber(ver) then
        PrintChat("New Version Found " .. data)
        PrintChat("Downloading update, please wait...")
        newUpdate = 1
        DownloadFileAsync("https://raw.githubusercontent.com/RequiredGoS/Gaming-On-Steroids/master/Required-Utilities/Required_Utilities.lua", SCRIPT_PATH .. "Required_Utilities.lua", function() PrintChat(string.format("<font color=\"#FC5743\"><b>Script Downloaded succesfully. please 2x f6</b></font>")) return end)
    end
end
GetWebResultAsync("https://raw.githubusercontent.com/RequiredGoS/Gaming-On-Steroids/master/Required-Utilities/Required_Utilities.version", AutoUpdate)

if newUpdate == 1 then
    OnDraw(function()

       local w, h1, h2, size = (res.x*0.70), (res.y*.15), (res.y*.9), res.y*.02
          DrawLine(w, h1/1.05, w, h2/1.97, w/1.75, ARGB(120,205,0,0))
          DrawLine(w, h1, w, h2/1.97, w/1.75, ARGB(120,50,0,0))
          DrawText(tostring("Required Utilities Changelog"), (res.y * .028) - 270, (res.x/2.4) - 30, (res.y*.18-10), ARGB(255, 0 , 255, 255))
          DrawText(tostring("Ver 1.08:"), res.y*.015, (res.x/2.65), (res.y*.210), ARGB(225, 225, 175, 0))
          DrawText(tostring("               Added Model Changer"), res.y*.015, (res.x/2.65), (res.y*.225), ARGB(255, 255, 255, 255))
          DrawText(tostring("Ver 1.07"), res.y*.015, (res.x/2.65), (res.y*.240), ARGB(225, 225, 175, 0))
          DrawText(tostring("               Added Changelog Screen."), res.y*.015, (res.x/2.65), (res.y*.255), ARGB(255, 255, 255, 255))
          DrawText(tostring(""), res.y*.015, (res.x/2.65), (res.y*.270), ARGB(255, 255, 255, 255))
          DrawText(tostring(""), res.y*.015, (res.x/2.65), (res.y*.300), ARGB(255, 255, 255, 255))
          DrawText(tostring("TODO:"), res.y*.015, (res.x/2.65), (res.y*.315), ARGB(225, 225, 175, 0))
          DrawText(tostring("             Add Model Changes. DONE"), res.y*.015, (res.x/2.65), (res.y*.330), ARGB(255, 255, 255, 255))
          DrawText(tostring("             Add Rest of the objects."), res.y*.015, (res.x/2.65), (res.y*.345), ARGB(255, 255, 255, 255))
          DrawText(tostring("             Particles."), res.y*.015, (res.x/2.65), (res.y*.360), ARGB(255, 255, 255, 255))
          DrawText(tostring("             Suggestions?"), res.y*.015, (res.x/2.65), (res.y*.375), ARGB(255, 255, 255, 255))
          local w1, w2, h1, h2 = (res.x/2)-50, (res.x/2)+50, (res.y*.70), (res.y*.75)
          DrawLine(w1, h1/1.775, w2, h1/1.775, 50, ARGB(122, 253, 55, 121)) 
          --DrawLine(w*.98, h1*.98, w*.98, h2*.98, w*.1*.98, ARGB(205,255,255,255))
          FillRect(w1+10, (res.y/2)-101, 80, 30, ARGB(255,125,155,225))
          DrawText(tostring("2x F6"),size, (res.x/2-12)-size+10, (res.y/2)-100, ARGB(255,0, 0, 0))
          newUpdate = 0
    end)
end

OnTick(function(myHero)

    if ReqLoader.Load.LoadItem:Value() then
        OffensiveItemsActivator()
        DeffensiveItemsActivator()
    end

    local PinkWard = GetItemSlot(myHero, 2043)

    --[[if Required.Req.SubReq7.WardGreen:Value() then
--and GetDistance(Vector(MousePos), Vector(5548,51.418839,3532)) 
--if GetDistance(Vector(5548,51.418839,3532), Vector(MousePos) then
        if GetDistance(myHero, Vector(5548,51.418839,3532)) <= 670 then
            if YellowWard > 0 and CanUseSpell(myHero, YellowWard) == READY then 
                    CastSkillShot(YellowWard, Vector(5548,51.418839,3532))
            end
        end
    end  ]]
    if Required.Req.ReqYes:Value() then

        

        local GTC = GetTickCount()
        local XyUp = 0


        if (XyUp + 250) < GTC then -- Tick count for smite
            if SmiteToUse == true then
                SmiteToUse = false
            elseif SmiteToUse == false then
                SmiteToUse = true
            end
        XyUp = GTC
        end
        SmiteDamageOnMinion = (({[1]=390,[2]=410,[3]=430,[4]=450,[5]=480,[6]=510,[7]=540,[8]=570,[9]=600,[10]=640,[11]=680,[12]=720,[13]=760,[14]=800,[15]=850,[16]=900,[17]=950,[18]=1000})[GetLevel(myHero)])
       
if ReqLoader.Load.LoadSmite:Value() then
    AutoSmite()
end

        --if Required.Req.Data.Datas:Value() then PrintChat(""..GetCastName(myHero, SUMMONER_2).. "") end -- dev purposes


        for i,minion in pairs(minionManager.objects) do
            if GetTeam(minion) == 300 and IsObjectAlive(minion) then
                if GetObjectName(minion) == "SRU_Dragon" then
                    Dragon = minion
                end
                if GetObjectName(minion) == "SRU_Red" then
                    Red = minion
                end
                if GetObjectName(minion) == "SRU_Blue"then
                    Blue = minion
                end
                if GetObjectName(minion) == "SRU_RiftHerald" then
                    Herald = minion
                end
                if GetObjectName(minion) == "SRU_Baron" then
                    Baron = minion
                end
                if GetObjectName(minion) == "TT_Spiderboss" then
                    Vilemaw = minion
                end
            end 
        end

    if ReqLoader.Load.LoadSkin:Value() then 
            if Required.Req.SubReq3.SkinEnabled:Value() ~= false then
                HeroSkinChanger(myHero, Required.Req.SubReq3.SkinID:Value() - 1)
                if Required.Req.SubReq3.ModelChanger:Value() then
                    if Required.Req.SubReq3.ModelID:Value() == 1 then
                        ModelChanger(myHero, 0, "SRU_Baron")
                    elseif Required.Req.SubReq3.ModelID:Value() == 2 then
                        ModelChanger(myHero, 0, "SRU_Dragon")
                    elseif Required.Req.SubReq3.ModelID:Value() == 3 then
                        ModelChanger(myHero, 0, "SRU_RiftHerald")
                    elseif Required.Req.SubReq3.ModelID:Value() == 4 then
                        ModelChanger(myHero, 0, "SRU_ChaosMinionSiege")
                    elseif Required.Req.SubReq3.ModelID:Value() == 5 then
                        ModelChanger(myHero, 0, "SRU_OrderMinionSiege")
                    end
                else ModelChanger(myHero, 0, GetObjectModelName(myHero))
                end
            end
    end
end
end)

OnDeleteObj(function(object)

        if GetObjectName(object):lower() == "yellowtrinket" then
            for i, v in ipairs(GreenWards) do
                if GetDistance(GetOrigin(object), v[1]) < 20 then
                    v[2] = false
                end
            end
        end

        if GetObjectName(object):lower() == "yellowtrinket" then
            for i, v in ipairs(YellowWards) do
                if GetDistance(GetOrigin(object), v[1]) < 20 then
                    v[2] = false
                end
            end
        end

        if GetObjectName(object):lower() == "yellowtrinket" then
            for i, v in ipairs(RedWards) do
                if GetDistance(GetOrigin(object), v[1]) < 20 then
                    v[2] = false
                end
            end
        end
end)
-- soon below
--[[function OnCreateObjCallback(obj)
    if GetObjectType(obj) == "Obj_AI_Minion" then
        ModelChanger(obj, 6, SRU_OrderMinionMelee06 /(CheckRiotDecode)) 
    end
end

OnCreateObj(OnCreateObjCallback) ]]

--OnGainVision(function(unit)
    

function AutoSmite()

local SmiteToUse = true

    if GetCastName(myHero,SUMMONER_1):lower():find("summonersmite") or GetCastName(myHero,SUMMONER_1):lower():find("s5_summonersmiteplayerganker") or GetCastName(myHero,SUMMONER_1):lower():find("s5_summonersmiteduel")  then
                SmiteMinion = SUMMONER_1
            elseif GetCastName(myHero,SUMMONER_2):lower():find("summonersmite") or GetCastName(myHero,SUMMONER_2):lower():find("s5_summonersmiteplayerganker") or GetCastName(myHero,SUMMONER_2):lower():find("s5_summonersmiteduel")  then
                SmiteMinion = SUMMONER_2
            else return 
    end

    --[[                            Required.Req.SubReq8("AutoSmite2", "Smite Blue", true)
                                    Required.Req.SubReq8("AutoSmite3", "Smite Red", true)
                                    Required.Req.SubReq8("AutoSmite4", "Smite Baron", true)
                                    Required.Req.SubReq8("AutoSmite5", "Smite Dragon", true)
                                    Required.Req.SubReq8("AutoSmite6", "Smite Herald", true)]]
    if SmiteToUse == true and Required.Req.ReqYes:Value() and Required.Req.SubReq8.AutoSmite:Value() and CanUseSpell(myHero,SmiteMinion) == READY then

                    if Dragon ~= nil and GetObjectName(Dragon) == "SRU_Dragon" and ValidTarget(Dragon, 750) and Required.Req.SubReq8.AutoSmite5:Value() then
                        if GetCurrentHP(Dragon) <= SmiteDamageOnMinion then
                            CastTargetSpell(Dragon,SmiteMinion)
                        end
                    end
                    if Red ~= nil and GetObjectName(Red) == "SRU_Red" and ValidTarget(Red, 750) and Required.Req.SubReq8.AutoSmite3:Value() then
                        if GetCurrentHP(Red) <= SmiteDamageOnMinion then
                            CastTargetSpell(Red,SmiteMinion)
                        end
                    end
                    if Herald ~= nil and GetObjectName(Herald) == "SRU_RiftHerald" and ValidTarget(Herald, 750) and Required.Req.SubReq8.AutoSmite6:Value() then
                        if GetCurrentHP(Herald) <= SmiteDamageOnMinion then
                            CastTargetSpell(Herald,SmiteMinion)
                        end
                    end
                    if Baron ~= nil and GetObjectName(Baron) == "SRU_Baron" and ValidTarget(Baron, 750) and Required.Req.SubReq8.AutoSmite4:Value() then
                        if GetCurrentHP(Baron) <= SmiteDamageOnMinion then
                            CastTargetSpell(Baron,SmiteMinion)
                        end
                    end
                    if Blue ~= nil and GetObjectName(Blue) == "SRU_Blue" and ValidTarget(Blue, 750) and Required.Req.SubReq8.AutoSmite2:Value() then
                        if GetCurrentHP(Blue) <= SmiteDamageOnMinion then
                            CastTargetSpell(Blue,SmiteMinion)
                        end
                    end
                    if Vilemaw ~= nil and GetObjectName(Vilemaw) == "TT_Spiderboss" and ValidTarget(Vilemaw, 750) and Required.Req.SubReq7.AutoSmite3:Value() then
                        if GetCurrentHP(Vilemaw) <= SmiteDamageOnMinion then
                            CastTargetSpell(Vilemaw,SmiteMinion)
                        end
                    end
    end
end

function OffensiveItemsActivator()

    local BilgeWater = GetItemSlot(myHero, 3144)
    local King = GetItemSlot(myHero, 3153)
    local Hextech = GetItemSlot(myHero, 3146)
    local Hydra = GetItemSlot(myHero, 3074)
    local Tiamat = GetItemSlot(myHero, 3077)
    local Titanic = GetItemSlot(myHero, 3748)
    local Youmuu = GetItemSlot(myHero, 3142)
    local Frost =  GetItemSlot(myHero, 3092)

    local target = GetCurrentTarget()
    local RmH = GetRange(myHero)

    --[[                            Required.Req.SubReq9:Boolean("OnCombo", "Only in combo", false)
                                    Required.Req.SubReq9:Boolean("OnHarass", "Only in harass", false)
                                    Required.Req.SubReq9:Info("Sdw", "If below is off, Cast with T")
                                    Required.Req.SubReq9:Boolean("OfAct", "Offensive Items Activator", true)
                                    Required.Req.SubReq9:Boolean("DefAct", "Deffensive Items Activator", true)
                                    Required.Req.SubReq9:KeyBinding("itemact", "Item Activator", string.byte("T"))       ]]
if Required.Req.SubReq9.OfAct:Value() then

        if Required.Req.SubReq9.OnCombo:Value() then
            if IOW_Loaded and IOW:Mode() == "Combo" or DAC_Loaded and DAC:Mode() == "Combo" or PW_Loaded and PW:Mode() == "Combo" or GoSWalkLoaded and GoSWalk.CurrentMode == 0 then

                if BilgeWater > 0  and CanUseSpell(myHero, BilgeWater) == READY and ValidTarget(target, 550) then
                    CastTargetSpell(target, BilgeWater)
                end

                if Frost > 0  and CanUseSpell(myHero, Frost) == READY and ValidTarget(target, 4500) then
                    CastTargetSpell(target, Frost)
                end

                if King > 0 and CanUseSpell(myHero, King) == READY and ValidTarget(target, 550) then
                    CastTargetSpell(target, King)
                end

                if Hextech > 0 and CanUseSpell(myHero, Hextech) == READY and ValidTarget(target, 700) then
                    CastTargetSpell(target, Hextech)
                end

                if Hydra > 0 and CanUseSpell(myHero,Hydra) == READY and ValidTarget(target, RmH) then
                    CastSpell(Hydra)
                end

                if Tiamat > 0 and CanUseSpell(myHero, Tiamat) == READY and ValidTarget(target, RmH) then
                    CastSpell(Tiamat)
                end

                if Titanic > 0 and CanUseSpell(myHero, Titanic) == READY and ValidTarget(target, RmH) then
                    CastSpell(Titanic)
                end

                if Youmuu > 0 and CanUseSpell(myHero, Youmuu) == READY and ValidTarget(target, RmH) then
                    CastSpell(Youmuu)
                end
            end
        end

        if Required.Req.SubReq9.OnHarass:Value() then
            if IOW_Loaded and IOW:Mode() == "Harass" or DAC_Loaded and DAC:Mode() == "Harass" or PW_Loaded and PW:Mode() == "Harass" or GoSWalkLoaded and GoSWalk.CurrentMode == 1 then

                if BilgeWater > 0  and CanUseSpell(myHero, BilgeWater) == READY and ValidTarget(target, 550) then
                    CastTargetSpell(target, BilgeWater)
                end

                if Frost > 0  and CanUseSpell(myHero, Frost) == READY and ValidTarget(target, 4500) then
                    CastTargetSpell(target, Frost)
                end

                if King > 0 and CanUseSpell(myHero, King) == READY and ValidTarget(target, 550) then
                    CastTargetSpell(target, King)
                end

                if Hextech > 0 and CanUseSpell(myHero, Hextech) == READY and ValidTarget(target, 700) then
                    CastTargetSpell(target, Hextech)
                end

                if Hydra > 0 and CanUseSpell(myHero,Hydra) == READY and ValidTarget(target, RmH) then
                    CastSpell(Hydra)
                end

                if Tiamat > 0 and CanUseSpell(myHero, Tiamat) == READY and ValidTarget(target, RmH) then
                    CastSpell(Tiamat)
                end

                if Titanic > 0 and CanUseSpell(myHero, Titanic) == READY and ValidTarget(target, RmH) then
                    CastSpell(Titanic)
                end

                if Youmuu > 0 and CanUseSpell(myHero, Youmuu) == READY and ValidTarget(target, RmH) then
                    CastSpell(Youmuu)
                end
            end
        end


        if Required.Req.SubReq9.itemact:Value() then

            if BilgeWater > 0  and CanUseSpell(myHero, BilgeWater) == READY and ValidTarget(target, 550) then
                CastTargetSpell(target, BilgeWater)
            end

            if Frost > 0  and CanUseSpell(myHero, Frost) == READY and ValidTarget(target, 4500) then
                CastTargetSpell(target, Frost)
            end


            if King > 0 and CanUseSpell(myHero, King) == READY and ValidTarget(target, 550) then
                CastTargetSpell(target, King)
            end
        

            if Hextech > 0 and CanUseSpell(myHero, Hextech) == READY and ValidTarget(target, 700) then
                CastTargetSpell(target, Hextech)
            end
        

           if Hydra > 0 and CanUseSpell(myHero,Hydra) == READY and ValidTarget(target, RmH) then
                CastSpell(Hydra)
            end


            if Tiamat > 0 and CanUseSpell(myHero, Tiamat) == READY and ValidTarget(target, RmH) then
                CastSpell(Tiamat)
            end
        

            if Titanic > 0 and CanUseSpell(myHero, Titanic) == READY and ValidTarget(target, RmH) then
                CastSpell(Titanic)
            end
        

            if Youmuu > 0 and CanUseSpell(myHero, Youmuu) == READY and ValidTarget(target, RmH) then
                CastSpell(Youmuu)
            end
        end
end
end



function DeffensiveItemsActivator()
    local Randuin = GetItemSlot(myHero, 3143)
    local target = GetCurrentTarget()
    local RmH = GetRange(myHero)


    if Required.Req.SubReq9.DefAct:Value() then

        if Required.Req.SubReq9.OnCombo:Value() then
            if IOW_Loaded and IOW:Mode() == "Combo" or DAC_Loaded and DAC:Mode() == "Combo" or PW_Loaded and PW:Mode() == "Combo" or GoSWalkLoaded and GoSWalk.CurrentMode == 0 then

                if Randuin > 0 and CanUseSpell(myHero, Randuin) == READY and ValidTarget(target, 470) then
                    CastSpell(Randuin)
                end

            end
        end

        if Required.Req.SubReq9.OnHarass:Value() then

            if IOW_Loaded and IOW:Mode() == "Harass" or DAC_Loaded and DAC:Mode() == "Harass" or PW_Loaded and PW:Mode() == "Harass" or GoSWalkLoaded and GoSWalk.CurrentMode == 1 then

                if Randuin > 0 and CanUseSpell(myHero, Randuin) == READY and ValidTarget(target, 470) then
                    CastSpell(Randuin)
                end

            end

        end

        if Required.Req.SubReq9.itemact:Value() then

            if Randuin > 0 and CanUseSpell(myHero, Randuin) == READY and ValidTarget(target, 470) then
                CastSpell(Randuin)
            end

        end


    end
end



function YesInspired(unit)
        if unit == myHero then
            Inspired = op
        end
    -- body
end
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
PrintChat(string.format("<font color=\"#984DD1\"><b>Thanks for using Required Utilities </b></font>"))
