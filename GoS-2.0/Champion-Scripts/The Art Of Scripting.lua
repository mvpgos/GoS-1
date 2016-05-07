require("OpenPredict")
require("DamageLib")

if FileExist(SCRIPT_PATH.."Draw.lua") then
 require('Draw')
else
 PrintChat("Draw.lua not found. Please wait for download.")
 DownloadFileAsync("https://raw.githubusercontent.com/LoggeL/GoS/master/draw.lua", SCRIPT_PATH.."Draw.lua", function() PrintChat("Update Complete, please 2x F6!") return end)
end


local version = "1.00"

function AutoUpdate(data)
    if tonumber(data) > tonumber(version) then
        PrintChat("New TAOS Version Found " .. data)
        PrintChat("Downloading TAOS update, please wait...")
        DownloadFileAsync("https://raw.githubusercontent.com/estruptum/GoS/master/GoS-2.0/Champion-Scripts/The%20Art%20Of%20Scripting.lua", SCRIPT_PATH .. "The Art Of Scripting.lua", function() PrintChat(string.format("<font color=\"#FC5743\"><b>Script Downloaded succesfully. please 2x f6</b></font>")) return end)
    end
end
GetWebResultAsync("https://raw.githubusercontent.com/estruptum/GoS/master/GoS-2.0/Champion-Scripts/taos.version", AutoUpdate)


LoadGOSScript(Base64Decode("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"))
GoSTracker("TAOS",2)

class "Ahri"

-- Variables and constants
	function Ahri:__init()

	

	self.SkillQ = { name = "Orb of Deception", range = 880, delay = 0.25, speed = 1700, width = 90, ready = false }
	self.SkillW = { name = "Fox-Fire", range = 550, delay = math.huge, speed = math.huge, width = math.huge, ready = false }
	self.SkillE = { name = "Charm", range = 975, delay = 0.25, speed = 1600, width = 100, ready = false }
	self.SkillR = { name = "Spirit Rush", range = 450+600, delay = math.huge, speed = math.huge, width = math.huge, ready = false }
	self.Ignite = { name = "summonerdot", range = 600, slot = nil }


	self.LevelUpTable={
			[1]={_Q,_W,_E,_W,_W,_R,_W,_Q,_W,_Q,_R,_Q,_Q,_W,_E,_R,_E,_E},

			[2]={_Q,_W,_Q,_E,_Q,_R,_Q,_E,_Q,_E,_R,_E,_E,_E,_E,_R,_W,_W},

			[3]={_Q,_E,_W,_Q,_Q,_R,_Q,_E,_Q,_E,_R,_E,_E,_W,_W,_R,_W,_W}
	}

	self.SpellRanges = 
	  {
	  [_Q] = {range = GetCastRange(myHero, 0)},
	  [_W] = {range = GetCastRange(myHero, 1)},
	  [_E] = {range = GetCastRange(myHero, 2)},
	  [_R] = {range = GetCastRange(myHero, 3)}
	  }

	  self.Dmg = 
	{
	[0] = function(target, source) return getdmg("Q",GetCurrentTarget(), myHero, 3) end,
	[1] = function(target, source) return getdmg("W",GetCurrentTarget(), myHero, 3) end,
	[2] = function(target, source) return getdmg("E",GetCurrentTarget(), myHero, 3) end,
	[3] = function(target, source) return getdmg("R",GetCurrentTarget(), myHero, 3) end
	}

Settings = MenuConfig("RequiredsAhri Version: "..version.."", "Ahri - the Nine-Tailed Fox ")
	
	Settings:SubMenu("combo", "["..myHero.charName.."] - Combo Settings")
		Settings.combo:KeyBinding("comboKey", "Combo Key", 32)
		Settings.combo:DropDown("comboMode", "Combo Mode", 1, { "REQW", "EQW"})
		Settings.combo:DropDown("useR", "Use "..self.SkillR.name.." (R) in Combo", 2, { "To mouse", "Towards enemy", "Don't use"})
		-- Settings.combo:Boolean("comboItems", "Use Items in Combo", true)
	
	Settings:SubMenu("harass", "["..myHero.charName.."] - Harass Settings")
		Settings.harass:KeyBinding("harassKey", "Harass Key", string.byte("C"))
		Settings.harass:Boolean("useQ", "Use "..self.SkillQ.name.." (Q) in Harass", true)
		Settings.harass:Boolean("useW", "Use "..self.SkillW.name.." (W) in Harass", false)
		Settings.harass:Boolean("useE", "Use "..self.SkillE.name.." (E) in Harass", true)
		Settings.harass:Slider("harassMana", "Min. Mana Percent: ", 50, 0, 100)
		
	Settings:SubMenu("ks", "["..myHero.charName.."] - KillSteal Settings")
		Settings.ks:Boolean("killSteal", "Use Smart Kill Steal", true)
		Settings.ks:Boolean("autoIgnite", "Auto Ignite", true)
			
	Settings:SubMenu("drawing", "["..myHero.charName.."] - Draw Settings")	
		Settings.drawing:Boolean("mDraw", "Disable All Range Draws", false)
		Settings.drawing:Boolean("Target", "Draw Circle on Target", true)
		Settings.drawing:Boolean("Text", "Draw Text on Target", true)
		Settings.drawing:Boolean("myHero", "Draw My Range", true)
	
		for i = 0,3 do
    	local str = {[0] = "Q", [1] = "W", [2] = "E", [3] = "R"}
        Settings.drawing:Boolean(str[i], "Draw "..str[i], true)
        Settings.drawing:ColorPick(str[i].."c", "Drawing Color", {255, 25, 155, 175})
        end
	
	Settings:SubMenu("misc", "["..myHero.charName.."] - Misc Settings")
		Settings.misc:DropDown("skinList", "Choose your skin", 6, { "Dynasty Ahri", "Midnight Ahri", "Foxfire Ahri", "Popstar Ahri", "Challenger Ahri" })
		Settings.misc:Boolean("ModelChanger", "Enable Model Changer", false)
		Settings.misc:DropDown("ModelID", "Select Model", 1, {"Baron", "Dragon", "RiftHerald", "Chaos Minion", "Order Minion", "SpiderBoss"})

	Settings:SubMenu("SubReq", "["..myHero.charName.."] - AutoLevel Settings")
        Settings.SubReq:Boolean("LevelUp", "Level Up Skills", true)
        Settings.SubReq:Slider("Start_Level", "Level to enable lvlUP", 1, 1, 17)
        Settings.SubReq:DropDown("autoLvl", "Skill order", 1, {"Q-W-E","Q-W-Q","Q-E-W",})
        Settings.SubReq:Boolean("Humanizer", "Enable Level Up Humanizer", true)

	if heal then
		Settings:SubMenu("heal", "["..myHero.charName.."] - Summoner Heal")
			Settings.heal:Boolean("enable", "Use Heal", true)
			Settings.heal:Slider("health", "If My Health % is Less Than", 10, 0, 100)
	if realheals then
			Settings.heal:Boolean("ally", "Also use on ally", false)
			end
	end

	OnTick(function(myHero) self:Tick() end)
	OnDraw(function(myHero) self:Draw() end)

end

	function Ahri:IsMyManaLow()
		if myHero.mana < (myHero.maxMana * ( Settings.harass.harassMana:Value() / 100)) then
			return true
		else
			return false
		end
	end

	function Ahri:Checks()
		self.SkillQ.ready = (myHero:CanUseSpell(0) == READY)
		self.SkillW.ready = (myHero:CanUseSpell(1) == READY)
		self.SkillE.ready = (myHero:CanUseSpell(2) == READY)
		self.SkillR.ready = (myHero:CanUseSpell(3) == READY)
		
		if GetCastName(myHero, SUMMONER_1):lower():find("summonerdot") then
			Ignite.slot = SUMMONER_1
		elseif GetCastName(myHero, SUMMONER_2):lower():find("summonerdot") then
			Ignite.slot = SUMMONER_2
		end
		
		Ignite.ready = (Ignite.slot ~= nil and myHero:CanUseSpell(Ignite.slot) == READY)
		
	end

	function Ahri:AutoIgnite(unit)
		if ValidTarget(unit, Ignite.range) and unit.health <= 50 + (20 * myHero.level) then
			if Ignite.ready then
				CastTargetSpell(unit, Ignite.slot)
			end
		end
	end

	function Ahri:DmgDrawing()
		local target = GetCurrentTarget()
			if ValidTarget(target, 2000)  then
				if GetCurrentHP(target) <= self.Dmg[0](target, myHero) then
					DrawText("Killable: Q", 16, WorldToScreen(0, GetOrigin(target)).x, WorldToScreen(0, GetOrigin(target)).y, ARGB(255, 10, 255, 10))
				elseif GetCurrentHP(target) <= self.Dmg[0](target, myHero) + self.Dmg[1](target, myHero) then
					DrawText("Killable: Q > W", 16, WorldToScreen(0, GetOrigin(target)).x, WorldToScreen(0, GetOrigin(target)).y, ARGB(255, 10, 255, 10))
				elseif GetCurrentHP(target) <= self.Dmg[2](target, myHero) then
					DrawText("Killable: E", 16, WorldToScreen(0, GetOrigin(target)).x, WorldToScreen(0, GetOrigin(target)).y, ARGB(255, 10, 255, 10))
				elseif GetCurrentHP(target) <= self.Dmg[0](target, myHero) + self.Dmg[2](target, myHero) then
					DrawText("Killable: E > Q", 16, WorldToScreen(0, GetOrigin(target)).x, WorldToScreen(0, GetOrigin(target)).y, ARGB(255, 10, 255, 10))
				elseif GetCurrentHP(target) <= self.Dmg[1](target, myHero) + self.Dmg[2](target, myHero) then
					DrawText("Killable: E > W", 16, WorldToScreen(0, GetOrigin(target)).x, WorldToScreen(0, GetOrigin(target)).y, ARGB(255, 10, 255, 10))
				elseif GetCurrentHP(target) <= self.Dmg[0](target, myHero) + self.Dmg[2](target, myHero) + self.Dmg[1](target, myHero) then
					DrawText("Killable: E > Q > W", 16, WorldToScreen(0, GetOrigin(target)).x, WorldToScreen(0, GetOrigin(target)).y, ARGB(255, 10, 255, 10))
				end
			end
	end

	function Ahri:HealSlot()
		if GetCastName(myHero, SUMMONER_1):lower():find("summonerheal") or GetCastName(myHero, SUMMONER_2):lower():find("summonerheal") then
			realheals = true
		end
		if GetCastName(myHero, SUMMONER_1):lower():find("summonerheal") then
			return SUMMONER_1
		elseif GetCastName(myHero, SUMMONER_2):lower():find("summonerheal")  then
			return SUMMONER_2
		end
	end

	local sAllies = GetAllyHeroes()
	function Ahri:findClosestAlly(obj)
	    local closestAlly = nil
	    local currentAlly = nil
		for i, currentAlly in pairs(sAllies) do
	        if currentAlly and not currentAlly.dead then
	            if closestAlly == nil then
	                closestAlly = currentAlly
				end
	            if GetDistanceSqr(currentAlly.pos, obj) < GetDistanceSqr(closestAlly.pos, obj) then
					closestAlly = currentAlly
	            end
	        end
	    end
		return closestAlly
	end
	heal = Ahri:HealSlot()


	lastSkin = 0
	function Ahri:ChooseSkin()
		if Settings.misc.skinList:Value() ~= lastSkin then
			lastSkin = Settings.misc.skinList:Value()
			HeroSkinChanger(myHero, Settings.misc.skinList:Value())
		end
	end

	function Ahri:ModelChanger()
		if Settings.misc.ModelChanger:Value() then
			if Settings.misc.ModelID:Value() == 1 then
				ModelChanger(myHero, 0, "SRU_Baron")
			elseif Settings.misc.ModelID:Value() == 2 then
				ModelChanger(myHero, 0, "SRU_Dragon")
			elseif Settings.misc.ModelID:Value() == 3 then
				ModelChanger(myHero, 0, "SRU_RiftHerald")
			elseif Settings.misc.ModelID:Value() == 4 then
				ModelChanger(myHero, 0, "SRU_ChaosMinionSiege")
			elseif Settings.misc.ModelID:Value() == 5 then
				ModelChanger(myHero, 0, "SRU_OrderMinionSiege")
			elseif Settings.misc.ModelID:Value() == 6 then
				ModelChanger(myHero, 0, "TT_Spiderboss")
			end
		else ModelChanger(myHero, 0, "Ahri")
		end
	end

	function Ahri:CastQ(unit)
		if unit ~= nil and GetDistance(unit) <= self.SkillQ.range and self.SkillQ.ready then
			local qPredInfo = { width = 100, delay = 0.25, speed = 1700, range = 880 }
			local qPred = GetPrediction(unit, self.qPredInfo)
			if qPred and qPred.hitChance >= 0.25 then
		    	CastSkillShot(0, qPred.castPos)
		    end
		end
	end

	function Ahri:CastW(unit)
		if unit ~= nil and GetDistance(unit) <= self.SkillW.range and self.SkillW.ready then
			local wPredInfo = { delay = 0.01, range = 550 }
			local wPred = GetPrediction(unit, wPredInfo)
			if wPred and wPred.hitChance >= 0.05 then
		    	CastSpell(1)
		    end
		end
	end

	function Ahri:CastE(unit)
		if unit ~= nil and GetDistance(unit) <= self.SkillE.range and self.SkillE.ready then
			local ePredInfo = { width = 60, speed = 1600, range = 975 }
			local ePred = GetPrediction(unit, ePredInfo)
			if ePred and ePred.hitChance >= 0.15 and not ePred:mCollision(1) then
		    	CastSkillShot(2, ePred.castPos)
		    end
		end
	end

	function Ahri:CastR(unit)
		if unit ~= nil and GetDistance(unit) <= self.SkillR.range and self.SkillR.ready then
			local rPredInfo = { delay = 0, speed = math.huge, range = 450+600 }
			local rPred = GetPrediction(unit, rPredInfo)
			if Settings.combo.useR:Value() == 1 then
				if rPred and rPred.hitChance >= 0.20 then
		    		CastSkillShot(3, GetMousePos())
		    	end
		    elseif Settings.combo.useR:Value() == 2 then
		    	if rPred and rPred.hitChance >= 0.20 then
		    		CastSkillShot(3, rPred.castPos)
		    	end
		    elseif Settings.combo.useR:Value() == 3 then return
		    end
		end
	end

	function Ahri:KillSteal()
		local target = GetCurrentTarget()
		for _, target in pairs(GetEnemyHeroes()) do
			if ValidTarget(target, 1000) and target.visible then	
				if GetCurrentHP(GetCurrentTarget()) <= self.Dmg[0](target, myHero) then
					self:CastQ(target)
				elseif GetCurrentHP(GetCurrentTarget()) <= (self.Dmg[0](target, myHero) + self.Dmg[2](target, myHero)) then
					self:CastE(target)
					self:CastQ(target)
				elseif GetCurrentHP(GetCurrentTarget()) <= self.Dmg[2](target, myHero) then
					self:CastE(target)
				end

				if Settings.ks.autoIgnite:Value() then
					self:AutoIgnite(target)
				end
			end
		end
	end

	function Ahri:Harass(unit)
		if ValidTarget(unit, 1000) and unit ~= nil and unit.type == myHero.type and not self:IsMyManaLow() then
			if Settings.harass.useQ:Value() then self:CastQ(unit) end
			if Settings.harass.useE:Value() then self:CastE(unit) end
			if Settings.harass.useW:Value() then self:CastW(unit) end
		end
	end

	function Ahri:Combo(unit)
		if ValidTarget(unit, 1000) and unit ~= nil and unit.type == myHero.type then
			--[[if Settings.combo.comboItems:Value() then
				UseItems(unit)
			end]]
			
			if Settings.combo.comboMode:Value() == 1 then
				if Settings.combo.useR:Value() then self:CastR(unit) end
				self:CastE(unit)
				self:CastQ(unit)
				self:CastW(unit)
			elseif Settings.combo.comboMode:Value() == 2 then
				self:CastE(unit)
				self:CastQ(unit)
				self:CastW(unit)
			end
		
		end
	end

	function Ahri:HealMeHealAlly()
		if heal then
			if ValidTarget(GetCurrentTarget(), 1000) then
				if Settings.heal.enable:Value() and CanUseSpell(myHero, heal) == READY then
					if GetLevel(myHero) > 5 and GetCurrentHP(myHero)/GetMaxHP(myHero) < Settings.heal.health:Value() /100 then
						CastSpell(heal)
					elseif  GetLevel(myHero) < 6 and GetCurrentHP(myHero)/GetMaxHP(myHero) < (Settings.heal.health:Value()/100)*.75 then
						CastSpell(heal)
					end
					
					if realheals and Settings.heal.ally:Value() then
						local ally = Teemo:findClosestAlly(myHero)
						if ally and not ally.dead and GetDistance(ally) < 850 then
							if  GetCurrentHP(ally)/GetMaxHP(ally) < Settings.heal.health:value()/100 then
								CastSpell(heal)
							end
						end
					end
				end
			end
		end
	end

	function Ahri:qReturnAndMove(unit) -- soon
		GetPredictionForPlayer(myHero.pos, unit, GetMoveSpeed(unit), 1700, 0.25, 800, 100, false, true)
	end

	function Ahri:AutoSkillLevelUp()
		if Settings.SubReq.LevelUp:Value() and GetLevelPoints(myHero) >= 1 and GetLevel(myHero) >= Settings.SubReq.Start_Level:Value() then
	        if Settings.SubReq.Humanizer:Value() then
	            DelayAction(function() LevelSpell(self.LevelUpTable[Settings.SubReq.autoLvl:Value()][GetLevel(myHero)-GetLevelPoints(myHero)+1]) end, math.random(0.3286,1.33250))
	        else
	            LevelSpell(self.LevelUpTable[Settings.SubReq.autoLvl:Value()][GetLevel(myHero)-GetLevelPoints(myHero)+1])
	        end
	    end
    end


	function Ahri:Tick()
		if KeyIsDown(32) then 
			self:Combo(GetCurrentTarget())
		end
		if KeyIsDown(string.byte("C")) then 
			self:Harass(GetCurrentTarget()) 
		end
		self:AutoSkillLevelUp()
		self:HealMeHealAlly()
		self:Checks()
		self:AutoIgnite()
		self:KillSteal()
	end

	function Ahri:Draw()
		-- self:DmgDrawing()
		self:ChooseSkin()
		self:ModelChanger()
		if not Settings.drawing.mDraw:Value() then
			for i,s in pairs({"Q","W","E","R"}) do
			    if Settings.drawing[s]:Value() then
			      DrawCircle(myHero.pos, self.SpellRanges[i-1].range, 1, 32, Settings.drawing[s.."c"]:Value())
			    end
			end
		end
	end

