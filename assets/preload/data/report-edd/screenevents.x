function onTimerCompleted(tag, loops, loopsLeft)
end

stepHitFuncs = { --a bunch of timed events, timed to steps
		[319] = function()
setProperty('defaultCamZoom', 0.8)
	end,
		[320] = function()
setProperty('defaultCamZoom', 0.7)
	end,
		[323] = function()
setProperty('defaultCamZoom', 0.8)
	end,
		[324] = function()
setProperty('defaultCamZoom', 0.7)
	end,
		[327] = function()
setProperty('defaultCamZoom', 0.8)
	end,
		[328] = function()
setProperty('defaultCamZoom', 0.7)
	end,
		[331] = function()
setProperty('defaultCamZoom', 0.8)
	end,
		[332] = function()
setProperty('defaultCamZoom', 0.9)
	end,
		[336] = function()
setProperty('defaultCamZoom', 0.7)
	end,
	
	[383] = function()
setProperty('defaultCamZoom', 0.8)
	end,
		[384] = function()
setProperty('defaultCamZoom', 0.7)
	end,
		[387] = function()
setProperty('defaultCamZoom', 0.8)
	end,
		[388] = function()
setProperty('defaultCamZoom', 0.7)
	end,
		[391] = function()
setProperty('defaultCamZoom', 0.8)
	end,
		[392] = function()
setProperty('defaultCamZoom', 0.7)
	end,
		[395] = function()
setProperty('defaultCamZoom', 0.8)
	end,
		[396] = function()
setProperty('defaultCamZoom', 0.9)
	end,
		[400] = function()
setProperty('defaultCamZoom', 0.8)
	end,
			[404] = function()
setProperty('defaultCamZoom', 0.7)
	end,
			[408] = function()
setProperty('defaultCamZoom', 0.6)
	end,
	[412] = function()
setProperty('defaultCamZoom', 0.5)
	end,
	[416] = function()
setProperty('defaultCamZoom', 0.7)
	end,
[420] = function()
setProperty('defaultCamZoom', 0.8)
	end,
	[424] = function()
setProperty('defaultCamZoom', 0.9)
	end,
	[428] = function()
setProperty('defaultCamZoom', 1)
	end,
	[432] = function()
setProperty('defaultCamZoom', 0.8)
	end,
	[440] = function()
setProperty('defaultCamZoom', 0.6)
	end,
}

function onStepHit()
    if stepHitFuncs[curStep] then 
        stepHitFuncs[curStep]() -- Executes function at curStep in stepHitFuncs
    end
end