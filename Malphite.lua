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













if GetObjectName(GetMyHero()) ~= "Malphite" then 
	return 
end

require("Inspired")
require("OpenPredict")

local MalphiteMenu = MenuConfig("Malphite", "Malphite")

MalphiteMenu:Menu("Drawings", "Drawings")

	MalphiteMenu:SubMenu("Combo", "Combo")
	
		MalphiteMenu.Combo:Boolean("Q", "Use Q", true)
		
		MalphiteMenu.Combo:Boolean("W", "Use W", true)
		
		MalphiteMenu.Combo:Boolean("E", "Use E", true)
		
		MalphiteMenu.Combo:Boolean("R", "Use R", true)
		
		
MalphiteMenu.Drawings:Boolean("Q", "Draw Q Range", true)

MalphiteMenu.Drawings:Boolean("E", "Draw E Range", true)

MalphiteMenu.Drawings:Boolean("R", "Draw R Range", true)


OnDraw(function(myHero)

local pos = GetOrigin(myHero)

	if Malphite.Drawings.Q:Value() then DrawCircle(pos,625,1,10,GoS.Red) end

	if Malphite.Drawings.E:Value() then DrawCircle(pos,200,1,10,GoS.Yellow) end

	if Malphite.Drawings.R:Value() then DrawCircle(pos,1000,1,10,GoS.Pink) end

end)

OnTick(function(myHero)

    local target = GetCurrentTarget()
	
	MalphiteMenu.Combo.Q:Value() and Ready(_Q) and ValidTarget(target, 625) then  
	
    		CastTargetSpell(target , _Q)
			
    	end
		
	if AnnieMenu.Combo.E:Value() and Ready(_E) and ValidTarget(target, 200) then 
    			local targetPos = GetOrigin(target)
				
    			CastSkillShot(_W , targetPos)
				
    	end
		
	if AnnieMenu.Combo.R:Value() and Ready(_R) and ValidTarget(target, 1000) then 
    			local targetPos = GetOrigin(target)
				
    			CastSkillShot(_R , targetPos)
				
    	end
	end
	

	local ultimate = { delay = 0.00, speed = 1835, width = 300, range = 1000 }
local pI = GetPrediction(myHero, ultimate)

if pI and pI.hitChance >= 0.25 and not pI:mCollision(1) then
    CastSkillShot(_R, pI.castPos)
end
		
		
		
		
		
		
		