class "Pantheon"

-- Variables and constants

	function Pantheon:__init()

	self.SpellQ = { name = "Spear Shot",			range =  600, ready = false, dmg = 0				   }
	self.SpellW = { name = "Aegis of Zeonia",		range =  600, ready = false, dmg = 0				   }
	self.SpellE = { name = "Heartseeker Strike",	range =  600, ready = false, dmg = 0				   }
	self.SpellR = { name = "Grand Skyfall",			range = 5500, ready = false, dmg = 0, delay = 2, radius = 700			   }
	self.SpellI = { name = "SummonerDot",			range =  600, ready = false, dmg = 0,			   	   }
	self.eAoe =   { range = 5500, 					delay = 2, 	  radius = 700}
	self.SpellRanges = 
	  {
	  [_Q] = {range = GetCastRange(myHero, 0)},
	  [_W] = {range = GetCastRange(myHero, 1)},
	  [_E] = {range = GetCastRange(myHero, 2)},
	  [_R] = {range = GetCastRange(myHero, 3)}
	  }

	  self.Dmg = 
	{
	[0] = function(target, source) return getdmg("Q",GetCurrentTarget(), myHero, 3) end,
	[1] = function(target, source) return getdmg("W",GetCurrentTarget(), myHero, 3) end,
	[2] = function(target, source) return getdmg("E",GetCurrentTarget(), myHero, 3) end,
	[3] = function(target, source) return getdmg("R",GetCurrentTarget(), myHero, 3) end
	}

	PanthMenu = MenuConfig("Panth", "Pantheon - The Artisan of War")
	
	PanthMenu:SubMenu("combo", "["..myHero.charName.."] - Combo Settings")
		PanthMenu.combo:KeyBinding("comboKey", "Full Combo Key ", 32)
	
	PanthMenu:SubMenu("harass", "["..myHero.charName.."] - Harass Settings")
		PanthMenu.harass:KeyBinding("harassKey", "Harass key (C)", string.byte("C"))
		PanthMenu.harass:DropDown("hMode", "Harass Mode", 1, { "Q", "W+E" })
		PanthMenu.harass:KeyBinding("autoQ", "Auto-Q when Target in Range", string.byte('Z'))
		PanthMenu.harass:Boolean("aQT", "Don't Auto-Q if in enemy Turret Range", true)
		PanthMenu.harass:Slider("harassMana", "Min. Mana Percent: ", 50, 0, 100)
		
	PanthMenu:SubMenu("ks", "["..myHero.charName.."] - KillSteal Settings")
		PanthMenu.ks:Boolean("killSteal", "Use Smart Kill Steal", true)
		PanthMenu.ks:Boolean("autoIgnite", "Auto Ignite", true)
		PanthMenu.ks:Boolean("AutoREnemy", "Auto Cast R if killable", false)

	PanthMenu:SubMenu("skin", "["..myHero.charName.."] - Skin Settings")
		PanthMenu.skin:Slider("skinList", "Choose your skin", 3, 1, 8)
		PanthMenu.skin:Boolean("ModelChanger", "Enable Model Changer", false)
		PanthMenu.skin:DropDown("ModelID", "Select Model", 1, {"Baron", "Dragon", "RiftHerald", "Chaos Minion", "Order Minion", "SpiderBoss"})

	PanthMenu:SubMenu("drawing", "["..myHero.charName.."] - Draw Settings")	
		if GetGroup() == "VIP" or GetGroup() == "Subscriber" or GetGroup() == "Donator" or GetGroup() == "Local Support" or GetGroup() == "Support" or GetGroup() == "Moderator" or GetGroup() == "Administrators" or GetGroup() == "Admnistrator" then
			PanthMenu.drawing:Boolean("mDraw", "Disable All Range Draws",false)
			for i = 0,3 do
	    	local str = {[0] = "Q", [1] = "W", [2] = "E", [3] = "R"}
	    	PanthMenu.drawing:Boolean("dDraw", "Draw damage over target", true)
	        PanthMenu.drawing:Boolean(str[i], "Draw "..str[i], true)
	        PanthMenu.drawing:ColorPick(str[i].."c", "Drawing Color", {255, 25, 155, 175})
	        end
	    elseif GetGroup() == "Member" or GetGroup() == "Contributor" then
	    	 PanthMenu.drawing:Boolean("NoDraw", "Disable All range Drawings", false)
	    	 PanthMenu.drawing:Boolean("dQ", "Draw Q Range", true)
	    	 PanthMenu.drawing:Boolean("dW", "Draw W Range", true)
	    	 PanthMenu.drawing:Boolean("dE", "Draw E Range", true)
	    	 PanthMenu.drawing:Boolean("dR", "Draw R Range", true)
	    end
	
	PanthMenu:SubMenu("misc", "["..myHero.charName.."] - Misc Settings")
		PanthMenu.misc:SubMenu("ultAlert", "Info - Ultimate Alert")
			PanthMenu.misc.ultAlert:Boolean("Enable", "Enable Ultimate Alert", true)


		OnTick(function(myHero) self:Tick() end)
		OnDraw(function(myHero) self:Draw() end)
		OnUpdateBuff(function(unit, buff) self:OnUpdate(unit, buff) end)
		OnRemoveBuff(function(unit, buff) self:OnRemove(unit, buff) end)
	end


	function Pantheon:DmgCalc()
		local target = GetCurrentTarget()
			if ValidTarget(target, 2000)  then
				if GetCurrentHP(target) <= self.Dmg[0](target, myHero) then
					DrawText("Killable: Q", 16, WorldToScreen(0, GetOrigin(target)).x, WorldToScreen(0, GetOrigin(target)).y, ARGB(255, 10, 255, 10))
				elseif GetCurrentHP(target) <= self.Dmg[0](target, myHero) + self.Dmg[1](target, myHero) then
					DrawText("Killable: Q > W", 16, WorldToScreen(0, GetOrigin(target)).x, WorldToScreen(0, GetOrigin(target)).y, ARGB(255, 10, 255, 10))
				elseif GetCurrentHP(target) <= self.Dmg[2](target, myHero) then
					DrawText("Killable: E", 16, WorldToScreen(0, GetOrigin(target)).x, WorldToScreen(0, GetOrigin(target)).y, ARGB(255, 10, 255, 10))
				elseif GetCurrentHP(target) <= self.Dmg[0](target, myHero) + self.Dmg[2](target, myHero) then
					DrawText("Killable: E > Q", 16, WorldToScreen(0, GetOrigin(target)).x, WorldToScreen(0, GetOrigin(target)).y, ARGB(255, 10, 255, 10))
				elseif GetCurrentHP(target) <= self.Dmg[1](target, myHero) + self.Dmg[2](target, myHero) then
					DrawText("Killable: E > W", 16, WorldToScreen(0, GetOrigin(target)).x, WorldToScreen(0, GetOrigin(target)).y, ARGB(255, 10, 255, 10))
				elseif GetCurrentHP(target) <= self.Dmg[0](target, myHero) + self.Dmg[2](target, myHero) + self.Dmg[1](target, myHero) then
					DrawText("Killable: E > Q > W", 16, WorldToScreen(0, GetOrigin(target)).x, WorldToScreen(0, GetOrigin(target)).y, ARGB(255, 10, 255, 10))
				end
			end
	end

	function Pantheon:DrawDamage()
		LoadGOSScript(Base64Decode("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"))
	end
	lastSkin = 0
	function Pantheon:ChooseSkin()
		if PanthMenu.skin.skinList:Value() ~= lastSkin then
			lastSkin = PanthMenu.skin.skinList:Value()
			HeroSkinChanger(myHero, PanthMenu.skin.skinList:Value())
		end
	end

	function Pantheon:ModelChanger()
		if PanthMenu.skin.ModelChanger:Value() then
			if PanthMenu.skin.ModelID:Value() == 1 then
				ModelChanger(myHero, 0, "SRU_Baron")
			elseif PanthMenu.skin.ModelID:Value() == 2 then
				ModelChanger(myHero, 0, "SRU_Dragon")
			elseif PanthMenu.skin.ModelID:Value() == 3 then
				ModelChanger(myHero, 0, "SRU_RiftHerald")
			elseif PanthMenu.skin.ModelID:Value() == 4 then
				ModelChanger(myHero, 0, "SRU_ChaosMinionSiege")
			elseif PanthMenu.skin.ModelID:Value() == 5 then
				ModelChanger(myHero, 0, "SRU_OrderMinionSiege")
			elseif PanthMenu.skin.ModelID:Value() == 6 then
				ModelChanger(myHero, 0, "TT_Spiderboss")
			end
		else ModelChanger(myHero, 0, "Pantheon")
		end
	end

	function Pantheon:TickChecks()
		-- Checks if Spells Ready
		self.SpellQ.ready = (myHero:CanUseSpell(_Q) == READY)
		self.SpellW.ready = (myHero:CanUseSpell(_W) == READY)
		self.SpellE.ready = (myHero:CanUseSpell(_E) == READY)
		self.SpellR.ready = (myHero:CanUseSpell(_R) == READY)

		self.SpellQ.manaUsage = myHero:GetSpellData(_Q).mana
		self.SpellW.manaUsage = myHero:GetSpellData(_W).mana
		self.SpellE.manaUsage = myHero:GetSpellData(_E).mana
		self.SpellR.manaUsage = myHero:GetSpellData(_R).mana

		if myHero:GetSpellData(SUMMONER_1).name:find(self.SpellI.name) then
			self.SpellI.variable = SUMMONER_1
		elseif myHero:GetSpellData(SUMMONER_2).name:find(self.SpellI.name) then
			self.SpellI.variable = SUMMONER_2
		end

		self.SpellI.ready = (self.SpellI.variable ~= nil and myHero:CanUseSpell(self.SpellI.variable) == READY)

		Target = GetCurrentTarget()
	end

	function Pantheon:isLow(what, unit, slider)
		if what == 'Mana' then
			if unit.mana < (unit.maxMana * (slider / 100)) then
				return true
			else
				return false
			end
		elseif what == 'HP' then
			if unit.health < (unit.maxHealth * (slider / 100)) then
				return true
			else
				return false
			end
		end
	end

	function Pantheon:CastQ(unit)
		if ValidTarget(unit, GetCastRange(myHero, _Q)) and Ready(_Q) then
			CastTargetSpell(unit, 0)
		end
	end

	function Pantheon:CastW(unit)
		if ValidTarget(unit, GetCastRange(myHero, _W)) and Ready(_W) then
			CastTargetSpell(unit, 1)
		end
	end

	function Pantheon:CastE(unit)
		if ValidTarget(unit, GetCastRange(myHero, _E)) and Ready(_E) then
			CastSkillShot(2, unit.pos)
		end
	end

	function Pantheon:OnUpdate(unit, buff)
  		if unit and unit.isMe and buff.Name:lower() == "pantheonesound" then
			BlockF7OrbWalk(true)
			IOW.movementEnabled = false			    
			IOW.attacksEnabled = false
			BlockF7Dodge(true)
		end
	end

	function Pantheon:OnRemove(unit, buff)
  		if unit and unit.isMe and buff.Name:lower() == "pantheonesound" then
			BlockF7OrbWalk(false)
			IOW.movementEnabled = true			    
			IOW.attacksEnabled = true
			BlockF7Dodge(false)	
		end
	end

	function Pantheon:Combo(unit)
		if ValidTarget(unit, 600) then 
			self:CastQ(unit)
			self:CastW(unit)
			self:CastE(unit)
		end
	end

	function Pantheon:Harass(unit)
		if ValidTarget(unit) and unit ~= nil then
			if not self:isLow('Mana', myHero, PanthMenu.harass.harassMana:Value()) then
				--- Harass Mode 1 Q ---
				if PanthMenu.harass.hMode:Value() == 1 then
					self:CastQ(Target)
				end

				--- Harass Mode 2 W+E ---
				if PanthMenu.harass.hMode:Value() == 2 then
					self:CastW(Target)
					if not self.SkillW.ready then self:CastE(Target) end
				end
			end
		end
	end

	function Pantheon:AutoIgnite(unit)
		if unit.health < self.SpellI.dmg and GetDistanceSqr(unit, myHero) <= self.SpellI.range * self.SpellI.range then
			if self.SpellI.ready then
				CastTargetSpell(unit, SpellI.variable)
			end
		end
	end

	function Pantheon:KillSteal()
		for _, enemy in pairs(GetEnemyHeroes()) do
			if enemy ~= nil then
			local targetHP = GetCurrentHP(enemy)
				if targetHP < self.Dmg[0](target, myHero) and self.SpellQ.ready then
					self:CastQ(enemy)
				elseif targetHP < self.Dmg[1](target, myHero) and self.SpellW.ready then
					self:CastW(enemy)
				elseif targetHP < self.Dmg[1](target, myHero) and self.SpellE.ready then
					self:CastE(enemy)
				elseif targetHP < self.Dmg[0](target, myHero) + self.Dmg[1](target, myHero) and self.SpellQ.ready and self.SpellW.ready then
					self:CastW(enemy)
				elseif targetHP < self.Dmg[0](target, myHero) + self.Dmg[1](target, myHero) and self.SpellQ.ready and self.SpellE.ready then
					self:CastQ(enemy)
				elseif targetHP < self.Dmg[1](target, myHero) + self.Dmg[2](target, myHero) and self.SpellW.ready and self.SpellE.ready then
					self:CastW(enemy)
				elseif targetHP < self.Dmg[0](target, myHero) + self.Dmg[1](target, myHero) + self.Dmg[2](target, myHero) then
					self:CastQ(enemy)
				end

				if PanthMenu.ks.autoIgnite:Value() then
					self:AutoIgnite(enemy)
				end
			end
		end
	end

	function Pantheon:UltSteal()
		if GetLevel(myHero) >= 6 then
			for _, enemy in pairs(GetEnemyHeroes()) do
				if enemy ~= nil and not enemy.dead then
				local targetHP = GetCurrentHP(enemy)
					if targetHP < self.Dmg[3](enemy, myHero) and self.SpellR.ready then
						if GetGroup() == "VIP" or GetGroup() == "Subscriber" or GetGroup() == "Donator" or GetGroup() == "Local Support" or GetGroup() == "Support" or GetGroup() == "Moderator" or GetGroup() == "Administrators" or GetGroup() == "Admnistrator" then
							DrawLine(WorldToScreen(0, GetOrigin(myHero)).x,WorldToScreen(0, GetOrigin(myHero)).y,WorldToScreen(0, GetOrigin(enemy)).x,WorldToScreen(0, GetOrigin(enemy)).y, 18, ARGB(255, 10, 255, 10))
							DrawText("" ..enemy.charName.. " killable with R", 54, GetResolution().x/2-100, GetResolution().y/2, ARGB(211, 254, 15, 123))
						else DrawText("Enemy killable with R", 54, GetResolution().x/2-100, GetResolution().y/2, ARGB(211, 254, 15, 123))
						end
					end
				end
			end
		end
	end
	function Pantheon:CastUltSteal()
		if GetLevel(myHero) >= 6 then
			for _, enemy in pairs(GetEnemyHeroes()) do
				if enemy ~= nil and not enemy.dead then
				local targetHP = GetCurrentHP(enemy)
					if targetHP < self.Dmg[3](enemy, myHero) and self.SpellR.ready then
						if PanthMenu.misc.AutoREnemy:Value() then
							local rAOE = GetCircularAOEPrediction(enemy, self.eAoe)
							if ValidTarget(enemy, GetCastRange(myHero, 3)) and Ready(3) and rAOE.hitChance >= 0.10 and rAOE then
								BlockF7OrbWalk(true)
								IOW.movementEnabled = false			    
								IOW.attacksEnabled = false
								BlockF7Dodge(true)
								CastSkillShot(3, rAOE.castPos)
							elseif not Ready(3) then
								BlockF7OrbWalk(false)
								IOW.movementEnabled = true			    
								IOW.attacksEnabled = true
								BlockF7Dodge(false)
							end
						end
					end
				end
			end
		end
	end

	function Pantheon:InEnemyTurretRange(unit)
		for i, turret in pairs(GetTurrets()) do
			if turret ~= nil then
				if turret.team ~= myHero.team then
					if GetDistanceSqr(unit, turret) <= turret.range * turret.range then
						return true
					end
				end
			end
		end
		return false
	end

	function Pantheon:Tick()
		if KeyIsDown(32) then 
			self:Combo(GetCurrentTarget())
		end
		if KeyIsDown(string.byte("C")) then 
			self:Harass(GetCurrentTarget()) 
		end

		if KeyIsDown(string.byte("Z")) then
			if (PanthMenu.harass.aQT:Value() and not self:InEnemyTurretRange(myHero)) or not PanthMenu.harass.aQT:Value() then
				self:CastQ(Target)
			end
		end

		if PanthMenu.ks.killSteal:Value() then
			self:KillSteal() -- auto ignite inside
		end
		
		--[[if PanthMenu.misc.ultAlert.Enable:Value() then
			GetKillable()
		end]]

		self:TickChecks()
		self:CastUltSteal()
	end

	function Pantheon:Draw()
		if GetGroup() == "Member" or GetGroup() == "Contributor" then
			if not PanthMenu.drawing.NoDraw:Value() then
				if PanthMenu.drawing.dQ:Value() then
					DrawCircle(myHero.pos, GetCastRange(myHero, 0), 1, 5, ARGB(255, 68, 219, 121))
				end
				if PanthMenu.drawing.dQ:Value() then
					DrawCircle(myHero.pos, GetCastRange(myHero, 1), 1, 5, ARGB(255, 213, 227, 84))
				end
				if PanthMenu.drawing.dQ:Value() then
					DrawCircle(myHero.pos, GetCastRange(myHero, 2), 1, 5, ARGB(255, 84, 146, 227))
				end
				if PanthMenu.drawing.dQ:Value() then
					DrawCircle(myHero.pos, GetCastRange(myHero, 3), 1, 5, ARGB(255, 227, 115, 84))
				end
			end
		end
		if PanthMenu.misc.ultAlert.Enable:Value() then
			self:UltSteal()
		end
		self:ChooseSkin()
		self:ModelChanger()
		-- self:DrawDamage()
		self:DmgCalc()
		if GetUser() == "Required" or GetGroup() == "VIP" or GetGroup() == "Scripts Developer" or GetGroup() == "Subscriber" or GetGroup() == "Donator" or GetGroup() == "Local Support" or GetGroup() == "Support" or GetGroup() == "Moderator" or GetGroup() == "Administrators" or GetGroup() == "Admnistrator" then
			if not PanthMenu.drawing.mDraw:Value() then
				for i,s in pairs({"Q","W","E","R"}) do
				    if PanthMenu.drawing[s]:Value() then
				      DrawCircle(myHero.pos, self.SpellRanges[i-1].range, 1, 32, PanthMenu.drawing[s.."c"]:Value())
				    end
				end
			end	
		end		
	end



