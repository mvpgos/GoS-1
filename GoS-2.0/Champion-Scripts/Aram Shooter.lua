local vers = "0.11"
    function AutoUpdate(data)
	    if tonumber(data) > tonumber(vers) then
	        PrintChat("New Version Found " .. data)
	        PrintChat("Downloading update, please wait...")
	        DownloadFileAsync("https://raw.githubusercontent.com/RequiredGoS/Gaming-On-Steroids/master/EducationalScripts/Aram%20Shooter.lua", SCRIPT_PATH .. "Aram Shooter.lua", function() PrintChat(string.format("<font color=\"#74E5D2\"><b>Script Downloaded succesfully. please 2x f6</b></font>")) return end)
	    end
    end
    GetWebResultAsync("https://raw.githubusercontent.com/RequiredGoS/Gaming-On-Steroids/master/EducationalScripts/Aram%20Shooter.version", AutoUpdate)

-- Above is the auto update functio .

 -- Educational purpose

require("OpenPredict") -- Needed library for predictions

ARAM = GetMapID() -- Current Map ID (Howling Abyss) -- We call ARAM to the check of current map


	if not ARAM == 12 then return end -- if current map is not HOWLING ABYSS then script will not load (12 ID Stands for ARAM MAP)

	Mark = GetCastName(myHero, SUMMONER_1):lower() == "summonersnowball" or GetCastName(myHero, SUMMONER_2):lower() == "summonersnowball" -- check if Mark summoner was taken
	-- if Mark is in Summoner 1 , Mark will get linked to Summoner 1 or Summoner 2

	local AramMenu = MenuConfig("Sn", "Zeyx's  Aram Shooter")	-- Menu in which the following submenu will be indexed
	if Mark then  -- If user has not Mark, this will not load
		AramMenu:SubMenu("Options", "Options")
			AramMenu.Options:Boolean("Enabled","Enable Auto Mark", true)        
			AramMenu.Options:Slider("SliderEnabled","Range for Mark", 1600, 400, 1600) -- 1600 default Value, 400 minimum, 1600 max value
			AramMenu.Options:Boolean("En2", "Activate Dash", true)
			AramMenu.Options:Empty("s", 0)
			AramMenu.Options:Boolean("Drawing", "Enable Drawing", true)
        	        AramMenu.Options:ColorPick(Mark.."c", "Draw Color", {255, 25, 155, 175}) -- color table where user can choose drawing color
	elseif not Mark then-- if user has not Mark Summoner, this menu will appear
			AramMenu:SubMenu("NoOptions", "Mark Summoner not found")
			AramMenu.NoOptions:Info("n", "Mark Summoner not found")
	end 

	OnTick(function() --delay of the spell / speed of the spell / width of the spell / range of the spell
		local target = GetCurrentTarget() 
		MarkInfo = { delay = 0.25, speed = 1500, width = 50, range = AramMenu.Options.SliderEnabled:Value() } -- Info needed for Prediction
		MarkPred = GetPrediction(GetCurrentTarget(), MarkInfo)

		if AramMenu.Options.En2:Value() and AramMenu.Options.Enabled:Value() then -- if Enable Auto Mark and Activate Dash are ON, this will go on
			if MarkPred and MarkPred.hitChance >= 0.35 and not MarkPred:mCollision(1) then
		    		CastSkillShot(Mark, target)
		    		if IsReady(Mark) then CastSpell(Mark) end
			end
		elseif not AramMenu.Options.En2:Value() == true and AramMenu.Options.Enabled:Value() then -- if only Auto Mark is ON, this will go on
			if MarkPred and MarkPred.hitChance >= 0.35 and not MarkPred:mCollision(1) then
		    		CastSkillShot(Mark, target)
		    	end
		end
	end)

	OnDraw(function()
		if AramMenu.Options.Drawing:Value() then -- If user enabled drawings, this will go on.
			DrawCircle(myHero.pos, AramMenu.Options.SliderEnabled:Value(), 1, 32, AramMenu.Options[Mark.."c"]:Value()) 
			-- myHero.pos (Where the circle will be drawed around)
			-- AramMenu... Range of the Circle that user selected
			-- 1 -> Width
			-- 32 -> Quality
			-- Aram...[Mark.."c"]:Value() is the color that the user selected.
		end
	end)
