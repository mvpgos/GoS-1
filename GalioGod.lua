local ver = "0.05"

function AutoUpdate(data)
    if tonumber(data) > tonumber(ver) then
        PrintChat("New version found! " .. data)
        PrintChat("Downloading update, please wait...")
        DownloadFileAsync("https://github.com/estruptum/GoS/blob/master/GalioGod.lua", SCRIPT_PATH .. "GalioGod.lua", function() PrintChat("Update Complete, please 2x F6!") return end)
    else
        PrintChat("No updates found!")
    end
end

GetWebResultAsync("https://raw.githubusercontent.com/estruptum/GoS/master/galio.version", AutoUpdate)





if GetObjectName(GetMyHero()) ~= "Galio" then 
  return 
end

-- welcome to Galio script ( BETA )


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



  --LIBS NEEDED                
     
require("OpenPredict")


  --END LIBS NEEDED



local summonerSpells = {ignite = {}, flash = {}, heal = {}, barrier = {}, smite = {}}

local GalioMenu = MenuConfig("Galio", "Galio")

GalioMenu:Menu("Drawings", "Drawings")

GalioMenu:SubMenu("Combo", "Combo")
GalioMenu.Combo:Boolean("Smite", "Use Smite", true)
GalioMenu.Combo:Boolean("Q", "Use Q", true)
GalioMenu.Combo:Boolean("W", "Use W", true)
GalioMenu.Combo:Boolean("E", "Use E", true)
GalioMenu.Combo:Boolean("R", "Use R", true)

GalioMenu:SubMenu("rConfig", " R Configuration")
GalioMenu.rConfig:Slider("rSS","Enemy count to cast R: ", 1, 1, 5, 1)

GalioMenu.Drawings:Boolean("Q", "Draw Q Range", true)
GalioMenu.Drawings:Boolean("E", "Draw E Range", true)
GalioMenu.Drawings:Boolean("W", " Draw W Range", true)
GalioMenu.Drawings:Boolean("R", "Draw R Range", true)

GalioMenu:Menu("Version", "Ver + Info")
  GalioMenu.Version:Info("Cnt", "Made By Zeyx")
  GalioMenu.Version:Empty("Te", 0)
  GalioMenu.Version:Info("Ver", "Current Version: 0.05")

-- OnLoad (function()

 --[[ if not igniteFound then
      if GetCastName(myHero, SUMMONER_1):lower():find("summonerdot") then
          igniteFound = true
          summonerSpells.ignite = SUMMONER_1
          GalioMenu.ksteal:Boolean("ignite", "Auto Ignite", true)
      elseif GetCastName(myHero, SUMMONER_2):lower():find("summonerdot") then
          igniteFound = true
          summonerSpells.ignite = SUMMONER_2
          GalioMenu.ksteal:Boolean("ignite", "Auto Ignite", true)
      end
  end
end) --]]


------------------------
-- GALIO AIN'T BE MOVING 
------------------------

RChannel = false


OnUpdateBuff (function(unit, buff)
  if not unit or not buff then 
    return 
  end 
  if unit.isMe then
    if buff.Name:lower() == "galioidolofdurand" then
      IOW.movementEnabled = false
      IOW.attacksEnabled = false
      BlockF7OrbWalk(true)
      BlockF7Dodge(true)
      RChannel = false     
    end
  end
end)


------------------------
--     GALIO  MOVING 
------------------------
OnRemoveBuff (function(unit, buff) 
  if not unit or not buff then 
    return 
  end 
  if unit.isMe then
    if buff.Name:lower() == "galioidolofdurand" then
      IOW.movementEnabled = true
      IOW.attacksEnabled = true
      BlockF7OrbWalk(false)
      BlockF7Dodge(false)    
      RChannel = false 
    end
  end
end)

-----------------------
--     LET'S DRAW 
------------------------


OnDraw(function(myHero)
  local target = GetCurrentTarget()
  DrawDMG(target)

  local pos = GetOrigin(myHero)
  if GalioMenu.Drawings.Q:Value() then DrawCircle(pos,940,2,20,GoS.Red) end
  if GalioMenu.Drawings.W:Value() then DrawCircle(pos,800,2,20,GoS.Cyan) end
  if GalioMenu.Drawings.E:Value() then DrawCircle(pos,1180,2,20,GoS.Yellow) end
  if GalioMenu.Drawings.R:Value() then DrawCircle(pos,600,2,20,GoS.Pink) end
end)

