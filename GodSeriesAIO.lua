-- 26643ex2366v23nn654m99.b4ewwx11.v12




-- Welcome to GodSeriesAIO

-- By Zeyx


--[[                                                                       .uuu
    z@#"%c                      .uuzm**"""""*%mu..             z*"` .e@#N      
   @!!!R.  #c              .z*"                    ^*c       z    dT!!!!!>     
  '!!!!!!N   "i         u*"                            #s  :"   @?!!!!!!!R     
  t!!!!!!!#u   "i    .@                                  ^$   :R!!!!!!!!!X     
  '!!!!!!!!!#c   "i:#                                      ?> R!!!!!!!!!!X     
  '!!!!!!!!!!!N   @                                         4W!!!!!!!!!!!>     
  '!!!!!!!!!!!!Ru"                                           ?!!!!!!!!!!X      
  'X!!!!!!!!!!!9~                                      .  .  'X!!!!!!!!!6      
   R!!!!!!!!!!tF                                     z$#`   h &!!UR!!!!!F      
   ?!!!!!$X!!!$                                    .@       X $WTR!!!!!X       
    M!!!!!i#U!E  .                                @F        ! FdR!!!!!!f       
    'X!!!!!#c'?u@#"*$N.                         :$          F'9!!!!!!!@        
     9!!!!!!!?NM      ^*c                      dF          ' @!!!!!!!X>        
      R!!!!!!!!&         "e                   d            K<!!!!!!!XF         
      'X!!!!!!!M>          ^N                f            < E!!!!!!X"          
        t!!!!!!!#            ^N            :"      .e$"^  Fn!!!!!XP            
         #X!!!!!!ML             *c       z"    .e$$$$$   M'!!!!W*              
           "*UX!!X@t  ^%u.         ""**#).zd$$#$$$$$$$  <\*@**"                
                    'N    4$$$$$@$$$)$$#$$k4$$$$$$$$$E :$                      
                       ?>  "$$$$$$":$$$W$$$ "$$$$$$$$   %                      
                      :"           ? ^#*"  S  "$$$$$     ?                     
                      F            L      d$L            X                     
                      &           t$i    @$$$           f                      
                       *          $$$$$$$$$$\&        @                        
                        '*.      W'$$$$$$$$FM h    u#                          
                           ^*muz* % $$$$$$":    `"                             
                                   # ^**" d                                    
                                     "***" --]]



									 
function AutoUpdate(data)
    if tonumber(data) > tonumber(ver) then
        PrintChat("New version found! " .. data)
        PrintChat("Downloading update, please wait...")
        DownloadFileAsync("https://raw.githubusercontent.com/estruptum/GoS/master/GodSeriesAIO.lua", SCRIPT_PATH .. "GodSeriesAIO.lua", function() PrintChat("Update Complete, please 2x F6!") return end)
    else
        PrintChat("No updates found!")
    end
end

GetWebResultAsync("https://raw.githubusercontent.com/estruptum/GoS/master/GodSeriesAIO.version", AutoUpdate)



require('inspired')
require('OpenPredict')

class "Fiddlestiscks"
 
function Fiddlestiscks:__init()

  self.Menu = MenuConfig("Fiddlestiscks", "Fiddlestiscks GOD Loaded")
  
  self.Menu:SubMenu("Combo", "Combo")
  
  self.Menu:Boolean("DrawQ", "Draw Q Range", true)
  
  self.Menu:Boolean("DrawW", "Draw W Range", true)
  
  self.Menu:Boolean("DrawE", "Draw E Range", true)
  
  self.Menu:Boolean("DrawR", "Draw R Range", true)
  
  
  Callback.Add("Tick",function() self:Tick() end)
  
  Callback.Add("Draw",function() self:Draw() end)
  
  Callback.Add("RemoveBuff", function(unit,buffProc) self:RemoveBuff(unit,buffProc) end)
  
  Callback.Add("UpdateBuff", function(unit,BuffProc) self:UpdateBuff(unit,buffProc) end)
  
  Callback.Add("Load", function() self:Load () end)
  
end
 
 function Fiddlesticks:Load()
 
  if not igniteFound then
  
      if GetCastName(myHero, SUMMONER_1):lower():find("summonerdot") then
	  
          self.igniteFound = true
		  
          self.summonerSpells.ignite = SUMMONER_1
		  
          FiddlesticksMenu.ksteal:Boolean("ignite", "Auto Ignite", true)
		  

		  
      elseif GetCastName(myHero, SUMMONER_2):lower():find("summonerdot") then
	  
          self.igniteFound = true
		  
          self.summonerSpells.ignite = SUMMONER_2
		  
          FiddlesticksMenu.ksteal:Boolean("ignite", "Auto Ignite", true)
		  
      end
	  
  end
  
