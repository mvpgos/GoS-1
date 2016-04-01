
local ver = "2.11"

function AutoUpdate(data)
    if tonumber(data) > tonumber(ver) then
        PrintChat("New AnnieGod Script Version Found " .. data)
        PrintChat("Downloading update, please wait...")
        DownloadFileAsync("https://raw.githubusercontent.com/estruptum/GoS/master/AnnieGod.lua", SCRIPT_PATH .. "AnnieGod.lua", function() PrintChat("Update Complete, please 2x F6!") return end)
    else
        PrintChat("No updates found! Feel free to destroy with AnnieGod")
    end
end

GetWebResultAsync("https://raw.githubusercontent.com/estruptum/GoS/master/AnnieGod.version", AutoUpdate)
----------------



local AnnieP = 0
local FlashSlot = GetCastName(myHero, SUMMONER_1):lower():find("flash") and SUMMONER_1 or GetCastName(myHero, SUMMONER_2):lower():find("flash") and SUMMONER_2 or nil
local IgniteSlot = GetCastName(myHero, SUMMONER_1):lower():find("summonerdot") and SUMMONER_1 or GetCastName(myHero, SUMMONER_2):lower():find("summonerdot") and SUMMONER_2 or nil
local AnnieMenu = MenuConfig("Annie", "Annie")

AnnieMenu:Menu("Drawings", "Drawings")
AnnieMenu:SubMenu("SM", "Use Stun Manager")
AnnieMenu.SM:Boolean("EN", "Enable Stun Manager", true)
AnnieMenu.SM:Boolean("Q", "Use Q", true)
AnnieMenu.SM:Boolean("W", "Use W", true)
AnnieMenu.SM:Boolean("E", " Use E", true)
AnnieMenu.SM:Boolean("R", "Use R", true)
if IgniteSlot ~= nil then AnnieMenu.SM:Boolean("ignite", "Auto Ignite", true) end
if FlashSlot ~= nil then AnnieMenu.SM:Boolean("flash", "Auto Flash", true) end

AnnieMenu:SubMenu("Combo", "Combo")
AnnieMenu.Combo:Boolean("Q", "Use Q", true)
AnnieMenu.Combo:Boolean("W", "Use W", true)
AnnieMenu.Combo:Boolean("E", " Use E", true)
AnnieMenu.Combo:Boolean("R", "Use R", true)
AnnieMenu.Combo:Boolean("KSQ", "Killsteal with Q", true)
if IgniteSlot ~= nil then AnnieMenu.Combo:Boolean("ignite", "Auto Ignite", true) end
if FlashSlot ~= nil then AnnieMenu.Combo:Boolean("flash", "Auto Flash", true) end


 AnnieMenu.Drawings:Boolean("Q", "Draw Q Range", true)
 AnnieMenu.Drawings:Boolean("W", "Draw W Range", true)
 AnnieMenu.Drawings:Boolean("R", "Draw R Range", true)

OnDraw(function(myHero)
   local pos = myHero.pos
    if AnnieMenu.Drawings.Q:Value() then DrawCircle(pos, 625, 1, 10, GoS.Red) end
    if AnnieMenu.Drawings.W:Value() then DrawCircle(pos, 625, 1, 10, GoS.Yellow) end
    if AnnieMenu.Drawings.R:Value() then DrawCircle(pos, 600, 1, 10, GoS.Pink) end
     if IOW:Mode() == "Combo" then DrawDMG() end
     DrawText(annieP, 20, myHero.pos.x, myHero.pos.y, GoS.White)
end)

function DrawDMG()
  local FullDmg = 0
  local qDMG = 0
  local wDMG = 0
  local rDMG = 0

    for i, enemy in pairs(GetEnemyHeroes()) do
     if ValidTarget(enemy) then
      if Ready(_Q) then
        qDMG = myHero:CalcMagicDamage(enemy, 35*GetCastLevel(myHero,_Q) + 45 + 0.8*myHero.ap)
      end

      if Ready(_W) then
        wDMG = myHero:CalcMagicDamage(enemy, 45*GetCastLevel(myHero,_W) + 25 + 0.85*myHero.ap)
      end

      if Ready(_R) then
        rDMG = myHero:CalcMagicDamage(enemy, 125*GetCastLevel(myHero,_R) + 50 + 0.80*myHero.ap)
      end

       FullDmg = qDMG + wDMG + rDMG

      if FullDmg > enemy.health + enemy.shieldAD + enemy.shieldAP then
        DrawText3D("Full Combo Killable", enemy.pos.x, enemy.pos.y, enemy.pos.z, 15, GoS.Red, true)
      end

       DrawDmgOverHpBar(enemy, enemy.health, 0, FullDmg, GoS.White)
     end
    end