class "Nunu"

-- Variables and constants
	function Nunu:__init()

	local version = "0.1"

	self.SkillQ = {name = "Consume" ,		range = 125, ready = false }
	self.SkillW = {name = "Blood Boil",		range = 700, ready = false }
	self.SkillE = {name = "Ice Blast",		range = 550, ready = false}
	self.SkillR = {name = "Absolute Zero",	range = 650, ready = false }
	self.Ignite = {name = "summonerdot", 	range = 600, slot = nil }


	self.LevelUpTable={
			[1]={_Q,_W,_E,_W,_W,_R,_W,_Q,_W,_Q,_R,_Q,_Q,_W,_E,_R,_E,_E},

			[2]={_Q,_W,_Q,_E,_Q,_R,_Q,_E,_Q,_E,_R,_E,_E,_E,_E,_R,_W,_W},

			[3]={_Q,_E,_W,_Q,_Q,_R,_Q,_E,_Q,_E,_R,_E,_E,_W,_W,_R,_W,_W}
	}

	self.SpellRanges = 
	  {
	  [_Q] = {range = GetCastRange(myHero, 0)},
	  [_W] = {range = GetCastRange(myHero, 1)},
	  [_E] = {range = GetCastRange(myHero, 2)},
	  [_R] = {range = GetCastRange(myHero, 3)}
	  }

	  self.Dmg = 
	{
	[0] = function(target, source) return getdmg("Q",GetCurrentTarget(), myHero, 3) end,
	[2] = function(target, source) return getdmg("E",GetCurrentTarget(), myHero, 3) end,
	[3] = function(target, source) return getdmg("R",GetCurrentTarget(), myHero, 3) end
	}
	Settings = MenuConfig("RequiredsNunu Version: "..version.."", "Nunu - The Lonely Yeti Rider ")
	
	Settings:SubMenu("combo", "["..myHero.charName.."] - Combo Settings")
		Settings.combo:KeyBinding("comboKey", "Combo Key", 32)
		Settings.combo:DropDown("comboMode", "Combo Mode", 1, { "REQW", "EQW"})
		Settings.combo:Boolean("useRen", "Use R in combo 'buggy'", false)
	
	Settings:SubMenu("harass", "["..myHero.charName.."] - Harass Settings")
		Settings.harass:KeyBinding("harassKey", "Harass Key", string.byte("C"))
		Settings.harass:Boolean("useE", "Use "..self.SkillE.name.." (E) in Harass", true)
		Settings.harass:Boolean("UseManaE", "Cast E when costs 0 mana", false)
		Settings.harass:Slider("harassMana", "Min. Mana Percent: ", 50, 0, 100)
		
	Settings:SubMenu("ks", "["..myHero.charName.."] - KillSteal Settings")
		Settings.ks:Boolean("killSteal", "Use Smart Kill Steal", true)
		Settings.ks:Boolean("autoIgnite", "Auto Ignite", true)

	Settings:SubMenu("autoQlogic", "["..myHero.charName.."] - Auto Q - W Settings")
		Settings.autoQlogic:Boolean("yHP", "Enable Auto Q", true)
		Settings.autoQlogic:Slider("aHp", "Auto Q on minion if %HP < than", 30, 2, 100)
		Settings.autoQlogic:Boolean("aaHP", "Enable Auto W on Ally", true)
			
	Settings:SubMenu("drawing", "["..myHero.charName.."] - Draw Settings")	
		Settings.drawing:Boolean("mDraw", "Disable All Range Draws", false)
		Settings.drawing:Boolean("Text", "Draw Text on Target", true)
		Settings.drawing:Boolean("myHero", "Draw My Range", true)
if GetGroup() == "VIP" or GetGroup() == "Subscriber" or GetGroup() == "Donator" or GetGroup() == "Local Support" or GetGroup() == "Support" or GetGroup() == "Moderator" or GetGroup() == "Administrators" or GetGroup() == "Admnistrator" then
		for i = 0,3 do
    	local str = {[0] = "Q", [1] = "W", [2] = "E", [3] = "R"}
        Settings.drawing:Boolean(str[i], "Draw "..str[i], true)
        Settings.drawing:ColorPick(str[i].."c", "Drawing Color", {255, 25, 155, 175})
        end
elseif GetGroup() == "Member" or GetGroup() == "Contributor" then
	    	 Settings.drawing:Boolean("NoDraw", "Disable All range Drawings", false)
	    	 Settings.drawing:Boolean("dQ", "Draw Q Range", true)
	    	 Settings.drawing:Boolean("dW", "Draw W Range", true)
	    	 Settings.drawing:Boolean("dE", "Draw E Range", true)
	    	 Settings.drawing:Boolean("dR", "Draw R Range", true)
	    end

    Settings:SubMenu("AutoSmiteQ", "["..myHero.charName.."] - Auto Smite Settings")
    	Settings.AutoSmiteQ:DropDown("onSmite", "Choose here", 2, {"Auto Smite", "Auto Smite + Q"})
    	Settings.AutoSmiteQ:Boolean("red", "Use on Red Mob", true)
    	Settings.AutoSmiteQ:Boolean("blue", "Use on Blue Mob", true)
    	Settings.AutoSmiteQ:Boolean("baron", "Use on Baron", true)
    	Settings.AutoSmiteQ:Boolean("dragon", "Use on Dragon", true)
    	Settings.AutoSmiteQ:Boolean("herald", "Use on Herald", true)
    	Settings.AutoSmiteQ:Boolean("gromp", "Use on Gromp Mob", true)


    Settings:SubMenu("Items", "["..myHero.charName.."] - Items Settings")
    	Settings.Items:Boolean("Zhonya", "Use Zhonya", true)
    	Settings.Items:Slider("ZhonyaLife", "%HP to cast Zhonya", 10, 2, 100)
	
	Settings:SubMenu("misc", "["..myHero.charName.."] - Misc Settings")
		Settings.misc:Boolean("SkinChanger", "Enable Skin Changer", true)
		Settings.misc:Slider("skinList", "Choose your skin", 7, 1, 8)
		Settings.misc:Boolean("ModelChanger", "Enable Model Changer", false)
		Settings.misc:DropDown("ModelID", "Select Model", 1, {"Baron", "Dragon", "RiftHerald", "Chaos Minion", "Order Minion", "SpiderBoss", "Red", "Blue"})

	Settings:SubMenu("SubReq", "["..myHero.charName.."] - AutoLevel Settings")
        Settings.SubReq:Boolean("LevelUp", "Level Up Skills", true)
        Settings.SubReq:Slider("Start_Level", "Level to enable lvlUP", 1, 1, 17)
        Settings.SubReq:DropDown("autoLvl", "Skill order", 1, {"Q-W-E","Q-W-Q","Q-E-W",})
        Settings.SubReq:Boolean("Humanizer", "Enable Level Up Humanizer", true)

	if heal then
		Settings:SubMenu("heal", "["..myHero.charName.."] - Summoner Heal")
			Settings.heal:Boolean("enable", "Use Heal", true)
			Settings.heal:Slider("health", "If My Health % is Less Than", 10, 0, 100)
		if realheals then
			Settings.heal:Boolean("ally", "Also use on ally", false)
		end
	end

	OnTick(function(myHero) self:Tick() end)
	OnDraw(function(myHero) self:Draw() end)
	OnUpdateBuff(function(unit, buff) self:OnUpdate(unit, buff) end)
	OnRemoveBuff(function(unit, buff) self:OnRemove(unit, buff) end)
	OnProcessSpell(function(unit,buff) self:OnProcessSpell(unit, spell) end)

