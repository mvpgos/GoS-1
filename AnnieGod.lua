local ver = "0.1"

function AutoUpdate(data)
    if tonumber(data) > tonumber(ver) then
        PrintChat("New version found! " .. data)
        PrintChat("Downloading update, please wait...")
        DownloadFileAsync("https://raw.githubusercontent.com/estruptum/GoS/master/AnnieGod.lua", SCRIPT_PATH .. "AnnieGod.lua", function() PrintChat("Update Complete, please 2x F6!") return end)
    else
        PrintChat("No updates found!")
    end
end

GetWebResultAsync("https://raw.githubusercontent.com/estruptum/GoS/master/AnnieGod.version", AutoUpdate)


if GetObjectName(GetMyHero()) ~= "Annie" then 
	return 
end

require('Inspired')
LoadIOW()


AnnieMenu.Drawings:Boolean("Q", "Draw Q Range", false)
AnnieMenu.Drawings:Boolean("W", "Draw W Range", false)
AnnieMenu.Drawings:Boolean("E", "Draw E Range", false)
AnnieMenu.Drawings:Boolean("R", "Draw R Range", false)
AnnieMenu.Drawings:Boolean("DrawText", "Draw Selected Text", false)

OnDraw(function(myHero)
local pos = GetOrigin(myHero)
if AnnieMenu.Drawings.Q:Value() then DrawCircle(pos,625,1,10,GoS.Red) end
if AnnieMenu.Drawings.W:Value() then DrawCircle(pos,625,1,10,GoS.Yellow) end
if AnnieMenu.Drawings.R:Value() then DrawCircle(pos,600,1,10,GoS.Pink) end
end)

OnTick(function(myHero)
    local target = GetCurrentTarget()
	
	
    if IOW:Mode() == "Combo" then
    	if AnnieMenu.Combo.Q:Value() and Ready(_Q) and ValidTarget(target, 625) then  
    		CastTargetSpell(target , _Q)
    	end

    	if AnnieMenu.Combo.W:Value() and Ready(_W) and ValidTarget(target, 610) then  -- used a lower range so the possibility to hit W increases
    			local targetPos = GetOrigin(target)
    			CastSkillShot(_W , targetPos)
    	end

    	if AnnieMenu.Combo.R:Value() and Ready(_R) and ValidTarget(target, 595) then -- used a lower range so the possibility to hit R increases
    		local targetPos = GetOrigin(target)
    			CastSkillShot(_R , targetPos)
        end
	end	

for _, enemy in pairs(GetEnemyHeroes()) do
	if AnnieMenu.Combo.Q:Value() and AnnieMenu.Combo.KSQ:Value() and Ready(_Q) and ValidTarget(enemy, 625) then
	if GetCurrentHP(enemy) < CalcDamage(myHero, enemy, 0, 45 + 35 * GetCastLevel(myHero,_Q) + GetBonusAP(myHero) * 0.8) then
	CastTargetSpell(enemy , _Q)
	end
	end
	end
end)
