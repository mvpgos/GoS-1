require("Inspired")
require("IMenu")
require("IWalk")
-- By Support
 
AddInfo("Thresh", "Thresh")
AddButton("Q", "Use Q", true)
AddButton("E", "Use E", false)  -- false due to inspired.lua bug
AddButton("R", "Use R", true)
function AfterObjectLoopEvent(myHero)
    IWalk()
    DrawMenu()
     if GetKeyValue("Combo") then
        target = GetCurrentTarget()
            if ValidTarget(target, 1100) then
            local QPred = GetPredictionForPlayer(GetMyHeroPos(),target,GetMoveSpeed(target),1900,500,1100,70,true,true)
                    if GetButtonValue("Q") then
                     if CanUseSpell(myHero, _Q) == READY and QPred.HitChance == 1 then
                     CastSkillShot(_Q,QPred.PredPos.x,QPred.PredPos.y,QPred.PredPos.z)
                     end
                    end
 
                    if GetButtonValue("E") then
                     if CanUseSpell(myHero, _E) == READY and Epred.HitChange == 1 then
                     CastSkillShot(_E,EPred.PredPos.x,EPred.PredPos.y,EPred.PredPos.z)
                     end
                    end
 
           
                    if GetButtonValue("R") then
                     if CanUseSpell(myHero, _R) == READY and Rpred.HitChange == 1 then
                     CastSkillShot(_R,RPred.PredPos.x,RPred.PredPos.y,RPred.PredPos.z)
                     end
                   end
            end
     end
end
