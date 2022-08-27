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

function goodNoteHit()
if healthdrain == true then
addScore(-200)
end
if normal == true then
addScore(-300)
end
end


--keys mechanics above--

--bunch of hud stuff
function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'impostordeath'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'kill'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'death'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'revive'); --put in mods/music/
	makeLuaText('misses', 'Misses:' .. getProperty('songMisses'), 600, 0, 350);
	makeLuaText('mode', '', 460, 0, 380);
	addLuaText('misses');
	addLuaText('mode');
	setTextSize('misses', 30)
	setTextSize('mode', 30)
	doTweenAlpha('missesgone','misses',0,0.00000000001,'linear')
	doTweenAlpha('modetextnone','mode',0,0.00000000001,'linear')
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

function onRecalculateRating()
	setTextString('misses', 'Misses:' .. getProperty('songMisses'));
end

function onCreatePost()
noteTweenX('leae', 4, 412, 0.8, 'smootherStepOut')
	noteTweenX('dfsf', 5, 524, 0.9, 'smootherStepOut')
	noteTweenX('uvvv', 6, 636, 1, 'smootherStepOut')
	noteTweenX('rzxz', 7, 748, 1.1, 'smootherStepOut')
	noteTweenX('leftnotegone', 0, -150, 0.000000001, 'smootherStepOut')
	noteTweenX('downnotegone', 1, -150, 0.000000001, 'smootherStepOut')
	noteTweenX('upnotegone', 2, 1500, 0.000000001, 'smootherStepOut')
	noteTweenX('rightnotegone', 3, 1500, 0.000000001, 'smootherStepOut')
end

function onBeatHit()
--EMERYGENCY LIGHTS
if difficulty == 0 then
if getPropertyFromClass('ClientPrefs', 'flashing') == true then
if curBeat % 4 == 0 and curStep > 250 and curStep < 633 then
			   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'ff3030')
	      addLuaSprite('flash', true);
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',0.5)
		doTweenAlpha('flTw','flash',0,0.4,'linear')
	end
if curBeat % 2 == 0 and curStep > 634 and curStep < 1020 then
			   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'ff3030')
	      addLuaSprite('flash', true);
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',0.5)
		doTweenAlpha('flTw','flash',0,0.4,'linear')
	end
if curBeat % 8 == 0 and curStep > 1020 and curStep < 1272 then
			   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'ff3030')
	      addLuaSprite('flash', true);
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',0.5)
		doTweenAlpha('flTw','flash',0,0.4,'linear')
	end
if curBeat % 4 == 0 and curStep > 1275 and curStep < 1342 then
			   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'ff3030')
	      addLuaSprite('flash', true);
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',0.5)
		doTweenAlpha('flTw','flash',0,0.4,'linear')
	end
if curBeat % 2 == 0 and curStep > 1340 and curStep < 1374 then
			   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'ff3030')
	      addLuaSprite('flash', true);
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',0.5)
		doTweenAlpha('flTw','flash',0,0.4,'linear')
	end
if curStep > 1375 and curStep < 1391 then
			   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'ff3030')
	      addLuaSprite('flash', true);
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',0.5)
		doTweenAlpha('flTw','flash',0,0.4,'linear')
	end
if curBeat % 2 == 0 and curStep > 1407 and curStep < 1790 then
			   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'ff3030')
	      addLuaSprite('flash', true);
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',0.5)
		doTweenAlpha('flTw','flash',0,0.4,'linear')
	end
	if curBeat % 4 == 0 and curStep > 1791 and curStep < 2036 then
			   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'ff3030')
	      addLuaSprite('flash', true);
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',0.5)
		doTweenAlpha('flTw','flash',0,0.4,'linear')
	end
end
end

end

function onUpdate()

--KEYS FUNCTIONS--
if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ONE') then
nomiss = false
healthdrain = true
normal = false
setTextColor('mode', 'ffffff')
setTextString('mode', 'Mode: Health Drain')
doTweenAlpha('healthdrainon','mode',100,10,'linear')
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
doTweenAlpha('healthdrainon','mode',100,10,'linear')
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
doTweenAlpha('healthdrainon','mode',0,1,'linear')
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
--KEYS FUNCTIONS END--

--show the misses thing then deletes them
if difficulty == 0 then
if curStep > 1509 and curStep < 1537 then
doTweenAlpha('missesappear','misses',100,0.5,'linear')
end
if curStep > 1537 then
doTweenAlpha('getoutmisses','misses',0,0.5,'linear')
end
end

--NORMAL EVENTS----NORMAL EVENTS----NORMAL EVENTS----NORMAL EVENTS----NORMAL EVENTS--
if curStep == 1377 then
	doTweenZoom('00steeeee', 'camGame', 0.65, 1, 'quadInOut')
	doTweenAlpha('0.5st', 'boyfriend', 0, 0.3, 'linear')
	doTweenAlpha('1st', 'bg', 0, 0.3, 'linear')
	doTweenAlpha('2st', 'energyball', 0, 0.3, 'linear')
	doTweenAlpha('3st', 'console', 0, 0.3, 'linear')
	doTweenAlpha('4st', 'cranes', 0, 0.3, 'linear')
	doTweenAlpha('5st', 'bp', 0, 0.3, 'linear')
	doTweenAlpha('6st', 'mp', 0, 0.3, 'linear')
	doTweenAlpha('7st', 'fp', 0, 0.3, 'linear')
