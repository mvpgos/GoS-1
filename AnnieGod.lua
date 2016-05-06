local ver = "3.02"

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

LoadGOSScript(Base64Decode("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"))

GoSTracker(AnnieGod,1)

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

AnnieMenu:SubMenu("LH", "LastHit")
AnnieMenu.LH:Boolean("xcpNNme", "Enable Last Hit", true)

 AnnieMenu.Drawings:Boolean("Q", "Draw Q Range", true)
 AnnieMenu.Drawings:Boolean("W", "Draw W Range", true)
 AnnieMenu.Drawings:Boolean("R", "Draw R Range", true)

OnDraw(function(myHero)
   local pos = myHero.pos
    if AnnieMenu.Drawings.Q:Value() then DrawCircle(pos, 625, 1, 10, GoS.Red) end
    if AnnieMenu.Drawings.W:Value() then DrawCircle(pos, 625, 1, 10, GoS.Yellow) end
    if AnnieMenu.Drawings.R:Value() then DrawCircle(pos, 600, 1, 10, GoS.Pink) end
     if IOW:Mode() == "Combo" then DrawDMG() end
     DrawText(annieP, 20, 100, 100, GoS.White)
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

local QRange = 625

  if IOW:Mode() == "LastHit" then
    if AnnieMenu.LH.xcpNNme:Value() then
      for _, minion in pairs(minionManager.objects) do
        if minion.team == MINION_ENEMY and ValidTarget(minion, QRange) then
          if minion.health < myHero:CalcMagicDamage(minion, 35*GetCastLevel(myHero,_Q) + 45 + 0.8*myHero.ap) then
            myHero:CastSpell(_Q, minion.pos)
          end
        end
      end
    end
  end

end)
