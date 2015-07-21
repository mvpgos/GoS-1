require("Inspired")
require("IMenu")
require("IWalk")
-- By Support
 
AddInfo("Thresh", "Thresh")
AddButton("Q", "Use Q", true)
AddButton("W", "use W", true)
AddButton("E", "Use E", true)
AddButton("R", "Use R", true)



AddAfterObjectLoopEvent(function(myHero)
    local Obj_Type = GetObjectType(Object);
            if Obj_Type == Obj_AI_Hero then

    IWalk()
     if GetKeyValue("Combo") then
        target = GetCurrentTarget()
            if ValidTarget(target, 1100) then
            local QPred = GetPredictionForPlayer(GetMyHeroPos(),target,GetMoveSpeed(target),1900,500,1100,70,true,true)  -- GetPredictionForPlayer(startPosition, targetUnit, targetUnitMoveSpeed, spellTravelSpeed, spellDelay, spellRange, spellWidth, collision, addHitBox)
                    if GetButtonValue("Q") then
                     if CanUseSpell(myHero, _Q) == READY and QPred.HitChance == 1 then
                     CastSkillShot(_Q,QPred.PredPos.x,QPred.PredPos.y,QPred.PredPos.z)
                     end
                    end

                    if GetButtonValue("W") then -- rango 950
                        if CanUseSpell(myHero,_W) == READY then
                        CastTargetSpell(Object,_W)
                        end
                    end

 
                    if GetButtonValue("E") then
                     local EPred = GetPredictionForPlayer(GetMyHeroPos(),target,GetMoveSpeed(target),1875,250,400,55,false,true)
                     if CanUseSpell(myHero, _E) == READY and EPred.HitChance == 1 then
                     CastSkillShot(_E,EPred.PredPos.x,EPred.PredPos.y,EPred.PredPos.z)
                     end
                    end
 
           
                    if GetButtonValue("R") then
                    local RPred = GetPredictionForPlayer(GetMyHeroPos(),target,GetMoveSpeed(target),0,250,450,55,false,true)

                     if CanUseSpell(myHero, _R) == READY and RPred.HitChance == 1 then
                     CastSkillShot(_R,RPred.PredPos.x,RPred.PredPos.y,RPred.PredPos.z)
                     end
                   end
            end
        end
    end
end)