function DrawDMG(target)


  local qDMG = 0
  local eDMG = 0
  local rDMG = 0

  if Ready(_Q) then
    qDMG = CalcDamage(myHero, target, 0, (55*GetCastLevel(myHero, _Q)+25+(0.60*(GetBonusAP(myHero)))))
  end

  if Ready(_E) then
    eDMG = CalcDamage(myHero, target, 0, (45*GetCastLevel(myHero, _E)+15+(0.50*(GetBonusAP(myHero)))))
  end

  if Ready(_R) then
    rDMG = CalcDamage(myHero, target, 0, (100*GetCastLevel(myHero, _R)+100+(0.60*(GetBonusAP(myHero)))))
  end

 local DPS = qDMG + eDMG + rDMG

  if DPS > GetCurrentHP(target) then
  DrawText(target.charName.." is killable ", 11, 350, 350, GoS.Cyan)
-- under work  DrawDmgOverHpBar(target,GetCurrentHP(target),0,DPS,0xffffffff)                   -- ver daño combo 
	end
end



-----------------------
--     LET'S TICK
------------------------

OnTick(function()

local manaQ = myHero:GetSpellData(_Q).mana         -- Needed mana to cast ability
local manaW = myHero:GetSpellData(_W).mana         -- Needed mana to cast ability    
local manaE = myHero:GetSpellData(_E).mana         -- Needed mana to cast ability  
local manaR = myHero:GetSpellData(_R).mana         -- Needed mana to cast ability

SmiteSlot = (GetCastName(myHero, SUMMONER_1):lower():find("smite") and SUMMONER_1 or (GetCastName(myHero, SUMMONER_2):lower():find("smite")
 and SUMMONER_2 or nil))     -- Smite check 


local target = GetCurrentTarget() 
  if IOW:Mode() == "Combo" then

  	if GalioMenu.Combo.Smite:Value() and SmiteSlot ~= nil and Ready(SmiteSlot) and ValidTarget(target, 500) then
      CastTargetSpell(target , SmiteSlot)
    end

  if manaQ + manaW + manaE + manaR < GetCurrentMana(myHero) then

  local QPred = { delay = 0.25, speed = 1200, width = 235, range = 940 } 
  local pI = GetPrediction(myHero, QPred)

  	if GalioMenu.Combo.Q:Value() and Ready(_Q) and ValidTarget(target, 940) then 
  		if pI and pI.hitChance >= 0.25  then
    	 CastSkillShot(_Q, pI.castPos)
		  end
    end

      local EPred = { delay = 0.00, speed = 1300, width = 160, range = 1180 } 
      local GonnaHitYa = GetPrediction(myHero, EPred)

    if GalioMenu.Combo.E:Value() and Ready(_E) and ValidTarget(target, 1180) then
  		  if GonnaHitYa and GonnaHitYa.hitChance >= 0.20  then
    	   CastSkillShot(_E, GonnaHitYa.castPos)
		    end
    end


    if GalioMenu.Combo.R:Value() and Ready(_R) and ValidTarget(target, 600) then
    	if EnemiesAround(GetOrigin(myHero), 596) >= GalioMenu.Combo.rSS:Value() then
    		CastTargetSpell(target , _R) 
        DrawText(" Ultimate being used ", 11, 250, 250, GoS.Cyan)
    	end
    end

      if RChannel == true then
        IOW.movementEnabled = false
        IOW.attacksEnabled = false
        BlockF7OrbWalk(true)
        BlockF7Dodge(true)
      elseif RChannel == false or EnemiesAround(myHero.pos, 600) == 0 then
        IOW.movementEnabled = true
        IOW.attacksEnabled = true
        BlockF7OrbWalk(false)
        BlockF7Dodge(false)
     end
    end
  end
end)


OnProcessSpell(function(unit,spellProc)

	if GetPercentHP(myHero) <= 50 and  unit ~= myHero and  GetTeam(unit) == MINION_ENEMY and not spellProc.name:lower():find("attack") and spellProc.target and spellProc.target == myHero then
		CastSpell(myHero,_W)

	end
end)
