function onCreate()
    setPropertyFromClass('GameOverSubstate', 'characterName', 'defeatdeath'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'loss-defeat'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOverEmpty'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEndEmpty'); --put in mods/music
		if getPropertyFromClass('ClientPrefs', 'middleScroll') == true then
	elseif getPropertyFromClass('ClientPrefs', 'middleScroll') == false then
		setPropertyFromClass('ClientPrefs', 'middleScroll', true);
	end
end

function onCreatePost()
    setPropertyFromClass('GameOverSubstate', 'characterName', 'defeatdeath'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'loss-defeat'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOverEmpty'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEndEmpty'); --put in mods/music
end

function onDestroy()
	if getPropertyFromClass('ClientPrefs', 'middleScroll') == true then
		setPropertyFromClass('ClientPrefs', 'middleScroll', false);
	elseif getPropertyFromClass('ClientPrefs', 'middleScroll') == false then
	end
end

function onUpdate()
songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/60)

end

function goodNoteHit()
setProperty('health', getProperty('health') -0.023);
end

function onTimerCompleted(tag, loops, loopsLeft)
end

stepHitFuncs = { --a bunch of timed events, timed to steps
	[512] = function()
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'ff3030')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.5,'smootherInOut')
	doTweenAlpha('sans', 'defeat', 100, 0.01, 'linear')
		triggerEvent('Change Character', 1, 'mutateblacktrue');
		cameraShake('camGame', 0.1, 0.3)
	end,
	
		[2040] = function()
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'000000')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',0.9)
		doTweenAlpha('flTw','flash',0,0.2,'smootherInOut')
	doTweenAlpha('sans', 'defeat', 100, 0.01, 'linear')
	end,
			[2041] = function()
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'000000')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',0.9)
		doTweenAlpha('flTw','flash',0,0.2,'smootherInOut')
	doTweenAlpha('sans', 'defeat', 100, 0.01, 'linear')
	end,
			[2042] = function()
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'000000')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',0.9)
		doTweenAlpha('flTw','flash',0,0.2,'smootherInOut')
	doTweenAlpha('sans', 'defeat', 100, 0.01, 'linear')
	end,
			[2043] = function()
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'000000')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',0.9)
		doTweenAlpha('flTw','flash',0,0.2,'smootherInOut')
	doTweenAlpha('sans', 'defeat', 100, 0.01, 'linear')
	end,
			[2044] = function()
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'000000')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',0.9)
		doTweenAlpha('flTw','flash',0,0.2,'smootherInOut')
	doTweenAlpha('sans', 'defeat', 100, 0.01, 'linear')
	end,
			[2045] = function()
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'000000')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',0.9)
		doTweenAlpha('flTw','flash',0,0.2,'smootherInOut')
	doTweenAlpha('sans', 'defeat', 100, 0.01, 'linear')
	end,
			[2046] = function()
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'000000')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',0.9)
		doTweenAlpha('flTw','flash',0,0.2,'smootherInOut')
	doTweenAlpha('sans', 'defeat', 100, 0.01, 'linear')
	end,
			[2047] = function()
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'000000')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',0.9)
		doTweenAlpha('flTw','flash',0,0.2,'smootherInOut')
	doTweenAlpha('sans', 'defeat', 100, 0.01, 'linear')
	end,
		[2048] = function()
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'ff3030')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',0.9)
		doTweenAlpha('flTw','flash',0,0.5,'smootherInOut')
	doTweenAlpha('sans', 'defeat', 100, 0.01, 'linear')
		cameraShake('camGame', 0.1, 0.3)
	end,
	
		[3072] = function()
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'ff3030')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.5,'smootherInOut')
	doTweenAlpha('sans', 'defeat', 100, 0.01, 'linear')
	doTweenAlpha('showscorern','scoreTxt',100,0.01,'smootherInOut')

	end,
}

function onStepHit()
    if stepHitFuncs[curStep] then 
        stepHitFuncs[curStep]() -- Executes function at curStep in stepHitFuncs
    end
end