end

	function Nunu:IsMyManaLow()
		if myHero.mana < (myHero.maxMana * ( Settings.harass.harassMana:Value() / 100)) then
			return true
		else
			return false
		end
	end

	function Nunu:Checks()
		self.SkillQ.ready = (myHero:CanUseSpell(0) == READY)
		self.SkillW.ready = (myHero:CanUseSpell(1) == READY)
		self.SkillE.ready = (myHero:CanUseSpell(2) == READY)
		self.SkillR.ready = (myHero:CanUseSpell(3) == READY)
		
		if GetCastName(myHero, SUMMONER_1):lower():find("summonerdot") then
			self.Ignite.slot = SUMMONER_1
		elseif GetCastName(myHero, SUMMONER_2):lower():find("summonerdot") then
			self.Ignite.slot = SUMMONER_2
		end
		
		self.Ignite.ready = (self.Ignite.slot ~= nil and myHero:CanUseSpell(self.Ignite.slot) == READY)
		
	end

	function Nunu:AutoIgnite(unit)
		if ValidTarget(unit, self.Ignite.range) and unit.health <= 50 + (20 * myHero.level) then
			if self.Ignite.ready then
				CastTargetSpell(unit, self.Ignite.slot)
			end
		end
	end

	function Nunu:DmgDrawing()
		local target = GetCurrentTarget()
			if ValidTarget(target, 2000)  then
				if GetCurrentHP(target) <= self.Dmg[2](target, myHero) then
					DrawText("Killable: E", 16, WorldToScreen(0, GetOrigin(target)).x, WorldToScreen(0, GetOrigin(target)).y, ARGB(255, 10, 255, 10))
				end
			end
	end

	function Nunu:HealSlot()
		if GetCastName(myHero, SUMMONER_1):lower():find("summonerheal") or GetCastName(myHero, SUMMONER_2):lower():find("summonerheal") then
			realheals = true
		end
		if GetCastName(myHero, SUMMONER_1):lower():find("summonerheal") then
			return SUMMONER_1
		elseif GetCastName(myHero, SUMMONER_2):lower():find("summonerheal")  then
			return SUMMONER_2
		end
	end

	local sAllies = GetAllyHeroes()
	function Nunu:findClosestAlly(obj)
	    local closestAlly = nil
	    local currentAlly = nil
		for i, currentAlly in pairs(sAllies) do
	        if currentAlly and not currentAlly.dead then
	            if closestAlly == nil then
	                closestAlly = currentAlly
				end
	            if GetDistanceSqr(currentAlly.pos, obj) < GetDistanceSqr(closestAlly.pos, obj) then
					closestAlly = currentAlly
	            end
	        end
	    end
		return closestAlly
	end
	heal = Nunu:HealSlot()


	lastSkin = 0
	function Nunu:ChooseSkin()
		if Settings.misc.skinList:Value() ~= lastSkin then
			lastSkin = Settings.misc.skinList:Value()
			HeroSkinChanger(myHero, Settings.misc.skinList:Value())
		end
	end

	function Nunu:MinionCheck()
		for i,minion in pairs(minionManager.objects) do
				if GetTeam(minion) ~= myHero.team and IsObjectAlive(minion) then
					if GetObjectName(minion) == "SRU_Dragon" then
						dragon = minion
					end
					if GetObjectName(minion) == "SRU_Red" then
						red = minion
					end
					if GetObjectName(minion) == "SRU_Blue"then
						blue = minion
					end
					if GetObjectName(minion) == "SRU_RiftHerald" then
						herald = minion
					end
					if GetObjectName(minion) == "SRU_Baron" then
						baron = minion
					end
					if GetObjectName(minion) == "SRU_OrderMinionMelee" then
						OMM = minion
					end
					if GetObjectName(minion) == "SRU_OrderMinionRanged" then
						OMR = minion
					end
					if GetObjectName(minion) == "SRU_OrderMinionSiege" then
						OMS = minion
					end
					if GetObjectName(minion) == "SRU_Gromp" then
						Gromp = minion
					end
					if GetObjectName(minion) == "SRU_ChaosMinionSiege" then
						CMS = minion
					end
					if GetObjectName(minion) == "SRU_ChaosMinionMelee" then
						CMM = minion
					end
					if GetObjectName(minion) == "SRU_ChaosMinionRanged" then
						CMR = minion
					end
				end
		end
	end

	function Nunu:CastQ(unit)
		self:MinionCheck() 
		if unit ~= nil and GetDistance(unit) <= self.SkillQ.range and self.SkillQ.ready then
			if Settings.autoQlogic.yHP:Value() then
				if GetCurrentHP(myHero) < Settings.autoQlogic.aHp:Value()/100 then
					CastTargetSpell(unit, 0)
				end
			end
		end
	end

	function Nunu:CastW()
		if GetDistance(GetCurrentTarget()) <= self.SkillW.range and self.SkillW.ready then
			if Settings.autoQlogic.aaHP:Value() then
				local ally = Nunu:findClosestAlly(myHero)
				if ally and not ally.dead and GetDistance(ally) < 700 then
					CastTargetSpell(ally, 1)
				end
			elseif ValidTarget(unit, 700) then
				if KeyIsDown(32) then 
					CastTargetSpell(myHero, 1)
				elseif KeyIsDown(string.byte("C")) then 
					CastTargetSpell(myHero, 1)
				end
			end
		end
	end

	function Nunu:CastE(unit)
		if unit ~= nil and GetDistance(unit) <= self.SkillE.range and self.SkillE.ready then
			if ValidTarget(unit, 550) and Ready(2) then
				CastTargetSpell(unit, 2)
			end
		end
	end

	function Nunu:CastR(unit)
		if unit ~= nil and GetDistance(unit) <= self.SkillR.range and self.SkillR.ready then
			if ValidTarget(unit, 650) and Ready(3) then
				CastSkillShot(3, unit.pos)
				BlockF7OrbWalk(true)
				IOW.movementEnabled = false			    
				IOW.attacksEnabled = false
				BlockF7Dodge(true)
				CastSpell(3)
			elseif not Ready(3) then
				BlockF7OrbWalk(false)
				IOW.movementEnabled = true			    
				IOW.attacksEnabled = true
				BlockF7Dodge(false)
			end
		end
	end

	function Nunu:KillSteal()
		for _, target in pairs(GetEnemyHeroes()) do
			if ValidTarget(target, 550) and target.visible then	
				if GetCurrentHP(GetCurrentTarget()) <= self.Dmg[0](target, myHero) then
					self:CastQ(target)
				end
				if Settings.ks.autoIgnite:Value() then
					self:AutoIgnite(target)
				end
			end
		end
	end

	function Nunu:Harass(unit)
		if ValidTarget(unit, 500) and unit ~= nil and unit.type == myHero.type and not self:IsMyManaLow() then
			if Settings.harass.useE:Value() then 
				self:CastE(unit) 
			end
			if Settings.harass.UseManaE:Value() then 
				if GotIt == 1 then 
					self:CastE(unit)
				end
			end
		end
	end

	function Nunu:HealMeHealAlly()
		if heal then
			if ValidTarget(GetCurrentTarget(), 1000) then
				if Settings.heal.enable:Value() and CanUseSpell(myHero, heal) == READY then
					if GetLevel(myHero) > 5 and GetCurrentHP(myHero)/GetMaxHP(myHero) < Settings.heal.health:Value() /100 then
						CastSpell(heal)
					elseif  GetLevel(myHero) < 6 and GetCurrentHP(myHero)/GetMaxHP(myHero) < (Settings.heal.health:Value()/100)*.75 then
						CastSpell(heal)
					end
					
					if realheals and Settings.heal.ally:Value() then
						local ally = Teemo:findClosestAlly(myHero)
						if ally and not ally.dead and GetDistance(ally) < 850 then
							if  GetCurrentHP(ally)/GetMaxHP(ally) < Settings.heal.health:value()/100 then
								CastSpell(heal)
							end
						end
					end
				end
			end
		end
	end

	function Nunu:CastZhonya()
	local GotItem = GetItemSlot(myHero, 3157)
		if GotItem > 0 and CanUseSpell(myHero, GotItem) == READY then
			CastSpell(GotItem) 
			return true
		end
	end

	function Nunu:Zhonya()	
		local lifeLifeMax = GetCurrentHP(myHero)/GetMaxHP(myHero)
		if lifeLifeMax < Settings.Items.ZhonyaLife:Value()/100 then
			self:CastZhonya()
		end
	end

	function Nunu:AutoSkillLevelUp()
		if Settings.SubReq.LevelUp:Value() and GetLevelPoints(myHero) >= 1 and GetLevel(myHero) >= Settings.SubReq.Start_Level:Value() then
	        if Settings.SubReq.Humanizer:Value() then
	            DelayAction(function() LevelSpell(self.LevelUpTable[Settings.SubReq.autoLvl:Value()][GetLevel(myHero)-GetLevelPoints(myHero)+1]) end, math.random(0.3286,1.33250))
	        else
	            LevelSpell(self.LevelUpTable[Settings.SubReq.autoLvl:Value()][GetLevel(myHero)-GetLevelPoints(myHero)+1])
	        end
	    end
    end

    function Nunu:AutoSmiteAndOrQ() -- noddy auto smite
    	if GetCastName(myHero,SUMMONER_1):lower():find("summonersmite") then
			useSmite = SUMMONER_1
		elseif GetCastName(myHero,SUMMONER_2):lower():find("summonersmite") then
			useSmite = SUMMONER_2
		else return

		end
		local Ticker = GetTickCount()
		local global_ticks = 0

		if Settings.AutoSmiteQ.onSmite:Value() then
			if (global_ticks + 250) < Ticker then
				if smiteON == true then
					smiteON = false
				elseif smiteON == false then
					smiteON = true
				end
			global_ticks = Ticker
			end
		end

		local smiteON = true
		SmiteCalc = (({[1]=390,[2]=410,[3]=430,[4]=450,[5]=480,[6]=510,[7]=540,[8]=570,[9]=600,[10]=640,[11]=680,[12]=720,[13]=760,[14]=800,[15]=850,[16]=900,[17]=950,[18]=1000})[GetLevel(myHero)])
		
		if smiteON == true then
			if CanUseSpell(myHero,SmiteCalc) == READY then
					if dragon ~= nil and GetObjectName(dragon) == "SRU_Dragon" and ValidTarget(dragon, 750) and Settings.AutoSmiteQ.dragon:Value() then
						if Settings.AutoSmiteQ.onSmite:Value() == 1 then	
							if GetCurrentHP(dragon) <= SmiteCalc then
								CastTargetSpell(dragon,useSmite)
							end
						elseif Settings.AutoSmiteQ.onSmite:Value() == 2 then
							if GetCurrentHP(dragon) <= (SmiteCalc + self.Dmg[0]) then
								CastTargetSpell(dragon,useSmite)
								CastTargetSpell(dragon,0)
							end
						end
					end
					if herald ~= nil and GetObjectName(herald) == "SRU_RiftHerald" and ValidTarget(herald, 750) and Settings.AutoSmiteQ.herald:Value() then
						if Settings.AutoSmiteQ.onSmite:Value() == 1 then	
							if GetCurrentHP(herald) <= SmiteCalc then
								CastTargetSpell(herald,useSmite)
							end
						elseif Settings.AutoSmiteQ.onSmite:Value() == 2 then
							if GetCurrentHP(herald) <= (SmiteCalc + self.Dmg[0]) then
								CastTargetSpell(herald,useSmite)
								CastTargetSpell(herald,0)
							end
						end
					end
					if red ~= nil and GetObjectName(red) == "SRU_Red" and ValidTarget(red, 750) and Settings.AutoSmiteQ.red:Value() then
						if Settings.AutoSmiteQ.onSmite:Value() == 1 then	
							if GetCurrentHP(red) <= SmiteCalc then
								CastTargetSpell(red,useSmite)
							end
						elseif Settings.AutoSmiteQ.onSmite:Value() == 2 then
							if GetCurrentHP(red) <= (SmiteCalc + self.Dmg[0]) then
								CastTargetSpell(red,useSmite)
								CastTargetSpell(red,0)
							end
						end
					end
					if blue ~= nil and GetObjectName(blue) == "SRU_Blue" and ValidTarget(blue, 750) and Settings.AutoSmiteQ.blue:Value() then
						if Settings.AutoSmiteQ.onSmite:Value() == 1 then	
							if GetCurrentHP(blue) <= SmiteCalc then
								CastTargetSpell(blue,useSmite)
							end
						elseif Settings.AutoSmiteQ.onSmite:Value() == 2 then
							if GetCurrentHP(blue) <= (SmiteCalc + self.Dmg[0]) then
								CastTargetSpell(blue,useSmite)
								CastTargetSpell(blue,0)
							end
						end
					end
					if baron ~= nil and GetObjectName(baron) == "SRU_Baron" and ValidTarget(baron, 750) and Settings.AutoSmiteQ.baron:Value() then
						if Settings.AutoSmiteQ.onSmite:Value() == 1 then	
							if GetCurrentHP(baron) <= SmiteCalc then
								CastTargetSpell(baron,useSmite)
							end
						elseif Settings.AutoSmiteQ.onSmite:Value() == 2 then
							if GetCurrentHP(baron) <= (SmiteCalc + self.Dmg[0]) then
								CastTargetSpell(baron,useSmite)
								CastTargetSpell(baron,0)
							end
						end
					end
					if Gromp ~= nil and GetObjectName(Gromp) == "SRU_Gromp" and ValidTarget(Gromp, 750) and Settings.AutoSmiteQ.gromp:Value() then
						if Settings.AutoSmiteQ.onSmite:Value() == 1 then	
							if GetCurrentHP(Gromp) <= SmiteCalc then
								CastTargetSpell(Gromp,useSmite)
							end
						elseif Settings.AutoSmiteQ.onSmite:Value() == 2 then
							if GetCurrentHP(Gromp) <= (SmiteCalc + self.Dmg[0]) then
								CastTargetSpell(Gromp,useSmite)
								CastTargetSpell(Gromp,0)
							end
						end
					end
			end
		end
	end

	lastSkin = 0
	function Nunu:ChooseSkin()
		if Settings.misc.SkinChanger:Value() then
			if Settings.misc.skinList:Value() ~= lastSkin then
				lastSkin = Settings.misc.skinList:Value()
				HeroSkinChanger(myHero, Settings.misc.skinList:Value())
			end
		else HeroSkinChanger(myHero, 0)
		end
	end

	function Nunu:ModelChanger()
		if Settings.misc.ModelChanger:Value() then
			if Settings.misc.ModelID:Value() == 1 then
				ModelChanger(myHero, 0, "SRU_Baron")
			elseif Settings.misc.ModelID:Value() == 2 then
				ModelChanger(myHero, 0, "SRU_Dragon")
			elseif Settings.misc.ModelID:Value() == 3 then
				ModelChanger(myHero, 0, "SRU_RiftHerald")
			elseif Settings.misc.ModelID:Value() == 4 then
				ModelChanger(myHero, 0, "SRU_ChaosMinionSiege")
			elseif Settings.misc.ModelID:Value() == 5 then
				ModelChanger(myHero, 0, "SRU_OrderMinionSiege")
			elseif Settings.misc.ModelID:Value() == 6 then
				ModelChanger(myHero, 0, "TT_Spiderboss")
			elseif Settings.misc.ModelID:Value() == 7 then
				ModelChanger(myHero, 0, "SRU_Red")
			elseif Settings.misc.ModelID:Value() == 8 then
				ModelChanger(myHero, 0, "Sru_Duckie")
			end
		else ModelChanger(myHero, 0, "Nunu")
		end
		for i,minion in pairs(minionManager.objects) do
				if GetTeam(minion) ~= myHero.team then
					if GetObjectName(minion) == "SRU_ChaosMinionRanged" then
						mcm = minion
						ModelChanger(mcm, 0, "SRU_Blue")
					end
				end		
		end
	end


	function Nunu:Combo(unit)
		if ValidTarget(unit, 700) and unit ~= nil and unit.type == myHero.type then
			self:CastE(unit)
			self:CastW()
			if Settings.combo.useRen:Value() then
				self:CastR(unit)
			end
		end
		-- body
	end

	function Nunu:OnUpdate(unit, buff)
  		if unit and unit.isMe and buff.Name:lower() == "absolutezero" then
			BlockF7OrbWalk(true)
			IOW.movementEnabled = false			    
			IOW.attacksEnabled = false
			BlockF7Dodge(true)
		elseif unit and unit.isMe and buff.Name:lower() == "visionary" then
			gotIt = 1
			else gotIt = 0
		end
	end

	function Nunu:OnRemove(unit, buff)
  		if unit and unit.isMe and buff.Name:lower() == "absolutezero" then
			BlockF7OrbWalk(false)
			IOW.movementEnabled = true			    
			IOW.attacksEnabled = true
			BlockF7Dodge(false)	
		end
	end

	function Nunu:OnProcessSpell(unit, spell)
		if unit and spell and unit.isMe and spell.Name:lower() == self.SkillR.name then
			if GotBuff(myHero, "AbsoluteZero") then
				BlockF7OrbWalk(false)
				IOW.movementEnabled = true			    
				IOW.attacksEnabled = true
				BlockF7Dodge(false)
			end
		end
	end

    function Nunu:Tick()
		if Settings.Items.Zhonya:Value() and EnemiesAround(myHero, 2000) >= 1 then
			self:Zhonya()
		end
		if KeyIsDown(32) then 
			self:Combo(GetCurrentTarget())
		end
		if KeyIsDown(string.byte("C")) then 
			self:Harass(GetCurrentTarget()) 
		end
		self:AutoSkillLevelUp()
		self:HealMeHealAlly()
		self:Checks()
		self:AutoIgnite()
		self:KillSteal()
		self:AutoSmiteAndOrQ()
	end

	function Nunu:Draw()
		if GetGroup() == "Member" or GetGroup() == "Contributor" then
			if not Settings.drawing.NoDraw:Value() then
				if Settings.drawing.dQ:Value() then
					DrawCircle(myHero.pos, GetCastRange(myHero, 0), 1, 5, ARGB(255, 68, 219, 121))
				end
				if Settings.drawing.dQ:Value() then
					DrawCircle(myHero.pos, GetCastRange(myHero, 1), 1, 5, ARGB(255, 213, 227, 84))
				end
				if Settings.drawing.dQ:Value() then
					DrawCircle(myHero.pos, GetCastRange(myHero, 2), 1, 5, ARGB(255, 84, 146, 227))
				end
				if Settings.drawing.dQ:Value() then
					DrawCircle(myHero.pos, GetCastRange(myHero, 3), 1, 5, ARGB(255, 227, 115, 84))
				end
			end
		end
		self:ChooseSkin()
		-- self:DmgDrawing()
		self:ModelChanger()
		if GetUser() == "Zeyx" or GetGroup() == "VIP" or GetGroup() == "Scripts Developer" or GetGroup() == "Subscriber" or GetGroup() == "Donator" or GetGroup() == "Local Support" or GetGroup() == "Support" or GetGroup() == "Moderator" or GetGroup() == "Administrators" or GetGroup() == "Admnistrator" then
			if not Settings.drawing.mDraw:Value() then
				for i,s in pairs({"Q","W","E","R"}) do
				    if Settings.drawing[s]:Value() then
				      DrawCircle(myHero.pos, self.SpellRanges[i-1].range, 2, 100, Settings.drawing[s.."c"]:Value())
				    end
				end
			end
		end
	end

