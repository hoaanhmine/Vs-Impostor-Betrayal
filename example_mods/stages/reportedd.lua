local xx = 450; 
local yy = 800; 

local xx2 = 980; 
local yy2 = 800; 

local xx3 = 450; 
local yy3 = 800; 

local xx4 = 450; 
local yy4 = -1180; 

local ofs = 45; 
local followchars = true; 
local del = 0;
local del2 = 0;

function onCreate()

	makeLuaSprite('sky', 'polusSkyRE', -910, -3000);
	
	makeLuaSprite('bg', 'refloor', -2390, -2700);
	scaleObject('bg', 1.3, 1.3)
	
	makeLuaSprite('f2', 'f2', -1390, -600);
	makeLuaSprite('f1', 'f1', -1390, -600);
	
	makeLuaSprite('bar', 'transitionbar', -810, -2100);
	scaleObject('bar', 1, 2)
	
makeAnimatedLuaSprite('gf','characters/gf',360, 330)
addAnimationByPrefix('gf', 'idlel', 'gfleftidle', 24, true)
addAnimationByPrefix('gf', 'idler', 'gfrightidle', 24, true)
	
makeAnimatedLuaSprite('gr','characters/greenre',1200, 430)
addAnimationByPrefix('gr', 'idle', 'green idle', 24, true)
addAnimationByPrefix('gr', 'huh', 'green huh', 24, true)
addAnimationByPrefix('gr', 'idle2', 'green altidle', 24, true)

makeAnimatedLuaSprite('yl','characters/yellowre',-100, 420)
addAnimationByPrefix('yl', 'idle', 'yellow idle', 24, true)
addAnimationByPrefix('yl', 'huh', 'yellow huh', 24, true)
addAnimationByPrefix('yl', 'idle2', 'yellow altidle', 24, true)

makeAnimatedLuaSprite('g','characters/grayre',-1000, 330)
addAnimationByPrefix('g', 'idle', 'gidle', 24, true)
addAnimationByPrefix('g', 'end', 'gend', 24, true)

makeAnimatedLuaSprite('m','characters/maroonre',-700, 330)
addAnimationByPrefix('m', 'idle', 'midle', 24, true)
addAnimationByPrefix('m', 'end', 'mend', 24, true)

	addLuaSprite('sky', false);
	addLuaSprite('bg', false);
	addLuaSprite('sky', false);
	addLuaSprite('f2', false);
	addLuaSprite('f1', true);
	addLuaSprite('gr', false);
	addLuaSprite('yl', false);
	addLuaSprite('gf', false);
	addLuaSprite('bar', false);

end

function noteMiss(id, direction, noteType, isSustainNote)

if curStep > 936 then
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

--function onUpdatePost()
--if curStep > 1 then
--for i=0, getProperty('notes.length')-1 do
--		if getPropertyFromGroup('notes', i, 'noteType') == 'Move' then

--            local noteData = getPropertyFromGroup('notes', i, 'noteData');
--			local noteX = getPropertyFromGroup('notes', i, 'x');
--			local noteY = getPropertyFromGroup('notes', i, 'y');
--			local noteA = getPropertyFromGroup('notes', i, 'alpha');
			
--			noteX = getProperty('bg'..directions[noteData + 1])
			
--			setPropertyFromGroup('notes', i, 'x', noteX)
			--setPropertyFromGroup('notes', i, 'y', noteY)
			--setPropertyFromGroup('notes', i, 'alpha', noteA)
--end
--end
--end
--end

function onCreatePost()
	triggerEvent('Camera Follow Pos', 450, -2480);
	end

function onBeatHit()


if curBeat % 2 == 0 then
objectPlayAnimation('gf','idlel',true)


if curStep < 1600 then
objectPlayAnimation('g','idle',true)
objectPlayAnimation('m','idle',true)
end

if curStep < 912 then
objectPlayAnimation('gr','idle',true)
objectPlayAnimation('yl','idle',true)
end

if curStep > 943 then
objectPlayAnimation('gr','idle2',true)
objectPlayAnimation('yl','idle2',true)
end



setProperty('gf.offset.y',4)
end

if curBeat % 2 == 1 then
objectPlayAnimation('gf','idler',true)
	        setProperty('gf.offset.y',0)
end

end

function onTimerCompleted(tag, loops, loopsLeft)
end