end
 
 
 
 function Fiddlestiscks:UpdateBuff(unit,buffProc)
 
 if not unit or not buff then 
 
    return 
	
  end 
  
  if unit.isMe then
  
    if buff.Name:lower() == "fearmonger_marker" then
	
      IOW.movementEnabled = false
	  
      IOW.attacksEnabled = false
	  
      BlockF7OrbWalk(true)
	  
      BlockF7Dodge(true)
	  
      castingR = true
	  
    end
	
  end
  
 end
 
 
function Fiddlestiscks:RemoveBuff(unit,buffProc)
if not unit or not buff then 

    return 
	
  end 
  
  if unit.isMe then
  
    if buffProc.Name:lower() == "fearmonger_marker" then
	
      IOW.movementEnabled = true
	  
      IOW.attacksEnabled = true
	  
      BlockF7OrbWalk(false)
	  
      BlockF7Dodge(false)
	  
      castingR = false
	  
    end
	
  end
  
end


function Fiddlestiscks:Tick()
local manaQ = myHero:GetSpellData(_Q).mana         -- Needed mana to cast ability

local manaW = myHero:GetSpellData(_W).mana         -- Needed mana to cast ability    

local manaE = myHero:GetSpellData(_E).mana         -- Needed mana to cast ability  

local manaR = myHero:GetSpellData(_R).mana         -- Needed mana to cast ability

SmiteSlot = (GetCastName(myHero, SUMMONER_1):lower():find("smite") and SUMMONER_1 or (GetCastName(myHero, SUMMONER_2):lower():find("smite")
 and SUMMONER_2 or nil))     -- Smite check 

local target = GetCurrentTarget()  
  if IOW:Mode() == "Combo" then
    
    if FiddlesticksMenu.Combo.Smite:Value() and SmiteSlot ~= nil and Ready(SmiteSlot) and ValidTarget(target, 500) then 
  CastTargetSpell(target , SmiteSlot) 
  end 
  end
  if manaQ + manaW + manaE + manaR < GetCurrentMana(myHero) then -- if currentMana > Q+W+E+R mana then continue combo :D
if FiddlesticksMenu.Combo.R:Value() and Ready(_R) and ValidTarget(target, 800) then
    if Ready(_R) and not castingW then
      CastTargetSpell(target , _R)
    end
  end
  
if FiddlesticksMenu.Combo.Q:Value() and Ready(_Q) and ValidTarget(target, 575) then  
    if Ready(_Q) and not castingW then 
      CastTargetSpell(target , _Q)
      end
    end
  if FiddlesticksMenu.Combo.E:Value() and Ready(_E) and ValidTarget(target, 750) then
    if Ready(_E) and not castingW then
      CastTargetSpell(target , _E)
    end
  end
  
    if FiddlesticksMenu.Combo.W:Value() and Ready(_W) and ValidTarget(target, 575) then 
      CastTargetSpell(target , _W)

  end
end
end

function Fiddlestiscks:Draw()

  local target = GetCurrentTarget()
  
  DrawDMG(target)
  
local pos = GetOrigin(myHero)

  if FiddlesticksMenu.Drawings.Q:Value() then DrawCircle(pos,575,2,20,GoS.Red) end
  
  if FiddlesticksMenu.Drawings.W:Value() then DrawCircle(pos,575,2,20,GoS.Red) end
  
  if FiddlesticksMenu.Drawings.E:Value() then DrawCircle(pos,750,2,20,GoS.Yellow) end
  
  if FiddlesticksMenu.Drawings.R:Value() then DrawCircle(pos,800,2,20,GoS.Pink) end
  
end



-- [[[[[[[[[[[[[[[[]]]]]]]]]]]]]]]] --
class "Malphite"
-- [[[[[[[[[[[[[[[[]]]]]]]]]]]]]]]] --


function Malphite:__init()

  self.Menu = MenuConfig("Malphite", "Malphite GOD Loaded")
  
  self.Menu:SubMenu("Combo", "Combo")
  
  self.Menu:Boolean("DrawQ", "Draw Q Range", true)
  
  self.Menu:Boolean("DrawE", "Draw E Range", true)
  
  self.Menu:Boolean("DrawR", "Draw R Range", true)
  
  Callback.Add("Tick",function() self:Tick() end)
  
  Callback.Add("Draw",function() self:Draw() end)
  
  end
  
  
 function Malphite:Tick()

