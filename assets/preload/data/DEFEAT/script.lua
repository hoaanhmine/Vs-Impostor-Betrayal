local nomiss = true
local healthdrain = false
local normal = false

function opponentNoteHit()
if healthdrain == true then
            health = getProperty('health')
       if getProperty('health') > 0.1 then
           setProperty('health', health- 0.023);
   end
   end
end

function noteMiss(id, direction, noteType, isSustainNote)
if nomiss == true then
setProperty('health', 0)
    local luckyRoll = math.random(1, 50)
    local luckyRoll2 = math.random(1, 50)
    if (luckyRoll >= 40) then
setProperty('health', 0)
	setPropertyFromClass('GameOverSubstate', 'characterName', 'nomoreballs'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'no-balls'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOverEmpty'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEndEmpty'); --put in mods/music/
        end
    if (luckyRoll2 <= 40) then
setProperty('health', 0)
    setPropertyFromClass('GameOverSubstate', 'characterName', 'defeatdeath'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'loss-defeat'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOverEmpty'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEndEmpty'); --put in mods/music
    end
end
end

function goodNoteHit()
if healthdrain == true then
addScore(-100)
end
if normal == true then
addScore(-150)
end
end



function onCreate()
	makeLuaText('misses', 'Misses:' .. getProperty('songMisses'), 600, 0, 350);
	makeLuaText('mode', '', 460, 0, 380);
	addLuaText('misses');
	addLuaText('mode');
	setTextSize('misses', 30)
	setTextSize('mode', 30)
	doTweenAlpha('missesgone','misses',0,0.00000000001,'smootherInOut')
	doTweenAlpha('modetextnone','mode',0,0.00000000001,'smootherInOut')
	setProperty('healthBar.visible', false)
	setProperty('healthBarBG.visible', false)
	setProperty('timeBarBG.visible', false)
	setProperty('timeBar.visible', false)
	setProperty('timeTxt.visible', false)
	setProperty('iconP1.visible', false)
	setProperty('iconP2.visible', false)
	setProperty('scoreTxt.alpha', 0)
	setObjectOrder('boyfriendGroup', 15)
	setObjectOrder('dadGroup', 16)
		if getPropertyFromClass('ClientPrefs', 'middleScroll') == true then
	elseif getPropertyFromClass('ClientPrefs', 'middleScroll') == false then
		setPropertyFromClass('ClientPrefs', 'middleScroll', true);
	end
end

function onDestroy()
	if getPropertyFromClass('ClientPrefs', 'middleScroll') == true then
		setPropertyFromClass('ClientPrefs', 'middleScroll', false);
	elseif getPropertyFromClass('ClientPrefs', 'middleScroll') == false then
	end
end

function onCreatePost()
    setPropertyFromClass('GameOverSubstate', 'characterName', 'defeatdeath'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'loss-defeat'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOverEmpty'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEndEmpty'); --put in mods/music
noteTweenX('lea123', 4, 412, 0.1, 'smootherStepOut')
	noteTweenX('dfsczvf', 5, 524, 0.1, 'smootherStepOut')
	noteTweenX('uvvxxxxv', 6, 636, 0.1, 'smootherStepOut')
	noteTweenX('rzxxxxxxxz', 7, 748, 0.1, 'smootherStepOut')
	noteTweenX('leftnotegone', 0, -150, 0.000000001, 'smootherStepOut')
	noteTweenX('downnotegone', 1, -150, 0.000000001, 'smootherStepOut')
	noteTweenX('upnotegone', 2, 1500, 0.000000001, 'smootherStepOut')
	noteTweenX('rightnotegone', 3, 1500, 0.000000001, 'smootherStepOut')
end

function onUpdate()
if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ONE') then
nomiss = false
healthdrain = true
normal = false
setTextColor('mode', 'ffffff')
setTextString('mode', 'Mode: Health Drain')
doTweenAlpha('healthdrainon','mode',100,10,'smootherInOut')
	setProperty('healthBar.visible', true)
	setProperty('healthBarBG.visible', true)
	setProperty('timeBarBG.visible', false)
	setProperty('timeBar.visible', false)
	setProperty('timeTxt.visible', false)
	setProperty('iconP1.visible', true)
	setProperty('iconP2.visible', true)
	setProperty('scoreTxt.alpha', 100)
	setObjectOrder('boyfriendGroup', 15)
	setObjectOrder('dadGroup', 16)
	for i = 0, getProperty('opponentStrums.length')-1 do		
	setPropertyFromGroup('opponentStrums',i,'visible',false)