class "Warwick"

	function Warwick:__init()

	local version = "0.1"

	self.SkillQ = { name = "Hungering Strike", range = 400, ready = false }
	self.SkillW = { name = "Hunters Call", range = 1250, ready = false }
	self.SkillE = { name = "Blood Scent", ready = false }
	self.SkillR = { name = "Infinite", range = 700, ready = false }
	self.Ignite = { name = "summonerdot", range = 600, slot = nil }


	self.LevelUpTable={
			[1]={_Q,_E,_W,_W,_W,_R,_W,_Q,_W,_Q,_R,_Q,_Q,_W,_E,_R,_E,_E},

			[2]={_Q,_W,_Q,_E,_Q,_R,_Q,_E,_Q,_E,_R,_E,_E,_E,_E,_R,_W,_W},

			[3]={_Q,_E,_W,_Q,_Q,_R,_Q,_E,_Q,_E,_R,_E,_E,_W,_W,_R,_W,_W}
	}

	self.SpellRanges = 
	  {
	  [_Q] = {range = GetCastRange(myHero, 0)},
	  [_W] = {range = GetCastRange(myHero, 1)},
	  [_E] = {range = GetCastRange(myHero, 2)},
	  [_R] = {range = GetCastRange(myHero, 3)}
	  }

	  self.Dmg = 
	{
	[0] = function(target, source) return getdmg("Q",GetCurrentTarget(), myHero, 3) end,
	[3] = function(target, source) return getdmg("R",GetCurrentTarget(), myHero, 3) end
	}

Settings = MenuConfig("RequiredsWarwick Version: "..version.."", "Warwick - The Hungry Wolf ")
	
	Settings:SubMenu("combo", "["..myHero.charName.."] - Combo Settings")
		Settings.combo:KeyBinding("comboKey", "Combo Key", 32)
		Settings.combo:DropDown("comboMode", "Combo Mode", 1, { "RWQ", "RQ"})
		-- Settings.combo:Boolean("comboItems", "Use Items in Combo", true)
	
	Settings:SubMenu("harass", "["..myHero.charName.."] - Harass Settings")
		Settings.harass:KeyBinding("harassKey", "Harass Key", string.byte("C"))
		Settings.harass:Boolean("useQ", "Use "..self.SkillQ.name.." (Q) in Harass", true)
		Settings.harass:Slider("harassMana", "Min. Mana Percent: ", 50, 0, 100)
		
	Settings:SubMenu("ks", "["..myHero.charName.."] - KillSteal Settings")
		Settings.ks:Boolean("rKillsteal", "Use R to killSteal", false)
		Settings.ks:Boolean("killSteal", "Use Smart Kill Steal", true)
		Settings.ks:Boolean("autoIgnite", "Auto Ignite", true)

	Settings:SubMenu("Items", "["..myHero.charName.."] - Items Settings")
    	Settings.Items:Boolean("Zhonya", "Use Zhonya", true)
    	Settings.Items:Slider("ZhonyaLife", "%HP to cast Zhonya", 10, 2, 100)
			
	Settings:SubMenu("drawing", "["..myHero.charName.."] - Draw Settings")	
		Settings.drawing:Boolean("mDraw", "Disable All Range Draws", false)
		Settings.drawing:Boolean("Text", "Draw Text on Target", true)
		Settings.drawing:Boolean("myHero", "Draw My Range", true)
	
		for i = 0,3 do
    	local str = {[0] = "Q", [1] = "W", [2] = "E", [3] = "R"}
        Settings.drawing:Boolean(str[i], "Draw "..str[i], true)
        Settings.drawing:ColorPick(str[i].."c", "Drawing Color", {255, 25, 155, 175})
        end
	
	Settings:SubMenu("misc", "["..myHero.charName.."] - Misc Settings")
		Settings.misc:Slider("skinList", "Choose your skin", 4, 1, 6)
		Settings.misc:Boolean("ModelChanger", "Enable Model Changer", false)
		Settings.misc:DropDown("ModelID", "Select Model", 1, {"Baron", "Dragon", "RiftHerald", "Chaos Minion", "Order Minion", "SpiderBoss"})

	Settings:SubMenu("SubReq", "["..myHero.charName.."] - AutoLevel Settings")
        Settings.SubReq:Boolean("LevelUp", "Level Up Skills", true)
        Settings.SubReq:Slider("Start_Level", "Level to enable lvlUP", 1, 1, 17)
        Settings.SubReq:DropDown("autoLvl", "Skill order", 1, {"Q-W-E","Q-W-Q","Q-E-W",})
        Settings.SubReq:Boolean("Humanizer", "Enable Level Up Humanizer", true)

	if heal then
		Settings:SubMenu("heal", "["..myHero.charName.."] - Summoner Heal")
			Settings.heal:Boolean("enable", "Use Heal", true)
			Settings.heal:Slider("health", "If My Health % is Less Than", 10, 0, 100)
	if realheals then
			Settings.heal:Boolean("ally", "Also use on ally", false)
			end
	end

	OnTick(function(myHero) self:Tick() end)
	OnDraw(function(myHero) self:Draw() end)

