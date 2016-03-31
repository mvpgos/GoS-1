local ver = "2.02"

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


-- Welcome to AnnieGod Ver 1.0

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







require('Inspired')

local summonerSpells = {ignite = {}, flash = {}, heal = {}, barrier = {}}
local AnnieMenu = MenuConfig("Annie", "Annie")

AnnieMenu:Menu("Drawings", "Drawings")
AnnieMenu:SubMenu("Combo", "Combo")
AnnieMenu.Combo:Boolean("Q", "Use Q", true)
AnnieMenu.Combo:Boolean("W", "Use W", true)
AnnieMenu.Combo:Boolean("R", "Use R", true)
AnnieMenu.Combo:Boolean("KSQ", "Killsteal with Q", true)
AnnieMenu.Combo:Boolean("Ignite", "Use Ignite", true)
AnnieMenu.combo:Boolean("ignite", "Auto Ignite", true)


 AnnieMenu.Drawings:Boolean("Q", "Draw Q Range", true)
 AnnieMenu.Drawings:Boolean("W", "Draw W Range", true)
 AnnieMenu.Drawings:Boolean("E", "Draw E Range", true)
 AnnieMenu.Drawings:Boolean("R", "Draw R Range", true)

local manaQ = GetCastMana(myHero, _Q, GetCastLevel(myHero,_Q))
local manaW = GetCastMana(myHero, _W, GetCastLevel(myHero,_W))
local manaR = GetCastMana(myHero, _R, GetCastLevel(myHero,_R))


local igniteFound = false

OnDraw(function(myHero)
local pos = GetOrigin(myHero)
if AnnieMenu.Drawings.Q:Value() then DrawCircle(pos,625,1,10,GoS.Red) end
if AnnieMenu.Drawings.W:Value() then DrawCircle(pos,625,1,10,GoS.Yellow) end
if AnnieMenu.Drawings.R:Value() then DrawCircle(pos,600,1,10,GoS.Pink) end
end)


OnLoad (function()

  if not igniteFound then
      if GetCastName(myHero, SUMMONER_1):lower():find("summonerdot") then
          igniteFound = true
          summonerSpells.ignite = SUMMONER_1
          AnnieMenu.combo:Boolean("ignite", "Auto Ignite", true)
      elseif GetCastName(myHero, SUMMONER_2):lower():find("summonerdot") then
          igniteFound = true
          summonerSpells.ignite = SUMMONER_2
          AnnieMenu.combo:Boolean("ignite", "Auto Ignite", true)
      end

end

end)



function DrawDMG(target)


  local wDMG = 0
  local eDMG = 0
  local rDMG = 0

  if Ready(_Q) then
    wDMG = CalcDamage(myHero, target, 0, (35*GetCastLevel(myHero,_W)+45+(0.80*(GetBonusAP(myHero)))))
  end


  if Ready(_W) then
    eDMG = CalcDamage(myHero, target, 0, (45*GetCastLevel(myHero,_E)+25+(0.85*(GetBonusAP(myHero)))))
  end

  if Ready(_R) then
    rDMG = CalcDamage(myHero, target, 0, (125*GetCastLevel(myHero,_R)+50+(0.80*(GetBonusAP(myHero)))))
  end
  local DPS = wDMG + eDMG + rDMG
  if DPS > GetCurrentHP(target) then

    DrawText(target.charName.." is killable ", 11, 350, 350, GoS.Cyan)

  DrawDmgOverHpBar(target,GetCurrentHP(target),0,DPS,0xffffffff)                   -- ver daño combo 


    end
end


OnTick(function(myHero)

    IgniteSlot = (GetCastName(myHero, SUMMONER_1):lower():find("ignite") and SUMMONER_1 or (GetCastName(myHero, SUMMONER_2):lower():find("ignite")
 and SUMMONER_2 or nil))

    local target = GetCurrentTarget()

    local manaQ = myHero:GetSpellData(_Q).mana         -- Needed mana to cast ability
    local manaW = myHero:GetSpellData(_W).mana         -- Needed mana to cast ability    
    local manaE = myHero:GetSpellData(_E).mana         -- Needed mana to cast ability  
    local manaR = myHero:GetSpellData(_R).mana         -- Needed mana to cast ability
	
	
    if  GetCurrentMana(myHero) > manaQ + manaW + manaR and IOW:Mode() == "Combo" then

        if AnnieMenu.Combo.Ignite:Value() and IgniteSlot ~= nil and Ready(IgniteSlot) and ValidTarget(target, 600) then
  
        CastTargetSpell(target , SmiteSlot)
	    end
	
    	if AnnieMenu.Combo.Q:Value() and Ready(_Q) and ValidTarget(target, 625) then  
    		CastTargetSpell(target , _Q)
    	end

    	if AnnieMenu.Combo.W:Value() and Ready(_W) and ValidTarget(target, 610) then  -- used a lower range so the possibility to hit W increases
    			local targetPos = GetOrigin(target)
    			CastSkillShot(_W , targetPos)
    	end

    	if AnnieMenu.Combo.R:Value() and Ready(_R) and ValidTarget(target, 595) then -- used a lower range so the possibility to hit R increases
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



 -- This has been all friends.














              -- Made By Zeyx

              -- With love

              -- For GoS