stepHitFuncs = { --a bunch of timed events, timed to steps

    [255] = function()
		
setProperty('defaultCamZoom', 0.8)

	end,
	
	[260] = function()
		
setProperty('defaultCamZoom', 0.9)

	end,
	
	[264] = function()
		
setProperty('defaultCamZoom', 1)

	end,
	
	[268] = function()
		
setProperty('defaultCamZoom', 1.1)

	end,
	
	[272] = function()
		
setProperty('defaultCamZoom', 0.7)

	end,

		[888] = function()
		
		setCharacterX('gf', 180)
		setCharacterY('gf', 480)

	end,
	
		[911] = function()
		
	
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
		
		triggerEvent('Camera Follow Pos', 650, 700);
		
		    addLuaSprite('m', false);
	addLuaSprite('g', false);
		
		
 xx = -800; 
 yy = 800; 

		setCharacterX('dad', -1150)
		setCharacterY('dad', 470)

	end,
	
	[912] = function()
		objectPlayAnimation('gr','huh',true)
objectPlayAnimation('yl','huh',true)
	
	end,
	
	
	[928] = function()
	noteTweenX('l', 4, 612, 0.2, 'smootherStepOut')
	noteTweenX('d', 5, 724, 0.2, 'smootherStepOut')
	noteTweenX('u', 6, 836, 0.2, 'smootherStepOut')
	noteTweenX('r', 7, 948, 0.2, 'smootherStepOut')
	
	noteTweenAlpha('a32', 4, 0.8, 0.2, 'smootherStepOut')
	noteTweenAlpha('e32', 5, 0.8, 0.2, 'smootherStepOut')
	noteTweenAlpha('p32', 6, 0.8, 0.2, 'smootherStepOut')
	noteTweenAlpha('h32', 7, 0.8, 0.2, 'smootherStepOut')
	
	noteTweenAlpha('a', 0, 0.6, 0.2, 'smootherStepOut')
	noteTweenAlpha('e', 1, 0.6, 0.2, 'smootherStepOut')
	noteTweenAlpha('p', 2, 0.6, 0.2, 'smootherStepOut')
	noteTweenAlpha('h', 3, 0.6, 0.2, 'smootherStepOut')
	
	doTweenAlpha('gone','healthBar',0.6,0.2,'smootherInOut')
		doTweenAlpha('goane','healthBarBG',0.6,0.2,'smootherInOut')
	doTweenAlpha('ga','timeBar',0.6,0.2,'smootherInOut')
		doTweenAlpha('ga','timeBarBG',0.6,0.2,'smootherInOut')
	doTweenAlpha('ge','timeTxt',0.6,0.2,'smootherInOut')
	doTweenAlpha('gax','iconP1',0.6,0.2,'smootherInOut')
	doTweenAlpha('gez','iconP2',0.6,0.2,'smootherInOut')
	doTweenAlpha('geze','scoreTxt',0.6,0.2,'smootherInOut')
	
		doTweenAlpha('bgtween', 'bg', 0.8, 0.2);
		doTweenZoom('z', 'camGame', 0.8, 0.2);		

	end,
	[932] = function()
	noteTweenX('l', 4, 512, 0.2, 'smootherStepOut')
	noteTweenX('d', 5, 624, 0.2, 'smootherStepOut')
	noteTweenX('u', 6, 736, 0.2, 'smootherStepOut')
	noteTweenX('r', 7, 848, 0.2, 'smootherStepOut')
	
		noteTweenAlpha('a32x', 4, 0.9, 0.2, 'smootherStepOut')
	noteTweenAlpha('e32x', 5, 0.9, 0.2, 'smootherStepOut')
	noteTweenAlpha('p32x', 6, 0.9, 0.2, 'smootherStepOut')
	noteTweenAlpha('h32x', 7, 0.9, 0.2, 'smootherStepOut')
	
		noteTweenAlpha('a2', 0, 0.3, 0.2, 'smootherStepOut')
	noteTweenAlpha('e2', 1, 0.3, 0.2, 'smootherStepOut')
	noteTweenAlpha('p2', 2, 0.3, 0.2, 'smootherStepOut')
	noteTweenAlpha('h2', 3, 0.3, 0.2, 'smootherStepOut')
	
		doTweenAlpha('gonXe','healthBar',0.3,0.2,'smootherInOut')
		doTweenAlpha('goXne','healthBarBG',0.3,0.2,'smootherInOut')
	doTweenAlpha('gav','timeBar',0.3,0.2,'smootherInOut')
		doTweenAlpha('vga','timeBarBG',0.3,0.2,'smootherInOut')
	doTweenAlpha('gve','timeTxt',0.3,0.2,'smootherInOut')
	doTweenAlpha('gzax','iconP1',0.3,0.2,'smootherInOut')
	doTweenAlpha('gexz','iconP2',0.3,0.2,'smootherInOut')
	doTweenAlpha('geyuze','scoreTxt',0.3,0.2,'smootherInOut')
				doTweenAlpha('bgtween2', 'bg', 0.6, 0.2);
		doTweenZoom('z2', 'camGame', 0.85, 0.2);

	end,
	[936] = function()
	noteTweenX('l', 4, 412, 0.2, 'smootherStepOut')
	noteTweenX('d', 5, 524, 0.2, 'smootherStepOut')
	noteTweenX('u', 6, 636, 0.2, 'smootherStepOut')
	noteTweenX('r', 7, 748, 0.2, 'smootherStepOut')
	
		noteTweenAlpha('a32c', 4, 1, 0.2, 'smootherStepOut')
	noteTweenAlpha('e3v2', 5, 1, 0.2, 'smootherStepOut')
	noteTweenAlpha('pd32b', 6, 1, 0.2, 'smootherStepOut')
	noteTweenAlpha('hd32', 7, 1, 0.2, 'smootherStepOut')
	
	noteTweenAlpha('a3', 0, 0, 0.2, 'smootherStepOut')
	noteTweenAlpha('e3', 1, 0, 0.2, 'smootherStepOut')
	noteTweenAlpha('p3', 2, 0, 0.2, 'smootherStepOut')
	noteTweenAlpha('h3', 3, 0, 0.2, 'smootherStepOut')
	
				doTweenAlpha('gon4Xe','healthBar',0,0.2,'smootherInOut')
		doTweenAlpha('go4Xne','healthBarBG',0,0.2,'smootherInOut')
	doTweenAlpha('ga1v','timeBar',0,0.2,'smootherInOut')
		doTweenAlpha('v2ga','timeBarBG',0,0.2,'smootherInOut')
	doTweenAlpha('gv6e','timeTxt',0,0.2,'smootherInOut')
	doTweenAlpha('gz5ax','iconP1',0,0.2,'smootherInOut')
	doTweenAlpha('ger7xz','iconP2',0,0.2,'smootherInOut')
	doTweenAlpha('gey96uze','scoreTxt',0,0.2,'smootherInOut')
				doTweenAlpha('bgtween3', 'bg', 0.4, 0.2);
		doTweenZoom('z3', 'camGame', 0.9, 0.2);
		runTimer('bgnormal', 1, 1)
		function onTimerCompleted(tag, loops, loopsLeft)
			if tag == 'bgnormal' then
				doTweenAlpha('bgtween4', 'bg', 1, 2);
			end
		end
	end,
	
			[1072] = function()

			   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'ff3030')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',0.5)
		doTweenAlpha('flTw','flash',0,0.5,'linear')
		

	end,
	
			[1584] = function()
		
		noteTweenAlpha('a32cc', 4, 0, 0.6, 'smootherStepOut')
	noteTweenAlpha('e3cv2', 5, 0, 0.6, 'smootherStepOut')
	noteTweenAlpha('pdc32b', 6, 0, 0.6, 'smootherStepOut')
	noteTweenAlpha('hdc32', 7, 0, 0.6, 'smootherStepOut')

		

	end,
	
		[1600] = function()
		
		setProperty('defaultCamZoom', 0.8)

objectPlayAnimation('g','end',true)
objectPlayAnimation('m','end',true)
		

	end,
	
			[1607] = function()
		
		setProperty('defaultCamZoom', 0.95)
							   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'ff3030')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',0.5)
		doTweenAlpha('flTw','flash',0,0.5,'linear')
		
		cameraShake('camGame', 0.01, 0.2);


	end,
	
				[1633] = function()
		
		setProperty('defaultCamZoom', 0.75)
		cameraShake('camGame', 0.01, 0.2);
	


	end,
	
}

function onStepHit()
    if stepHitFuncs[curStep] then 
        stepHitFuncs[curStep]() -- Executes function at curStep in stepHitFuncs
    end
end