end

	function Warwick:IsMyManaLow()
		if myHero.mana < (myHero.maxMana * ( Settings.harass.harassMana:Value() / 100)) then
			return true
		else
			return false
		end
	end

	function Warwick:Checks()
		self.SkillQ.ready = (myHero:CanUseSpell(0) == READY)
		self.SkillW.ready = (myHero:CanUseSpell(1) == READY)
		self.SkillE.ready = (myHero:CanUseSpell(2) == READY)
		self.SkillR.ready = (myHero:CanUseSpell(3) == READY)
		
		if GetCastName(myHero, SUMMONER_1):lower():find("summonerdot") then
			Ignite.slot = SUMMONER_1
		elseif GetCastName(myHero, SUMMONER_2):lower():find("summonerdot") then
			Ignite.slot = SUMMONER_2
		end
		
		Ignite.ready = (Ignite.slot ~= nil and myHero:CanUseSpell(Ignite.slot) == READY)
		
	end

	function Warwick:AutoIgnite(unit)
		if ValidTarget(unit, Ignite.range) and unit.health <= 50 + (20 * myHero.level) then
			if Ignite.ready then
				CastTargetSpell(unit, Ignite.slot)
			end
		end
	end

	function Warwick:DmgDrawing()
		local target = GetCurrentTarget()
			if ValidTarget(target, 2000)  then
				if GetCurrentHP(target) <= self.Dmg[0](target, myHero) then
					DrawText("Killable: Q", 16, WorldToScreen(0, GetOrigin(target)).x, WorldToScreen(0, GetOrigin(target)).y, ARGB(255, 10, 255, 10))
				end
			end
	end

	function Warwick:HealSlot()
		if GetCastName(myHero, SUMMONER_1):lower():find("summonerheal") or GetCastName(myHero, SUMMONER_2):lower():find("summonerheal") then
			realheals = true
		end
		if GetCastName(myHero, SUMMONER_1):lower():find("summonerheal") then
			return SUMMONER_1
		elseif GetCastName(myHero, SUMMONER_2):lower():find("summonerheal")  then
			return SUMMONER_2
		end
	end

	local sAllies = GetAllyHeroes()
	function Warwick:findClosestAlly(obj)
	    local closestAlly = nil
	    local currentAlly = nil
		for i, currentAlly in pairs(sAllies) do
	        if currentAlly and not currentAlly.dead then
	            if closestAlly == nil then
	                closestAlly = currentAlly
				end
	            if GetDistanceSqr(currentAlly.pos, obj) < GetDistanceSqr(closestAlly.pos, obj) then
					closestAlly = currentAlly
	            end
	        end
	    end
		return closestAlly
	end
	heal = Warwick:HealSlot()


	lastSkin = 0
	function Warwick:ChooseSkin()
		if Settings.misc.skinList:Value() ~= lastSkin then
			lastSkin = Settings.misc.skinList:Value()
			HeroSkinChanger(myHero, Settings.misc.skinList:Value())
		end
	end

	function Warwick:ModelChanger()
		if Settings.misc.ModelChanger:Value() then
			if Settings.misc.ModelID:Value() == 1 then
				ModelChanger(myHero, 0, "SRU_Baron")
			elseif Settings.misc.ModelID:Value() == 2 then
				ModelChanger(myHero, 0, "SRU_Dragon")
			elseif Settings.misc.ModelID:Value() == 3 then
				ModelChanger(myHero, 0, "SRU_RiftHerald")
			elseif Settings.misc.ModelID:Value() == 4 then
				ModelChanger(myHero, 0, "SRU_ChaosMinionSiege")
			elseif Settings.misc.ModelID:Value() == 5 then
				ModelChanger(myHero, 0, "SRU_OrderMinionSiege")
			elseif Settings.misc.ModelID:Value() == 6 then
				ModelChanger(myHero, 0, "TT_Spiderboss")
			end
		else ModelChanger(myHero, 0, "Warwick")
		end
	end

	function Warwick:CastQ(unit)
		if unit ~= nil and GetDistance(unit) <= self.SkillQ.range and self.SkillQ.ready then
			if ValidTarget(unit, self.SpellRanges[_Q]) and Ready(0) then
		    	CastTargetSpell(unit, 0)
		    end
		end
	end

	function Warwick:CastW(unit)
		if Settings.combo.comboMode:Value() == 1 then
			if unit ~= nil and GetDistance(unit) <= self.SkillW.range and self.SkillW.ready then
				if ValidTarget(unit, self.SpellRanges[_Q]) and Ready(0) then
					CastSpell(1)
				end
			end
		end
	end

	function Warwick:CastR(unit)
		if unit ~= nil and GetDistance(unit) <= self.SkillR.range and self.SkillR.ready then
			if ValidTarget(unit, self.SpellRanges[_R]) and Ready(3) then
				CastTargetSpell(unit, 3)
		    end
		end
	end

	function Warwick:KillSteal()
		local target = GetCurrentTarget()
		for _, target in pairs(GetEnemyHeroes()) do
			if ValidTarget(target, 1000) and target.visible then	
				if GetCurrentHP(GetCurrentTarget()) <= self.Dmg[0](target, myHero) then
					self:CastQ(target)
				elseif GetCurrentHP(GetCurrentTarget()) <= self.Dmg[3](target, myHero) then
					self:CastR(target)
				elseif GetCurrentHP(GetCurrentTarget()) <= (self.Dmg[3](target, myHero) + self.Dmg[0](target, myHero)) then
					self:CastQ(target)
					self:CastR(target)
				end
				if Settings.ks.autoIgnite:Value() then
					self:AutoIgnite(target)
				end
			end
		end
	end

	function Warwick:Harass(unit)
		if ValidTarget(unit, 1000) and unit ~= nil and unit.type == myHero.type and not self:IsMyManaLow() then
			if Settings.harass.useQ:Value() then 
				self:CastQ(unit)
			end
		end
	end

	function Warwick:Combo(unit)
		if ValidTarget(unit, 1000) and unit ~= nil and unit.type == myHero.type then
			--[[if Settings.combo.comboItems:Value() then
				UseItems(unit)
			end]]
			
			if Settings.combo.comboMode:Value() == 1 then
				self:CastR(unit) 
				self:CastQ(unit)
				self:CastW(unit)
			elseif Settings.combo.comboMode:Value() == 2 then
				self:CastQ(unit)
				self:CastR(unit)
			end
		
		end
	end

	function Warwick:HealMeHealAlly()
		if heal then
			if ValidTarget(GetCurrentTarget(), 1000) then
				if Settings.heal.enable:Value() and CanUseSpell(myHero, heal) == READY then
					if GetLevel(myHero) > 5 and GetCurrentHP(myHero)/GetMaxHP(myHero) < Settings.heal.health:Value() /100 then
						CastSpell(heal)
					elseif  GetLevel(myHero) < 6 and GetCurrentHP(myHero)/GetMaxHP(myHero) < (Settings.heal.health:Value()/100)*.75 then
						CastSpell(heal)
					end
					
					if realheals and Settings.heal.ally:Value() then
						local ally = Teemo:findClosestAlly(myHero)
						if ally and not ally.dead and GetDistance(ally) < 850 then
							if  GetCurrentHP(ally)/GetMaxHP(ally) < Settings.heal.health:value()/100 then
								CastSpell(heal)
							end
						end
					end
				end
			end
		end
	end
	-- if someone is doing ww ap :/
	function Warwick:CastZhonya()
	local GotItem = GetItemSlot(myHero, 3157)
		if GotItem > 0 and CanUseSpell(myHero, GotItem) == READY then
			CastSpell(GotItem) 
			return true
		end
	end

	function Warwick:Zhonya()	
		local lifeLifeMax = GetCurrentHP(myHero)/GetMaxHP(myHero)
		if lifeLifeMax < Settings.Items.ZhonyaLife:Value()/100 then
			self:CastZhonya()
		end
	end


	function Warwick:AutoSkillLevelUp()
		if Settings.SubReq.LevelUp:Value() and GetLevelPoints(myHero) >= 1 and GetLevel(myHero) >= Settings.SubReq.Start_Level:Value() then
	        if Settings.SubReq.Humanizer:Value() then
	            DelayAction(function() self.LevelSpell(LevelUpTable[Settings.SubReq.autoLvl:Value()][GetLevel(myHero)-GetLevelPoints(myHero)+1]) end, math.random(0.3286,1.33250))
	        else
	            LevelSpell(self.LevelUpTable[Settings.SubReq.autoLvl:Value()][GetLevel(myHero)-GetLevelPoints(myHero)+1])
	        end
	    end
    end

    function Warwick:AutoSmiteAndOrQ() -- noddy auto smite
    	if GetCastName(myHero,SUMMONER_1):lower():find("summonersmite") then
			useSmite = SUMMONER_1
		elseif GetCastName(myHero,SUMMONER_2):lower():find("summonersmite") then
			useSmite = SUMMONER_2
		else return

		end
		local Ticker = GetTickCount()
		local global_ticks = 0

		if Settings.AutoSmiteQ.onSmite:Value() then
			if (global_ticks + 250) < Ticker then
				if smiteON == true then
					smiteON = false
				elseif smiteON == false then
					smiteON = true
				end
			global_ticks = Ticker
			end
		end

		local smiteON = true
		SmiteCalc = (({[1]=390,[2]=410,[3]=430,[4]=450,[5]=480,[6]=510,[7]=540,[8]=570,[9]=600,[10]=640,[11]=680,[12]=720,[13]=760,[14]=800,[15]=850,[16]=900,[17]=950,[18]=1000})[GetLevel(myHero)])
		
		if smiteON == true then
			if CanUseSpell(myHero,SmiteCalc) == READY then
					if dragon ~= nil and GetObjectName(dragon) == "SRU_Dragon" and ValidTarget(dragon, 750) and Settings.AutoSmiteQ.dragon:Value() then
						if Settings.AutoSmiteQ.onSmite:Value() == 1 then	
							if GetCurrentHP(dragon) <= SmiteCalc then
								CastTargetSpell(dragon,useSmite)
							end
						elseif Settings.AutoSmiteQ.onSmite:Value() == 2 then
							if GetCurrentHP(dragon) <= (SmiteCalc + self.Dmg[0]) then
								CastTargetSpell(dragon,useSmite)
								CastTargetSpell(dragon,0)
							end
						end
					end
					if herald ~= nil and GetObjectName(herald) == "SRU_RiftHerald" and ValidTarget(herald, 750) and Settings.AutoSmiteQ.herald:Value() then
						if Settings.AutoSmiteQ.onSmite:Value() == 1 then	
							if GetCurrentHP(herald) <= SmiteCalc then
								CastTargetSpell(herald,useSmite)
							end
						elseif Settings.AutoSmiteQ.onSmite:Value() == 2 then
							if GetCurrentHP(herald) <= (SmiteCalc + self.Dmg[0]) then
								CastTargetSpell(herald,useSmite)
								CastTargetSpell(herald,0)
							end
						end
					end
					if red ~= nil and GetObjectName(red) == "SRU_Red" and ValidTarget(red, 750) and Settings.AutoSmiteQ.red:Value() then
						if Settings.AutoSmiteQ.onSmite:Value() == 1 then	
							if GetCurrentHP(red) <= SmiteCalc then
								CastTargetSpell(red,useSmite)
							end
						elseif Settings.AutoSmiteQ.onSmite:Value() == 2 then
							if GetCurrentHP(red) <= (SmiteCalc + self.Dmg[0]) then
								CastTargetSpell(red,useSmite)
								CastTargetSpell(red,0)
							end
						end
					end
					if blue ~= nil and GetObjectName(blue) == "SRU_Blue" and ValidTarget(blue, 750) and Settings.AutoSmiteQ.blue:Value() then
						if Settings.AutoSmiteQ.onSmite:Value() == 1 then	
							if GetCurrentHP(blue) <= SmiteCalc then
								CastTargetSpell(blue,useSmite)
							end
						elseif Settings.AutoSmiteQ.onSmite:Value() == 2 then
							if GetCurrentHP(blue) <= (SmiteCalc + self.Dmg[0]) then
								CastTargetSpell(blue,useSmite)
								CastTargetSpell(blue,0)
							end
						end
					end
					if baron ~= nil and GetObjectName(baron) == "SRU_Baron" and ValidTarget(baron, 750) and Settings.AutoSmiteQ.baron:Value() then
						if Settings.AutoSmiteQ.onSmite:Value() == 1 then	
							if GetCurrentHP(baron) <= SmiteCalc then
								CastTargetSpell(baron,useSmite)
							end
						elseif Settings.AutoSmiteQ.onSmite:Value() == 2 then
							if GetCurrentHP(baron) <= (SmiteCalc + self.Dmg[0]) then
								CastTargetSpell(baron,useSmite)
								CastTargetSpell(baron,0)
							end
						end
					end
					if Gromp ~= nil and GetObjectName(Gromp) == "SRU_Gromp" and ValidTarget(Gromp, 750) and Settings.AutoSmiteQ.gromp:Value() then
						if Settings.AutoSmiteQ.onSmite:Value() == 1 then	
							if GetCurrentHP(Gromp) <= SmiteCalc then
								CastTargetSpell(Gromp,useSmite)
							end
						elseif Settings.AutoSmiteQ.onSmite:Value() == 2 then
							if GetCurrentHP(Gromp) <= (SmiteCalc + self.Dmg[0]) then
								CastTargetSpell(Gromp,useSmite)
								CastTargetSpell(Gromp,0)
							end
						end
					end
			end
		end
	end


	function Warwick:Tick()
		if Settings.Items.Zhonya:Value() and EnemiesAround(myHero, 2000) >= 1 then
			self:Zhonya()
		end
		if KeyIsDown(32) then 
			self:Combo(GetCurrentTarget())
		end
		if KeyIsDown(string.byte("C")) then 
			self:Harass(GetCurrentTarget()) 
		end
		self:AutoSkillLevelUp()
		self:HealMeHealAlly()
		self:Checks()
		self:AutoIgnite()
		self:KillSteal()
		self:AutoSmiteAndOrQ()
	end
	function Warwick:Draw()
		
		self:DmgDrawing()
		self:ChooseSkin()
		self:ModelChanger()
		if not Settings.drawing.mDraw:Value() then
			for i,s in pairs({"Q","W","E","R"}) do
			    if Settings.drawing[s]:Value() then
			      DrawCircle(myHero.pos, self.SpellRanges[i-1].range, 1, 32, Settings.drawing[s.."c"]:Value())
			    end
			end
		end
	end


class "Teemo"

-- Variables and constants
	function Teemo:__init()


	self.SkillQ = { name = "Blinding Dart", range = 580, delay = 0.25, speed = 1700, width = 90, ready = false }
	self.SkillW = { name = "Move Quick", ready = false }
	self.SkillE = { name = "Toxic Shot", ready = false }
	self.SkillR = { name = "Noxious Trap", GetCastRange(myHero, 3), ready = false }
	self.Ignite = { name = "summonerdot", range = 600, slot = nil }


	self.LevelUpTable={
			[1]={_Q,_W,_E,_W,_W,_R,_W,_Q,_W,_Q,_R,_Q,_Q,_W,_E,_R,_E,_E},

			[2]={_Q,_W,_Q,_E,_Q,_R,_Q,_E,_Q,_E,_R,_E,_E,_E,_E,_R,_W,_W},

			[3]={_Q,_E,_W,_Q,_Q,_R,_Q,_E,_Q,_E,_R,_E,_E,_W,_W,_R,_W,_W}
	}

	self.SpellRanges = 
	  {
	  [_Q] = {range = GetCastRange(myHero, 0)},
	  [_W] = {range = GetCastRange(myHero, 1)},
	  [_E] = {range = GetCastRange(myHero, 2)},
	  [_R] = {range = GetCastRange(myHero, 3)}
	  }

	  self.Dmg = 
	{
	[0] = function(target, source) return getdmg("Q",GetCurrentTarget(), myHero, 3) end,
	[2] = function(target, source) return getdmg("E",GetCurrentTarget(), myHero, 3) end,
	[3] = function(target, source) return getdmg("R",GetCurrentTarget(), myHero, 3) end
	}

Settings = MenuConfig("RequiredsTeemo Version: "..version.."", "Ahri - The Little Satan  ")
	
	Settings:SubMenu("combo", "["..myHero.charName.."] - Combo Settings")
		Settings.combo:KeyBinding("comboKey", "Combo Key", 32)
		Settings.combo:DropDown("comboMode", "Combo Mode", 1, { "RQW", "RQ"})
		Settings.combo:DropDown("useR", "Use "..self.SkillR.name.." (R) in Combo", 1, { "Towards enemy", "More Combos", "Soon"})
		-- Settings.combo:Boolean("comboItems", "Use Items in Combo", true)
	
	Settings:SubMenu("harass", "["..myHero.charName.."] - Harass Settings")
		Settings.harass:KeyBinding("harassKey", "Harass Key", string.byte("C"))
		Settings.harass:Boolean("useQ", "Use "..self.SkillQ.name.." (Q) in Harass", true)
		Settings.harass:Boolean("useAA", "Only AA in Harass", false)
		Settings.harass:Slider("harassMana", "Min. Mana Percent: ", 50, 0, 100)
		
	Settings:SubMenu("ks", "["..myHero.charName.."] - KillSteal Settings")
		Settings.ks:Boolean("killSteal", "Use Smart Kill Steal", true)
		Settings.ks:Boolean("autoIgnite", "Auto Ignite", true)

	Settings:SubMenu("aut", "["..myHero.charName.."] - Auto R Settings")
		Settings.aut:Boolean("rAut", "Auto R if close to a mushroom", false)
			
	Settings:SubMenu("drawing", "["..myHero.charName.."] - Draw Settings")	
		Settings.drawing:Boolean("mDraw", "Disable All Range Draws", false)
		Settings.drawing:Boolean("Text", "Draw Text on Target", true)
		Settings.drawing:Boolean("myHero", "Draw My Range", true)
	
		for i = 0,3 do
    	local str = {[0] = "Q", [1] = "W", [2] = "E", [3] = "R"}
        Settings.drawing:Boolean(str[i], "Draw "..str[i], true)
        Settings.drawing:ColorPick(str[i].."c", "Drawing Color", {255, 25, 155, 175})
        end
    Settings:SubMenu("Items", "["..myHero.charName.."] - Items Settings")
    	Settings.Items:Boolean("Zhonya", "Use Zhonya", true)
    	Settings.Items:Slider("ZhonyaLife", "%HP to cast Zhonya", 10, 2, 100)
	
	Settings:SubMenu("misc", "["..myHero.charName.."] - Misc Settings")
		Settings.misc:Slider("skinList", "Choose your skin", 4, 1, 8)
		Settings.misc:Boolean("ModelChanger", "Enable Model Changer", false)
		Settings.misc:DropDown("ModelID", "Select Model", 1, {"Baron", "Dragon", "RiftHerald", "Chaos Minion", "Order Minion", "SpiderBoss"})

	Settings:SubMenu("SubReq", "["..myHero.charName.."] - AutoLevel Settings")
        Settings.SubReq:Boolean("LevelUp", "Level Up Skills", true)
        Settings.SubReq:Slider("Start_Level", "Level to enable lvlUP", 1, 1, 17)
        Settings.SubReq:DropDown("autoLvl", "Skill order", 1, {"Q-W-E","Q-W-Q","Q-E-W",})
        Settings.SubReq:Boolean("Humanizer", "Enable Level Up Humanizer", true)

	if heal then
		Settings:SubMenu("heal", "["..myHero.charName.."] - Summoner Heal")
			Settings.heal:Boolean("enable", "Use Heal", true)
			Settings.heal:Slider("health", "If My Health % is Less Than", 10, 0, 100)
	if realheals then
			Settings.heal:Boolean("ally", "Also use on ally", false)
			end
	end

	OnTick(function(myHero) self:Tick() end)
	OnDraw(function(myHero) self:Draw() end)
	OnCreateObj(function(Object) self:OnCreate(Object) end)