end


OnUpdateBuff (function(o, buff)
  if o == myHero and o.dead == false then
        if buff.Name:lower() == "pyromania" then
         annieP = buff.Count
        end
  end
end)

OnRemoveBuff(function(o, buff)
    if o == myHero and o.dead == false then
      if buff.Name:lower() == "pyromania" then
       annieP = 0
    end
    end
end)

  

OnTick(function(myHero)
    local target = GetCurrentTarget()

    if IOW:Mode() == "Combo" then

-- below |||||| the stun manager
    if AnnieMenu.SM.EN:Value() then
      

        if annieP == 2 then
          if AnnieMenu.SM.Q:Value() and Ready(_Q) and ValidTarget(target, 625) then  
          CastTargetSpell(target, _Q)
          end
          if AnnieMenu.SM.W:Value() and Ready(_W) and ValidTarget(target, 610) then  -- used a lower range so the possibility to hit W increases
           CastSkillShot(_W , target.pos)
          end
          if AnnieMenu.SM.E:Value() and Ready(_E) then
            CastSpell(_E)
          end
        end

        if annieP == 3 then 
          if AnnieMenu.SM.Q:Value() and Ready(_Q) and ValidTarget(target, 625) then  
          CastTargetSpell(target, _Q)
          end
          if AnnieMenu.SM.W:Value() and Ready(_W) and ValidTarget(target, 610) then  -- used a lower range so the possibility to hit W increases
           CastSkillShot(_W , target.pos)
          end
          if AnnieMenu.SM.E:Value() and Ready(_E) then
            CastSpell(_E)
          end
        end

        if annieP == 4 then
          if AnnieMenu.SM.Q:Value() and Ready(_Q) and ValidTarget(target, 625) then  
          CastTargetSpell(target, _Q)
          end
          if AnnieMenu.SM.W:Value() and Ready(_W) and ValidTarget(target, 610) then  -- used a lower range so the possibility to hit W increases
           CastSkillShot(_W , target.pos)
          end
          if AnnieMenu.SM.E:Value() and Ready(_E) then
            CastSpell(_E)
          end
        end

        if annieP == 5 then
          if AnnieMenu.SM.flash:Value() and AnnieMenu.SM.R:Value() and Ready (_R) and ValidTarget(target, 1000) then -- 1000 -> R range + flash range
            CastSkillShot(FlashSlot, target.pos)
            CastSkillShot(_R , target.pos)
          end
        end

      end


-- above ^^^^^^^^^^ the stun manager 


      if IgniteSlot ~= nil and Ready(IgniteSlot) and ValidTarget(target, 600) then
          if AnnieMenu.Combo.ignite:Value() then CastTargetSpell(target, IgniteSlot) 
          end
      end
  
      if AnnieMenu.Combo.Q:Value() and Ready(_Q) and ValidTarget(target, 625) then  
        CastTargetSpell(target, _Q)
      end

      if AnnieMenu.Combo.W:Value() and Ready(_W) and ValidTarget(target, 610) then  -- used a lower range so the possibility to hit W increases
        CastSkillShot(_W , target.pos)
      end

      if AnnieMenu.Combo.R:Value() and Ready(_R) and ValidTarget(target, 595) then -- used a lower range so the possibility to hit R increases
        CastSkillShot(_R , target.pos)
        end
  end

  for _, enemy in pairs(GetEnemyHeroes()) do
      if AnnieMenu.Combo.Q:Value() and AnnieMenu.Combo.KSQ:Value() and Ready(_Q) and ValidTarget(enemy, 625) and enemy.health + enemy.shieldAD + enemy.shieldAP < myHero:CalcMagicDamage(enemy, 35*GetCastLevel(myHero,_W) + 45 + 0.8*myHero.ap) then
      CastTargetSpell(enemy, _Q)
      end
  end
end)