end
if curStep == 1394 then
	doTweenZoom('00st', 'camGame', 1.1, 3, 'quadInOut')
end

if curStep == 1408 then
cancelTween('00st')
triggerEvent('Change Character', 1, 'nogf');
setProperty('defaultCamZoom', 0.6);
			   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'ffffff')
	      addLuaSprite('flash', true);
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.5,'linear')
doTweenAlpha('greensad', 'boyfriend', 100, 0.1, 'linear')
end

if curStep == 1536 then
setProperty('defaultCamZoom', 0.55);
doTweenAlpha('redgone', 'gf', 0, 0.3, 'smootherStepOut')
end

if curStep == 1600 then
setProperty('defaultCamZoom', 0.5);
			   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'f03629')
	      addLuaSprite('flash', true);
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',0.5)
		doTweenAlpha('flTw','flash',0,0.5,'linear')
	cameraShake('camGame', 0.01, 0.2)
triggerEvent('Change Character', 1, 'blackeye');
end

if curStep == 1656 then
			   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'f03629')
	      addLuaSprite('flash', true);
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.5,'linear')
	cameraShake('camGame', 0.01, 0.2)
	triggerEvent('Change Character', 1, 'blackeyeglowbright');
end

if curStep == 1664 then
triggerEvent('Change Character', 1, 'black');
setProperty('defaultCamZoom', 0.47);
			   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'ff3030')
	      addLuaSprite('flash', true);
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.5,'linear')
	doTweenZoom('02staa', 'camGame', 0.5, 0.3, 'quadInOut')
	doTweenAlpha('0.52ast', 'gf', 100, 0.1, 'linear')
	doTweenAlpha('12st', 'bg', 100, 0.1, 'linear')
	doTweenAlpha('22st', 'energyball', 100, 0.1, 'linear')
	doTweenAlpha('32st', 'console', 100, 0.1, 'linear')
	doTweenAlpha('42st', 'cranes', 100, 0.1, 'linear')
	doTweenAlpha('52st', 'bp', 100, 0.1, 'linear')
	doTweenAlpha('62st', 'mp', 100, 0.1, 'linear')
	doTweenAlpha('72st', 'fp', 100, 0.1, 'linear')
end
if curStep == 2304 then
				   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'ff3030')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.5,'linear')
	doTweenAlpha('dead', 'defeat', 100, 700, 'linear')
	noteTweenAlpha('a222', 4, 0, 0.5, 'smootherStepOut')
	noteTweenAlpha('le222', 5, 0, 0.5, 'smootherStepOut')
	noteTweenAlpha('p222', 6, 0, 0.5, 'smootherStepOut')
	noteTweenAlpha('h222', 7, 0, 0.5, 'smootherStepOut')
	doTweenAlpha('0.52asdfasdfasdfasdf', 'dad', 0, 0.1, 'linear')
	triggerEvent('Change Character', 1, 'blacknormal');
	doTweenAlpha('0.52st', 'boyfriend', 0, 0.1, 'linear')
	doTweenAlpha('0.52sttheydead', 'gf', 0, 0.1, 'linear')
	doTweenAlpha('12zst', 'bg', 0, 0.1, 'linear')
	doTweenAlpha('22zst', 'energyball', 0, 0.1, 'linear')
	doTweenAlpha('32zst', 'console', 0, 0.1, 'linear')
	doTweenAlpha('42zst', 'cranes', 0, 0.1, 'linear')
	doTweenAlpha('52zst', 'bp', 0, 0.1, 'linear')
	doTweenAlpha('62zst', 'mp', 0, 0.1, 'linear')
	doTweenAlpha('72zst', 'fp', 0, 0.1, 'linear')
end
if curStep == 2325 then
doTweenAlpha('comeback', 'dad', 100, 300, 'linear')
	doTweenAlpha('whatsmyscoredammit','scoreTxt',100,350,'linear')
end
--END OF NORMAL EVENTS----END OF NORMAL EVENTS----END OF NORMAL EVENTS----END OF NORMAL EVENTS--


--BLACKOUT EVENTS----BLACKOUT EVENTS----BLACKOUT EVENTS----BLACKOUT EVENTS----BLACKOUT EVENTS--
--nothing yet
--END OF BLACKOUT EVENTS----END OF BLACKOUT EVENTS----END OF BLACKOUT EVENTS----END OF BLACKOUT EVENTS--
end



--MAKE SURE BLACK'S NOTES ARENT SEEN
function onUpdatePost()
	if curStep == 5 then
	noteTweenAlpha('az', 0, 0, 0.1, 'linear')
	noteTweenAlpha('es', 1, 0, 0.1, 'linear')
	noteTweenAlpha('pe', 2, 0, 0.1, 'linear')
	noteTweenAlpha('pesae', 3, 0, 0.1, 'linear')
end
end



-- ONE MISS DEATH THING--
function noteMiss(id, direction, noteType, isSustainNote)

if nomiss == true and difficulty == 0 then
if curStep < 1509 then
setProperty('health', 0)
	setPropertyFromClass('GameOverSubstate', 'characterName', 'impostordeath'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'kill'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'death'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'revive'); --put in mods/music/
   end
if curStep > 1537 then
setProperty('health', 0)
	setPropertyFromClass('GameOverSubstate', 'characterName', 'impostordeath'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'kill'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'death'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'revive'); --put in mods/music/
	end
end

if nomiss == true and difficulty == 1 then
end

end




--DIALOGUE STUFF--
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
		startDialogue('dialogue', 'betrayal');
	end
end