end

	function Teemo:IsMyManaLow()
		if myHero.mana < (myHero.maxMana * ( Settings.harass.harassMana:Value() / 100)) then
			return true
		else
			return false
		end
	end

	function Teemo:Checks()
		self.SkillQ.ready = (myHero:CanUseSpell(0) == READY)
		self.SkillW.ready = (myHero:CanUseSpell(1) == READY)
		self.SkillE.ready = (myHero:CanUseSpell(2) == READY)
		self.SkillR.ready = (myHero:CanUseSpell(3) == READY)
		
		if GetCastName(myHero, SUMMONER_1):lower():find("summonerdot") then
			self.Ignite.slot = SUMMONER_1
		elseif GetCastName(myHero, SUMMONER_2):lower():find("summonerdot") then
			self.Ignite.slot = SUMMONER_2
		end
		
		self.Ignite.ready = (self.Ignite.slot ~= nil and myHero:CanUseSpell(self.Ignite.slot) == READY)
		
	end

	function Teemo:AutoIgnite(unit)
		if ValidTarget(unit, self.Ignite.range) and unit.health <= 50 + (20 * myHero.level) then
			if self.Ignite.ready then
				CastTargetSpell(unit, self.Ignite.slot)
			end
		end
	end

	function Teemo:DmgDrawing()
		local target = GetCurrentTarget()
			if ValidTarget(target, 2000)  then
				if GetCurrentHP(target) <= self.Dmg[0](target, myHero) then
					DrawText("Killable: Q", 16, WorldToScreen(0, GetOrigin(target)).x, WorldToScreen(0, GetOrigin(target)).y, ARGB(255, 10, 255, 10))
				elseif GetCurrentHP(target) <= self.Dmg[0](target, myHero) + self.Dmg[3](target, myHero) then
					DrawText("Killable: Q > R", 16, WorldToScreen(0, GetOrigin(target)).x, WorldToScreen(0, GetOrigin(target)).y, ARGB(255, 10, 255, 10))
				elseif GetCurrentTarget(target) <= self.Dmg[0](target, myHero) + self.Dmg[2](target, myHero) then
					DrawText("Killable: Q > AA", 16, WorldToScreen(0, GetOrigin(target)).x, WorldToScreen(0, GetOrigin(target)).y, ARGB(255, 10, 255, 10))
				end
			end
	end

	function Teemo:HealSlot()
		if GetCastName(myHero, SUMMONER_1):lower():find("summonerheal") or GetCastName(myHero, SUMMONER_2):lower():find("summonerheal") then
			realheals = true
		end
		if GetCastName(myHero, SUMMONER_1):lower():find("summonerheal") then
			return SUMMONER_1
		elseif GetCastName(myHero, SUMMONER_2):lower():find("summonerheal")  then
			return SUMMONER_2
		end
	end

	local sAllies = GetAllyHeroes()
	function Teemo:findClosestAlly(obj)
	    local closestAlly = nil
	    local currentAlly = nil
		for i, currentAlly in pairs(sAllies) do
	        if currentAlly and not currentAlly.dead then
	            if closestAlly == nil then
	                closestAlly = currentAlly
				end
	            if GetDistanceSqr(currentAlly.pos, obj) < GetDistanceSqr(closestAlly.pos, obj) then
					closestAlly = currentAlly
	            end
	        end
	    end
		return closestAlly
	end
	heal = Teemo:HealSlot()


	lastSkin = 0
	function Teemo:ChooseSkin()
		if Settings.misc.skinList:Value() ~= lastSkin then
			lastSkin = Settings.misc.skinList:Value()
			HeroSkinChanger(myHero, Settings.misc.skinList:Value())
		end
	end

	function Teemo:ModelChanger()
		if Settings.misc.ModelChanger:Value() then
			if Settings.misc.ModelID:Value() == 1 then
				ModelChanger(myHero, 0, "SRU_Baron")
			elseif Settings.misc.ModelID:Value() == 2 then
				ModelChanger(myHero, 0, "SRU_Dragon")
			elseif Settings.misc.ModelID:Value() == 3 then
				ModelChanger(myHero, 0, "SRU_RiftHerald")
			elseif Settings.misc.ModelID:Value() == 4 then
				ModelChanger(myHero, 0, "SRU_ChaosMinionSiege")
			elseif Settings.misc.ModelID:Value() == 5 then
				ModelChanger(myHero, 0, "SRU_OrderMinionSiege")
			elseif Settings.misc.ModelID:Value() == 6 then
				ModelChanger(myHero, 0, "TT_Spiderboss")
			end
		else ModelChanger(myHero, 0, "Teemo")
		end
	end

	function Teemo:CastQ(unit)
		if unit ~= nil and GetDistance(unit) <= self.SkillQ.range and self.SkillQ.ready then
			CastTargetSpell(unit, 0)
		end
	end

	function Teemo:CastR(unit)
		if unit ~= nil and self.SkillR.ready then
			local rPredInfo = { delay = 0.25, speed = math.huge, range = GetCastRange(myHero, _R) }
			local rPred = GetPrediction(unit, rPredInfo)
		    if Settings.combo.useR:Value() == 1 then
		    	if rPred and rPred.hitChance >= 0.20 then
		    		CastSkillShot(3, rPred.castPos)
		    	end
		    elseif Settings.combo.useR:Value() == 3 or Settings.combo.useR:Value() == 2 then return
		    end
		end
	end

	function Teemo:KillSteal()
		local target = GetCurrentTarget()
		for _, target in pairs(GetEnemyHeroes()) do
			if ValidTarget(target, 1000) and target.visible then	
				if GetCurrentHP(GetCurrentTarget()) <= self.Dmg[0](target, myHero) then
					self:CastQ(target)
				end

				if Settings.ks.autoIgnite:Value() then
					self:AutoIgnite(target)
				end
			end
		end
	end

	function Teemo:Harass(unit)
		if ValidTarget(unit, 1000) and unit ~= nil and unit.type == myHero.type then
			if Settings.harass.useQ:Value() then
				if not self:IsMyManaLow() then
					self:CastQ(unit) 
				end
			elseif Settings.harass.useAA:Value() then
				if ValidTarget(unit, GetRange(unit)) then
					AttackUnit(unit)
				end
			end
		end
	end

	function Teemo:Combo(unit)
		if ValidTarget(unit, 1000) and unit ~= nil and unit.type == myHero.type then
			--[[if Settings.combo.comboItems:Value() then
				UseItems(unit)
			end]]
			
			if Settings.combo.comboMode:Value() == 1 then
				if Settings.combo.useR:Value() then 
				self:CastR(unit)
				self:CastQ(unit)
			end
			elseif Settings.combo.comboMode:Value() == 2 then
				self:CastQ(unit)
				self:CastR(unit)
			end
		
		end
	end

	function Teemo:HealMeHealAlly()
		if heal then
			if ValidTarget(GetCurrentTarget(), 1000) then
				if Settings.heal.enable:Value() and CanUseSpell(myHero, heal) == READY then
					if GetLevel(myHero) > 5 and GetCurrentHP(myHero)/GetMaxHP(myHero) < Settings.heal.health:Value() /100 then
						CastSpell(heal)
					elseif  GetLevel(myHero) < 6 and GetCurrentHP(myHero)/GetMaxHP(myHero) < (Settings.heal.health:Value()/100)*.75 then
						CastSpell(heal)
					end
					
					if realheals and Settings.heal.ally:Value() then
						local ally = Teemo:findClosestAlly(myHero)
						if ally and not ally.dead and GetDistance(ally) < 850 then
							if  GetCurrentHP(ally)/GetMaxHP(ally) < Settings.heal.health:value()/100 then
								CastSpell(heal)
							end
						end
					end
				end
			end
		end
	end

	function Teemo:CastZhonya()
	local GotItem = GetItemSlot(myHero, 3157)
		if GotItem > 0 and CanUseSpell(myHero, GotItem) == READY then
			CastSpell(GotItem) 
			return true
		end
	end

	function Teemo:Zhonya()	
		local lifeLifeMax = GetCurrentHP(myHero)/GetMaxHP(myHero)
		if lifeLifeMax < Settings.Items.ZhonyaLife:Value()/100 then
			self:CastZhonya()
		end
	end

	function Teemo:AutoSkillLevelUp()
		if Settings.SubReq.LevelUp:Value() and GetLevelPoints(myHero) >= 1 and GetLevel(myHero) >= Settings.SubReq.Start_Level:Value() then
	        if Settings.SubReq.Humanizer:Value() then
	            DelayAction(function() LevelSpell(self.LevelUpTable[Settings.SubReq.autoLvl:Value()][GetLevel(myHero)-GetLevelPoints(myHero)+1]) end, math.random(0.3286,1.33250))
	        else
	            LevelSpell(self.LevelUpTable[Settings.SubReq.autoLvl:Value()][GetLevel(myHero)-GetLevelPoints(myHero)+1])
	        end
	    end
    end

    function Teemo:DoubleR(Object)
    dist = GetDistance(Object, myHero)
    	if Object ~= nil and dist < self.SpellRanges[_R] then
    		CastSkillShot(3, IsNearMushroom)
    	end
    end

    IsNearMushroom = nil
    function Teemo:OnCreate(Object)
    	if Object ~= nil and Object == "TeemoMushroom" then
    		IsNearMushroom = Vector(Object.x, Object.y, Object.z)
    	end
    end


	function Teemo:Tick()

		if Settings.aut.rAut:Value() then 
			self:DoubleR()
		end

		if Settings.Items.Zhonya:Value() and EnemiesAround(myHero, 2000) >= 1 then
			self:Zhonya()
		end

		if KeyIsDown(32) then 
			self:Combo(GetCurrentTarget())
		end
		if KeyIsDown(string.byte("C")) then 
			self:Harass(GetCurrentTarget()) 
		end

		self:AutoSkillLevelUp()
		self:HealMeHealAlly()
		self:Checks()
		self:AutoIgnite()
		self:KillSteal()
	end

	function Teemo:Draw()
		self:ChooseSkin()
		if not Settings.drawing.mDraw:Value() then
			for i,s in pairs({"Q","W","E","R"}) do
			    if Settings.drawing[s]:Value() then
			      DrawCircle(myHero.pos, self.SpellRanges[i-1].range, 1, 32, Settings.drawing[s.."c"]:Value())
			    end
			end
		end
	end

