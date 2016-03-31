if GetObjectName(GetMyHero()) ~= "Malphite" then 
  return 
end

local summonerSpells = {ignite = {}, flash = {}, heal = {}, barrier = {}}
local ver = "1.10"

function AutoUpdate(data)
    if tonumber(data) > tonumber(ver) then
        PrintChat("New version found! " .. data)
        PrintChat("Downloading update, please wait...")
        DownloadFileAsync("https://raw.githubusercontent.com/estruptum/GoS/master/MalphiteGod.lua", SCRIPT_PATH .. "MalphiteGod.lua", function() PrintChat("Update Complete, please 2x F6!") return end)
    else
        PrintChat("No updates found!")
    end
end

GetWebResultAsync("https://raw.githubusercontent.com/estruptum/GoS/master/MalphiteGod.version", AutoUpdate)


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












require("Inspired")
require("OpenPredict")

local MalphiteMenu = MenuConfig("Malphite", "Malphite")

MalphiteMenu:Menu("Drawings", "Drawings")

  MalphiteMenu:SubMenu("Combo", "Combo")
  
    MalphiteMenu.Combo:Boolean("Q", "Use Q", true)
    
    MalphiteMenu.Combo:Boolean("W", "Use W", true)
    
    MalphiteMenu.Combo:Boolean("E", "Use E", true)
    
    MalphiteMenu.Combo:Boolean("R", "Use R", true)
    
    MalphiteMenu.Combo:Boolean("Smite", "Use Smite", true)

    MalphiteMenu:SubMenu("rConfig", " R Configuration")
    MalphiteMenu.Combo:Slider("rSS","Enemy count to cast R: ", 1, 1, 5, 1)
    
    
MalphiteMenu.Drawings:Boolean("Q", "Draw Q Range", true)

MalphiteMenu.Drawings:Boolean("E", "Draw E Range", true)

MalphiteMenu.Drawings:Boolean("R", "Draw R Range", true)


OnDraw(function(myHero)

local pos = GetOrigin(myHero)

  if MalphiteMenu.Drawings.Q:Value() then DrawCircle(pos,625,2,20,GoS.Red) end

  if MalphiteMenu.Drawings.E:Value() then DrawCircle(pos,200,2,20,GoS.Yellow) end

  if MalphiteMenu.Drawings.R:Value() then DrawCircle(pos,1000,2,20,GoS.Pink) end

end)



function DrawDMG(target)


  local qDMG = 0
  local eDMG = 0
  local rDMG = 0

  if Ready(_Q) then
    qDMG = CalcDamage(myHero, target, 0, (50*GetCastLevel(myHero,_q)+20+(0.60*(GetBonusAP(myHero)))))
  end

  if Ready(_E) then
    eDMG = CalcDamage(myHero, target, 0, (25*GetCastLevel(myHero,_E)+35+(0.20*(GetBonusAP(myHero)))))
  end

  if Ready(_R) then
    rDMG = CalcDamage(myHero, target, 0, (100*GetCastLevel(myHero,_R)+100+(1*(GetBonusAP(myHero)))))
  end

 local DPS = qDMG + eDMG + rDMG

  if DPS > GetCurrentHP(target) then
  DrawText(target.charName.." is killable ", 11, 350, 350, GoS.Cyan)
  -- under work DrawDmgOverHpBar(target,GetCurrentHP(target),0,DPS,0xffffffff)                   -- ver daño combo 
    end
end











OnTick(function(myHero)

local manaQ = myHero:GetSpellData(_Q).mana         -- Needed mana to cast ability
local manaW = myHero:GetSpellData(_W).mana         -- Needed mana to cast ability    
local manaE = myHero:GetSpellData(_E).mana         -- Needed mana to cast ability  
local manaR = myHero:GetSpellData(_R).mana         -- Needed mana to cast ability

SmiteSlot = (GetCastName(myHero, SUMMONER_1):lower():find("smite") and SUMMONER_1 or (GetCastName(myHero, SUMMONER_2):lower():find("smite")
 and SUMMONER_2 or nil))

    local target = GetCurrentTarget()
  
  if IOW:Mode() == "Combo" then
     if manaQ + manaW + manaE + manaR < GetCurrentMana(myHero) then
  
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
    if EnemiesAround(targetPos, 500) >= MalphiteMenu.Combo.rSS:Value() then
        
          CastSkillShot(_R , targetPos)
        
      end
    end
    end
  end
  end
)
  