end
end
if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.TWO') then
nomiss = false
healthdrain = false
normal = true
setTextColor('mode', 'ffffff')
setTextString('mode', 'Mode: Normal')
doTweenAlpha('healthdrainon','mode',100,10,'smootherInOut')
	setProperty('healthBar.visible', true)
	setProperty('healthBarBG.visible', true)
	setProperty('timeBarBG.visible', true)
	setProperty('timeBar.visible', true)
	setProperty('timeTxt.visible', true)
	setProperty('iconP1.visible', true)
	setProperty('iconP2.visible', true)
	setProperty('scoreTxt.alpha', 100)
	setObjectOrder('boyfriendGroup', 15)
	setObjectOrder('dadGroup', 16)
	for i = 0, getProperty('opponentStrums.length')-1 do		
	setPropertyFromGroup('opponentStrums',i,'visible',false)
end
end
if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.THREE') then
nomiss = true
healthdrain = false
normal = false
setTextColor('mode', 'ff0000')
setTextString('mode', 'Mode: True')
doTweenAlpha('healthdrainon','mode',0,1,'smootherInOut')
	setProperty('healthBar.visible', false)
	setProperty('healthBarBG.visible', false)
	setProperty('timeBarBG.visible', false)
	setProperty('timeBar.visible', false)
	setProperty('timeTxt.visible', false)
	setProperty('iconP1.visible', false)
	setProperty('iconP2.visible', false)
	setProperty('scoreTxt.alpha', 0)
	setObjectOrder('boyfriendGroup', 15)
	setObjectOrder('dadGroup', 16)
	for i = 0, getProperty('opponentStrums.length')-1 do		
	setPropertyFromGroup('opponentStrums',i,'visible',false)
end
end
end

function onUpdatePost()
	if curStep == 1 then
	noteTweenX('leftnotegone', 0, -150, 0.3, 'smootherStepOut')
	noteTweenX('downnotegone', 1, -150, 0.3, 'smootherStepOut')
	noteTweenX('upnotegone', 2, 1500, 0.3, 'smootherStepOut')
	noteTweenX('rightnotegone', 3, 1500, 0.3, 'smootherStepOut')
end
end

function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'DEFEAT');
	end
end

stepHitFuncs = { --a bunch of timed events, timed to steps
	[192] = function()
    doTweenZoom('zommingsuspense', 'camGame', 1.1, 10, 'quadInOut')
	end,
	[273] = function()
	doTweenAlpha('sanslol', 'defeat', 0, 0.00000000000001, 'smootherInOut')
	addLuaSprite('vignette', true);
    cancelTween('zommingsuspense')
	addLuaSprite('shine', true);
		   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1280,720,'ff0000')
	      addLuaSprite('flash', true);
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.5,'smootherInOut')
	triggerEvent('Change Character', 0, 'bfr');
	triggerEvent('Change Character', 1, 'blackwinning');
	end,
	 [2465] = function()
doTweenZoom('zommingend', 'camGame', 1.1, 10, 'quadInOut')
	end,
    [2481] = function()
	cancelTween('zommingend')
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
	doTweenAlpha('dead', 'defeat', 100, 100, 'smootherInOut')
	noteTweenAlpha('a222', 4, 0, 0.5, 'smootherStepOut')
	noteTweenAlpha('le222', 5, 0, 0.5, 'smootherStepOut')
	noteTweenAlpha('p222', 6, 0, 0.5, 'smootherStepOut')
	noteTweenAlpha('h222', 7, 0, 0.5, 'smootherStepOut')
	doTweenAlpha('0.52stdudekilledem', 'dad', 0, 0.1, 'smootherInOut')
	doTweenAlpha('0.52st', 'boyfriend', 0, 0.1, 'smootherInOut')
	doTweenAlpha('0.52sttheydead', 'gf', 0, 0.1, 'smootherInOut')
	doTweenAlpha('12zst', 'bg', 0, 0.1, 'smootherInOut')
	doTweenAlpha('22zst', 'energyball', 0, 0.1, 'smootherInOut')
	doTweenAlpha('32zst', 'console', 0, 0.1, 'smootherInOut')
	doTweenAlpha('42zst', 'cranes', 0, 0.1, 'smootherInOut')
	doTweenAlpha('52zst', 'bp', 0, 0.1, 'smootherInOut')
	doTweenAlpha('62zst', 'mp', 0, 0.1, 'smootherInOut')
	doTweenAlpha('72zst', 'fp', 0, 0.1, 'smootherInOut')
	end,
	[2482] = function()
	playSound('revive', 2)
	removeLuaSprite('shine', true);
	doTweenY('textmovesdown', 'endtext', 115, 2, 'smootherStepOut')
	doTweenColor('textcolorsred', 'endtext', 'ff0000', 2, 'smootherStepOut')
	doTweenAlpha('showscorern','scoreTxt',100,1.25,'smootherInOut')
	doTweenAlpha('comesback', 'dad', 100, 1.5, 'smootherInOut')
	end,
}

function onStepHit()
    if stepHitFuncs[curStep] then 
        stepHitFuncs[curStep]() -- Executes function at curStep in stepHitFuncs
    end
end