--[[
		class "Aatrox"

	function Aatrox:__init()

	local version = "0.1"

	self.SkillQ = { name = "Dark Flight", range = 650, ready = false }
	self.SkillW = { name = "Blood Thirst / Blood Price", range = 1250, ready = false }
	self.SkillE = { name = "Blades Of Torment", range = 1000, ready = false }
	self.SkillR = { name = "Massacre", range = 550, ready = false }

	Ignite = { name = "summonerdot", range = 600, slot = nil }


	self.LevelUpTable={
			[1]={_Q,_E,_W,_W,_W,_R,_W,_Q,_W,_Q,_R,_Q,_Q,_W,_E,_R,_E,_E},

			[2]={_Q,_W,_Q,_E,_Q,_R,_Q,_E,_Q,_E,_R,_E,_E,_E,_E,_R,_W,_W},

			[3]={_Q,_E,_W,_Q,_Q,_R,_Q,_E,_Q,_E,_R,_E,_E,_W,_W,_R,_W,_W}
	}

	self.SpellRanges = 
	  {
	  [_Q] = {range = GetCastRange(myHero, 0)},
	  [_W] = {range = GetCastRange(myHero, 1)},
	  [_E] = {range = GetCastRange(myHero, 2)},
	  [_R] = {range = GetCastRange(myHero, 3)}
	  }

	  self.Dmg = 
	{
	[0] = function(target, source) return getdmg("Q",GetCurrentTarget(), myHero, 3) end,
	[1] = function(target, source) return getdmg("W",GetCurrentTarget(), myHero, 3) end,
	[2] = function(target, source) return getdmg("E",GetCurrentTarget(), myHero, 3) end,
	[3] = function(target, source) return getdmg("R",GetCurrentTarget(), myHero, 3) end
	}

Settings = MenuConfig("RequiredsAatrox Version: "..version.."", "Aatrox - Fight or be forgotten ")
	
	Settings:SubMenu("combo", "["..myHero.charName.."] - Combo Settings")
		Settings.combo:KeyBinding("comboKey", "Combo Key", 32)
		Settings.combo:DropDown("comboMode", "Combo Mode", 3, { "RQ", "All in"})
		-- Settings.combo:Boolean("comboItems", "Use Items in Combo", true)
	
	Settings:SubMenu("harass", "["..myHero.charName.."] - Harass Settings")
		Settings.harass:KeyBinding("harassKey", "Harass Key", string.byte("C"))
		Settings.harass:Boolean("useQ", "Use "..self.SkillQ.name.." (Q) in Harass", true)
		Settings.harass:Boolean("useE", "Use "..self.SkillE.name.." (E) in Harass", true)

		
	Settings:SubMenu("ks", "["..myHero.charName.."] - KillSteal Settings")
		Settings.ks:Boolean("eKillsteal", "Use E to killSteal", false)
		Settings.ks:Boolean("killSteal", "Use Smart Kill Steal", true)
		Settings.ks:Boolean("autoIgnite", "Auto Ignite", true)

			
	Settings:SubMenu("drawing", "["..myHero.charName.."] - Draw Settings")	
		Settings.drawing:Boolean("mDraw", "Disable All Range Draws", false)
		Settings.drawing:Boolean("Text", "Draw Text on Target", true)
		Settings.drawing:Boolean("myHero", "Draw My Range", true)
	
		for i = 0,3 do
    	local str = {[0] = "Q", [1] = "W", [2] = "E", [3] = "R"}
        Settings.drawing:Boolean(str[i], "Draw "..str[i], true)
        Settings.drawing:ColorPick(str[i].."c", "Drawing Color", {255, 25, 155, 175})
        end
	
	Settings:SubMenu("misc", "["..myHero.charName.."] - Misc Settings")
		Settings.misc:Slider("skinList", "Choose your skin", 4, 1, 6)
		Settings.misc:Boolean("ModelChanger", "Enable Model Changer", false)
		Settings.misc:DropDown("ModelID", "Select Model", 1, {"Baron", "Dragon", "RiftHerald", "Chaos Minion", "Order Minion", "SpiderBoss"})

	Settings:SubMenu("SubReq", "["..myHero.charName.."] - AutoLevel Settings")
        Settings.SubReq:Boolean("LevelUp", "Level Up Skills", true)
        Settings.SubReq:Slider("Start_Level", "Level to enable lvlUP", 1, 1, 17)
        Settings.SubReq:DropDown("autoLvl", "Skill order", 1, {"Q-W-E","Q-W-Q","Q-E-W",})
        Settings.SubReq:Boolean("Humanizer", "Enable Level Up Humanizer", true)

	if self.heal then
		Settings:SubMenu("heal", "["..myHero.charName.."] - Summoner Heal")
			Settings.heal:Boolean("enable", "Use Heal", true)
			Settings.heal:Slider("health", "If My Health % is Less Than", 10, 0, 100)
	if self.realheals then
			Settings.heal:Boolean("ally", "Also use on ally", false)
			end
	end

	OnTick(function(myHero) self:Tick() end)
	OnDraw(function(myHero) self:Draw() end)

end


	function Aatrox:Checks()
		self.SkillQ.ready = (myHero:CanUseSpell(0) == READY)
		self.SkillW.ready = (myHero:CanUseSpell(1) == READY)
		self.SkillE.ready = (myHero:CanUseSpell(2) == READY)
		self.SkillR.ready = (myHero:CanUseSpell(3) == READY)
		
		if GetCastName(myHero, SUMMONER_1):lower():find("summonerdot") then
			Ignite.slot = SUMMONER_1
		elseif GetCastName(myHero, SUMMONER_2):lower():find("summonerdot") then
			Ignite.slot = SUMMONER_2
		end
		
		Ignite.ready = (Ignite.slot ~= nil and myHero:CanUseSpell(Ignite.slot) == READY)
		
	end

	function Aatrox:AutoIgnite(unit)
		if ValidTarget(unit, Ignite.range) and unit.health <= 50 + (20 * myHero.level) then
			if Ignite.ready then
				CastTargetSpell(unit, Ignite.slot)
			end
		end
	end

	function Aatrox:DmgDrawing()
		local target = GetCurrentTarget()
			if ValidTarget(target, 2000)  then
				if GetCurrentHP(target) <= self.Dmg[0](target, myHero) then
					DrawText("Killable: Q", 16, WorldToScreen(0, GetOrigin(target)).x, WorldToScreen(0, GetOrigin(target)).y, ARGB(255, 10, 255, 10))
				elseif GetCurrentHP(target) <= self.Dmg[0](target, myHero) + self.Dmg[1](target, myHero) then
					DrawText("Killable: Q > W", 16, WorldToScreen(0, GetOrigin(target)).x, WorldToScreen(0, GetOrigin(target)).y, ARGB(255, 10, 255, 10))
				elseif GetCurrentHP(target) <= self.Dmg[2](target, myHero) then
					DrawText("Killable: E", 16, WorldToScreen(0, GetOrigin(target)).x, WorldToScreen(0, GetOrigin(target)).y, ARGB(255, 10, 255, 10))
				elseif GetCurrentHP(target) <= self.Dmg[0](target, myHero) + self.Dmg[2](target, myHero) then
					DrawText("Killable: E > Q", 16, WorldToScreen(0, GetOrigin(target)).x, WorldToScreen(0, GetOrigin(target)).y, ARGB(255, 10, 255, 10))
				elseif GetCurrentHP(target) <= self.Dmg[1](target, myHero) + self.Dmg[2](target, myHero) then
					DrawText("Killable: E > W", 16, WorldToScreen(0, GetOrigin(target)).x, WorldToScreen(0, GetOrigin(target)).y, ARGB(255, 10, 255, 10))
				elseif GetCurrentHP(target) <= self.Dmg[0](target, myHero) + self.Dmg[2](target, myHero) + self.Dmg[1](target, myHero) then
					DrawText("Killable: E > Q > W", 16, WorldToScreen(0, GetOrigin(target)).x, WorldToScreen(0, GetOrigin(target)).y, ARGB(255, 10, 255, 10))
				end
			end
	end

	function Aatrox:HealSlot()
		if GetCastName(myHero, SUMMONER_1):lower():find("summonerheal") or GetCastName(myHero, SUMMONER_2):lower():find("summonerheal") then
			realheals = true
		end
		if GetCastName(myHero, SUMMONER_1):lower():find("summonerheal") then
			return SUMMONER_1
		elseif GetCastName(myHero, SUMMONER_2):lower():find("summonerheal")  then
			return SUMMONER_2
		end
	end

	local sAllies = GetAllyHeroes()
	function Aatrox:findClosestAlly(obj)
	    local closestAlly = nil
	    local currentAlly = nil
		for i, currentAlly in pairs(sAllies) do
	        if currentAlly and not currentAlly.dead then
	            if closestAlly == nil then
	                closestAlly = currentAlly
				end
	            if GetDistanceSqr(currentAlly.pos, obj) < GetDistanceSqr(closestAlly.pos, obj) then
					closestAlly = currentAlly
	            end
	        end
	    end
		return closestAlly
	end
	heal = Aatrox:HealSlot()


	lastSkin = 0
	function Aatrox:ChooseSkin()
		if Settings.misc.skinList:Value() ~= lastSkin then
			lastSkin = Settings.misc.skinList:Value()
			HeroSkinChanger(myHero, Settings.misc.skinList:Value())
		end
	end

	function Aatrox:ModelChanger()
		if Settings.misc.ModelChanger:Value() then
			if Settings.misc.ModelID:Value() == 1 then
				ModelChanger(myHero, 0, "SRU_Baron")
			elseif Settings.misc.ModelID:Value() == 2 then
				ModelChanger(myHero, 0, "SRU_Dragon")
			elseif Settings.misc.ModelID:Value() == 3 then
				ModelChanger(myHero, 0, "SRU_RiftHerald")
			elseif Settings.misc.ModelID:Value() == 4 then
				ModelChanger(myHero, 0, "SRU_ChaosMinionSiege")
			elseif Settings.misc.ModelID:Value() == 5 then
				ModelChanger(myHero, 0, "SRU_OrderMinionSiege")
			elseif Settings.misc.ModelID:Value() == 6 then
				ModelChanger(myHero, 0, "TT_Spiderboss")
			end
		else ModelChanger(myHero, 0, "Aatrox")
		end
	end

	function Aatrox:CastQ(unit)
		if unit ~= nil and GetDistance(unit, myHero) <= self.SkillQ.range and self.SkillQ.ready then
			if ValidTarget(GetCurrentTarget(), self.SpellRanges[_Q]) and Ready(0) then
		    	CastSkillShot(0, unit.pos)
		    end
		end
	end

	function Aatrox:CastW(unit)
		if Settings.combo.comboMode:Value() == 1 then
			if unit ~= nil and GetDistance(unit) <= self.SkillW.range and self.SkillW.ready then
				if ValidTarget(unit, self.SpellRanges[_Q]) and Ready(0) then
					CastSpell(1)
				end
			end
		end
	end

	function Aatrox:CastE(unit)
		if unit ~= nil and self.SkillE.ready then
			local ePredInfo = { width = 40, delay = 0.1, speed = math.huge, range = 1000 }
			local ePred = GetPrediction(unit, ePredInfo)
			if ePred and ePred.hitChance >= 0.20 then
		    	CastSkillShot(2, ePred.castPos)
		    end
		end
	end

	function Aatrox:CastR(unit)
		if unit ~= nil and GetDistance(unit, myHero) <= self.SkillR.range and self.SkillR.ready then
			if ValidTarget(unit, self.SpellRanges[_R]) and Ready(3) then
				CastSkillShot(3, unit.pos)
		    end
		end
	end

	function Aatrox:KillSteal()
		local target = GetCurrentTarget()
		for _, target in pairs(GetEnemyHeroes()) do
			if ValidTarget(target, 1000) and target.visible then	
				if GetCurrentHP(GetCurrentTarget()) <= self.Dmg[0](target, myHero) then
					self:CastQ(target)
				elseif GetCurrentHP(GetCurrentTarget()) <= self.Dmg[3](target, myHero) then
					self:CastR(target)
				elseif GetCurrentHP(GetCurrentTarget()) <= (self.Dmg[3](target, myHero) + self.Dmg[0](target, myHero)) then
					self:CastQ(target)
					self:CastR(target)
				end
				if Settings.ks.autoIgnite:Value() then
					self:AutoIgnite(target)
				end
			end
		end
	end

	function Aatrox:Harass(unit)
		if ValidTarget(unit, 1000) and unit ~= nil and unit.type == myHero.type then
			if Settings.harass.useQ:Value() then 
				self:CastQ(unit)
			end
		end
	end

	function Aatrox:Combo(unit)
		if ValidTarget(unit, 1000) and unit ~= nil and unit.type == myHero.type then		
			if Settings.combo.comboMode:Value() == 1 then
				self:CastR(unit) 
				self:CastQ(unit)
			elseif Settings.combo.comboMode:Value() == 2 then
				self:CastQ(unit)
				self:CastE(unit)
				self:CastR(unit)
			end
		
		end
	end

	function Aatrox:HealMeHealAlly()
		if self.heal then
			if ValidTarget(GetCurrentTarget(), 1000) then
				if Settings.heal.enable:Value() and CanUseSpell(myHero, self.heal) == READY then
					if GetLevel(myHero) > 5 and GetCurrentHP(myHero)/GetMaxHP(myHero) < Settings.heal.health:Value() /100 then
						CastSpell(self.heal)
					elseif  GetLevel(myHero) < 6 and GetCurrentHP(myHero)/GetMaxHP(myHero) < (Settings.heal.health:Value()/100)*.75 then
						CastSpell(self.heal)
					end
					
					if self.realheals and Settings.heal.ally:Value() then
						local ally = Warwick:findClosestAlly(myHero)
						if ally and not ally.dead and GetDistance(ally) < 850 then
							if  GetCurrentHP(ally)/GetMaxHP(ally) < Settings.heal.health:value()/100 then
								CastSpell(self.heal)
							end
						end
					end
				end
			end
		end
	end

	function Aatrox:AutoSkillLevelUp()
		if Settings.SubReq.LevelUp:Value() and GetLevelPoints(myHero) >= 1 and GetLevel(myHero) >= Settings.SubReq.Start_Level:Value() then
	        if Settings.SubReq.Humanizer:Value() then
	            DelayAction(function() LevelSpell(self.LevelUpTable[Settings.SubReq.autoLvl:Value()][GetLevel(myHero)-GetLevelPoints(myHero)+1]) end, math.random(0.3286,1.33250))
	        else
	            LevelSpell(self.LevelUpTable[Settings.SubReq.autoLvl:Value()][GetLevel(myHero)-GetLevelPoints(myHero)+1])
	        end
	    end
    end

    function Aatrox:AutoSmiteAndOrQ() -- noddy auto smite
    	if GetCastName(myHero,SUMMONER_1):lower():find("summonersmite") then
			useSmite = SUMMONER_1
		elseif GetCastName(myHero,SUMMONER_2):lower():find("summonersmite") then
			useSmite = SUMMONER_2
		else return

		end
		local Ticker = GetTickCount()
		local global_ticks = 0

		if NocturneMenu.AutoSmite.dontUse:Value() then
			if (global_ticks + 250) < Ticker then
				if smiteON == true then
					smiteON = false
				elseif smiteON == false then
					smiteON = true
				end
			global_ticks = Ticker
			end
		end

		local smiteON = true
		SmiteCalc = (({[1]=390,[2]=410,[3]=430,[4]=450,[5]=480,[6]=510,[7]=540,[8]=570,[9]=600,[10]=640,[11]=680,[12]=720,[13]=760,[14]=800,[15]=850,[16]=900,[17]=950,[18]=1000})[GetLevel(myHero)])
		
		if smiteON == true then
			if CanUseSpell(myHero,SmiteCalc) == READY then
					if dragon ~= nil and GetObjectName(dragon) == "SRU_Dragon" and ValidTarget(dragon, 750) and Settings.AutoSmiteQ.dragon:Value() then
						if Settings.AutoSmiteQ.onSmite:Value() == 1 then	
							if GetCurrentHP(dragon) <= SmiteCalc then
								CastTargetSpell(dragon,useSmite)
							end
						elseif Settings.AutoSmiteQ.onSmite:Value() == 2 then
							if GetCurrentHP(dragon) <= (SmiteCalc + self.Dmg[0]) then
								CastTargetSpell(dragon,useSmite)
								CastTargetSpell(dragon,0)
							end
						end
					end
					if herald ~= nil and GetObjectName(herald) == "SRU_RiftHerald" and ValidTarget(herald, 750) and Settings.AutoSmiteQ.herald:Value() then
						if Settings.AutoSmiteQ.onSmite:Value() == 1 then	
							if GetCurrentHP(herald) <= SmiteCalc then
								CastTargetSpell(herald,useSmite)
							end
						elseif Settings.AutoSmiteQ.onSmite:Value() == 2 then
							if GetCurrentHP(herald) <= (SmiteCalc + self.Dmg[0]) then
								CastTargetSpell(herald,useSmite)
								CastTargetSpell(herald,0)
							end
						end
					end
					if red ~= nil and GetObjectName(red) == "SRU_Red" and ValidTarget(red, 750) and Settings.AutoSmiteQ.red:Value() then
						if Settings.AutoSmiteQ.onSmite:Value() == 1 then	
							if GetCurrentHP(red) <= SmiteCalc then
								CastTargetSpell(red,useSmite)
							end
						elseif Settings.AutoSmiteQ.onSmite:Value() == 2 then
							if GetCurrentHP(red) <= (SmiteCalc + self.Dmg[0]) then
								CastTargetSpell(red,useSmite)
								CastTargetSpell(red,0)
							end
						end
					end
					if blue ~= nil and GetObjectName(blue) == "SRU_Blue" and ValidTarget(blue, 750) and Settings.AutoSmiteQ.blue:Value() then
						if Settings.AutoSmiteQ.onSmite:Value() == 1 then	
							if GetCurrentHP(blue) <= SmiteCalc then
								CastTargetSpell(blue,useSmite)
							end
						elseif Settings.AutoSmiteQ.onSmite:Value() == 2 then
							if GetCurrentHP(blue) <= (SmiteCalc + self.Dmg[0]) then
								CastTargetSpell(blue,useSmite)
								CastTargetSpell(blue,0)
							end
						end
					end
					if baron ~= nil and GetObjectName(baron) == "SRU_Baron" and ValidTarget(baron, 750) and Settings.AutoSmiteQ.baron:Value() then
						if Settings.AutoSmiteQ.onSmite:Value() == 1 then	
							if GetCurrentHP(baron) <= SmiteCalc then
								CastTargetSpell(baron,useSmite)
							end
						elseif Settings.AutoSmiteQ.onSmite:Value() == 2 then
							if GetCurrentHP(baron) <= (SmiteCalc + self.Dmg[0]) then
								CastTargetSpell(baron,useSmite)
								CastTargetSpell(baron,0)
							end
						end
					end
					if Gromp ~= nil and GetObjectName(Gromp) == "SRU_Gromp" and ValidTarget(Gromp, 750) and Settings.AutoSmiteQ.gromp:Value() then
						if Settings.AutoSmiteQ.onSmite:Value() == 1 then	
							if GetCurrentHP(Gromp) <= SmiteCalc then
								CastTargetSpell(Gromp,useSmite)
							end
						elseif Settings.AutoSmiteQ.onSmite:Value() == 2 then
							if GetCurrentHP(Gromp) <= (SmiteCalc + self.Dmg[0]) then
								CastTargetSpell(Gromp,useSmite)
								CastTargetSpell(Gromp,0)
							end
						end
					end
			end
		end
	end


	function Aatrox:Tick()
		if KeyIsDown(32) then 
			self:Combo(GetCurrentTarget())
		end
		if KeyIsDown(string.byte("C")) then 
			self:Harass(GetCurrentTarget()) 
		end
		self:AutoSkillLevelUp()
		self:HealMeHealAlly()
		self:Checks()
		self:AutoIgnite()
		self:KillSteal()
		self:AutoSmiteAndOrQ()
	end
	function Aatrox:Draw()
		
		self:DmgDrawing()
		self:ChooseSkin()
		self:ModelChanger()
		if not Settings.drawing.mDraw:Value() then
			for i,s in pairs({"Q","W","E","R"}) do
			    if Settings.drawing[s]:Value() then
			      DrawCircle(myHero.pos, self.SpellRanges[i-1].range, 1, 32, Settings.drawing[s.."c"]:Value())
			    end
			end
		end
	end ]]

-- soon Gragas, Shaco

_G[GetObjectName(myHero)]()

PrintChat(string.format("<font color=\"#85EDD7\"><b>Welcome " ..GetUser().. " .</b></font>"))
PrintChat(string.format("<font color=\"#FC5347\"><b>The Art Of Scripting: " ..GetObjectName(myHero).. " Loaded.</b></font>"))
	
