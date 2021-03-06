local ver = "0.07"

function AutoUpdate(data)
    if tonumber(data) > tonumber(ver) then
        PrintChat("New version found! " .. data)
        PrintChat("Downloading update, please wait...")
        DownloadFileAsync("https://raw.githubusercontent.com/estruptum/GoS/master/FiddlesticksGod.lua", SCRIPT_PATH .. "FiddlesticksGod.lua", function() PrintChat("Update Complete, please 2x F6!") return end)
    else
        PrintChat("No updates found!")
    end
end

GetWebResultAsync("https://raw.githubusercontent.com/estruptum/GoS/master/Fiddlesticks.version", AutoUpdate)








if GetObjectName(GetMyHero()) ~= "FiddleSticks" then 
  return 
end


-- welcome to fiddlesticks script ( BETA )


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
                   
require("Inspired")


  --END LIBS NEEDED



  


local castingR = false


local igniteFound = false


local summonerSpells = {ignite = {}, flash = {}, heal = {}, barrier = {}}


local FiddlesticksMenu = MenuConfig("FiddleSticks", "FiddleSticks")


FiddlesticksMenu:Menu("Drawings", "Drawings")


  FiddlesticksMenu:SubMenu("Combo", "Combo")

  
    FiddlesticksMenu.Combo:Boolean("Q", "Use Q", true)

    
    FiddlesticksMenu.Combo:Boolean("W", "Use W", true)

    
    FiddlesticksMenu.Combo:Boolean("E", "Use E", true)

    
    FiddlesticksMenu.Combo:Boolean("R", "Use R", true)

    
    FiddlesticksMenu.Combo:Boolean("Smite", "Use Smite", true)
    FiddlesticksMenu.Combo:Boolean("Ignite", "Use Ignite", true)
    if IgniteSlot ~= nil then FiddlesticksMenu.Combo:Boolean("ignite", "Auto Ignite", true) end



    
FiddlesticksMenu.Drawings:Boolean("Q", "Draw Q Range", true)


FiddlesticksMenu.Drawings:Boolean("E", "Draw E Range", true)


FiddlesticksMenu.Drawings:Boolean("W", " Draw W Range", true)


FiddlesticksMenu.Drawings:Boolean("R", "Draw R Range", true)



OnLoad (function()


  if not igniteFound then


      if GetCastName(myHero, SUMMONER_1):lower():find("summonerdot") then


          igniteFound = true


          summonerSpells.ignite = SUMMONER_1


          FiddlesticksMenu.Combo:Boolean("ignite", "Auto Ignite", true)


      elseif GetCastName(myHero, SUMMONER_2):lower():find("summonerdot") then


          igniteFound = true

          summonerSpells.ignite = SUMMONER_2


          FiddlesticksMenu.Combo:Boolean("ignite", "Auto Ignite", true)


      end

  end

end) 



OnUpdateBuff (function(unit, buff)

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

end)



OnRemoveBuff (function(unit, buff) 

  if not unit or not buff then 

    return 

  end 


  if unit.isMe then


    if buff.Name:lower() == "fearmonger_marker" then

      IOW.movementEnabled = true

      IOW.attacksEnabled = true

      BlockF7OrbWalk(false)

      BlockF7Dodge(false)

      castingR = false

    end

  end

end)

-----------------------
--     LET'S DRAW 
------------------------



function DrawDMG(target)


  local wDMG = 0
  local eDMG = 0
  local rDMG = 0
    for i, enemy in pairs(GetEnemyHeroes()) do
     if ValidTarget(enemy) then 
  if Ready(_W) then
    wDMG = CalcDamage(myHero, target, 0, (30*GetCastLevel(myHero,_W)+30+(0.45*(GetBonusAP(myHero)))))
  end

  if Ready(_E) then
    eDMG = CalcDamage(myHero, target, 0, (20*GetCastLevel(myHero,_E)+45+(0.45*(GetBonusAP(myHero)))))
  end

  if Ready(_R) then
    rDMG = CalcDamage(myHero, target, 0, (100*GetCastLevel(myHero,_R)+25+(0.45*(GetBonusAP(myHero)))))
  end


  FullDmg = wDMG + wDMG + rDMG

  if FullDmg > GetCurrentHP(target) then
        DrawText3D("Full Combo Killable", enemy.pos.x, enemy.pos.y, enemy.pos.z, 15, GoS.Red, true)
      end

       DrawDmgOverHpBar(enemy, enemy.health, 0, FullDmg, GoS.White)
    end
end
end


OnDraw(function(myHero)




  local target = GetCurrentTarget()


  DrawDMG(target)


local pos = GetOrigin(myHero)


  if FiddlesticksMenu.Drawings.Q:Value() then DrawCircle(pos,575,2,20,GoS.Red) end


  if FiddlesticksMenu.Drawings.W:Value() then DrawCircle(pos,575,2,20,GoS.Red) end


  if FiddlesticksMenu.Drawings.E:Value() then DrawCircle(pos,750,2,20,GoS.Yellow) end


  if FiddlesticksMenu.Drawings.R:Value() then DrawCircle(pos,800,2,20,GoS.Pink) end

  if IOW:Mode() == "Combo" then DrawDMG() end

end)





OnTick(function()


  local manaQ = myHero:GetSpellData(_Q).mana         -- Needed mana to cast ability


  local manaW = myHero:GetSpellData(_W).mana         -- Needed mana to cast ability    


  local manaE = myHero:GetSpellData(_E).mana         -- Needed mana to cast ability  


  local manaR = myHero:GetSpellData(_R).mana         -- Needed mana to cast ability


  SmiteSlot = (GetCastName(myHero, SUMMONER_1):lower():find("smite") and SUMMONER_1 or (GetCastName(myHero, SUMMONER_2):lower():find("smite")
 and SUMMONER_2 or nil))     -- Smite check 


  local target = GetCurrentTarget()
  
  if IOW:Mode() == "Combo" then

        if IgniteSlot ~= nil and Ready(IgniteSlot) and ValidTarget(target, 600) then
        if AnnieMenu.Combo.Ignite:Value() then CastTargetSpell(target, IgniteSlot) end
        end

    if FiddlesticksMenu.Combo.Smite:Value() and SmiteSlot ~= nil and Ready(SmiteSlot) and ValidTarget(target, 500) then 
  CastTargetSpell(target , SmiteSlot)
  end


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

end)

 -- This has been all friends.














              -- Made By Zeyx

              -- With love

              -- For GoS