local manaQ = myHero:GetSpellData(_Q).mana         -- Needed mana to cast ability

local manaW = myHero:GetSpellData(_W).mana         -- Needed mana to cast ability    

local manaE = myHero:GetSpellData(_E).mana         -- Needed mana to cast ability  

local manaR = myHero:GetSpellData(_R).mana         -- Needed mana to cast ability

 SmiteSlot = (GetCastName(myHero, SUMMONER_1):lower():find("smite") and SUMMONER_1 or (GetCastName(myHero, SUMMONER_2):lower():find("smite")
 and SUMMONER_2 or nil))
 
 if manaQ + manaW + manaE + manaR < GetCurrentMana(myHero) then
 
 
    local target = GetCurrentTarget()	
	
	if IOW:Mode() == "Combo" then	
	
	if MalphiteMenu.Combo.Smite:Value() and SmiteSlot ~= nil and Ready(SmiteSlot) and ValidTarget(target, 500) then	
	
	CastTargetSpell(target , SmiteSlot)	
	
	end 	
	
	if MalphiteMenu.Combo.Q:Value() and Ready(_Q) and ValidTarget(target, 625) then  	
	
    		CastTargetSpell(target , _Q)			
			
    	end		
		
	if MalphiteMenu.Combo.W:Value() and Ready(_W) and ValidTarget(target, 125) then 
	
    			local targetPos = GetOrigin(target)				
				
    			CastSpell(_W)				
				
    	end		
		
	if MalphiteMenu.Combo.E:Value() and Ready(_E) and ValidTarget(target, 200) then 
	
    			local targetPos = GetOrigin(target)				
				
    			CastSpell(_E)				
				
    	end		
		
	if MalphiteMenu.Combo.R:Value() and Ready(_R) and ValidTarget(target, 1000) then 
	
    			local targetPos = GetOrigin(target)			
				
    			CastSkillShot(_R , targetPos)
				
    	end
	end
	end
	
  else DrawText(" Not Enough Mana For Full Combo ", 20, 250, 250, GoS.Cyan)
  end
 end
 
 function Malphite:Draw()
 
 local pos = GetOrigin(myHero)

	if MalphiteMenu.Drawings.Q:Value() then DrawCircle(pos,625,2,20,GoS.Red) end

	if MalphiteMenu.Drawings.E:Value() then DrawCircle(pos,200,2,20,GoS.Yellow) end

	if MalphiteMenu.Drawings.R:Value() then DrawCircle(pos,1000,2,20,GoS.Pink) end
	
end


-- [[[[[[[[[[[[[[]]]]]]]]]]]]]] --
class "Annie"
-- [[[[[[[[[[[[[[]]]]]]]]]]]]]] --

function Annie:__init()
  self.Menu = MenuConfig("Annie", "Annie GOD Loaded")
  
  selfMenu:SubMenu("Combo", "Combo")
  
  self.Menu:Boolean("DrawQ", "Draw Q Range", true)
  
  self.Menu:Boolean("DrawW", "Draw W Range", true)
  
  self.Menu:Boolean("DrawE", "Draw E Range", true)
  
  self.Menu:Boolean("DrawR", "Draw R Range", true)
  
  selfMenu.Combo:Boolean("KSQ", "Killsteal with Q", true)
  
  Callback.Add("Tick",function() self:Tick() end)
  
  Callback.Add("Draw",function() self:Draw() end)
  
  end
  
  function Annie:Tick()
  
  local target = GetCurrentTarget()
	
	
    if  GetCurrentMana(myHero) > manaQ + manaW + manaR and IOW:Mode() == "Combo" then
	
	
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
	end
	
	
	function Annie:Draw()
	
	local pos = GetOrigin(myHero)
	
if AnnieMenu.Drawings.Q:Value() then DrawCircle(pos,625,1,10,GoS.Red) end

if AnnieMenu.Drawings.W:Value() then DrawCircle(pos,625,1,10,GoS.Yellow) end

if AnnieMenu.Drawings.R:Value() then DrawCircle(pos,600,1,10,GoS.Pink) end

end

if not _G[GetObjectName(myHero)] then PrintChat(" "..GetObjectName(myHero).." Is Not Supported !") return end 
_G[GetObjectName(myHero)]()
