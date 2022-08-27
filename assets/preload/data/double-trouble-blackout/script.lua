local allowCountdown = false
local reverseTime = false
didskip = false
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

bulletposY = {
	[0] = function() --left
		doTweenY('shotTweenY0', 'shot', 650, 0.01, 'linear');
	end,
	[1] = function() --down
		doTweenY('shotTweenY1', 'shot', 670, 0.01, 'linear');
	end,
	[2] = function() --up
		doTweenY('shotTweenY2', 'shot', 610, 0.01, 'linear');
	end,
	[3] = function() --right
		doTweenY('shotTweenY3', 'shot', 640, 0.01, 'linear');
	end,
}

function goodNoteHit(id, direction, noteType, isSustainNote, character, animId, forced) --making the shot from hank's gun sync position with it
	if noteType == 'Bullet_Note' then
		bulletposY[direction]() --executes functions in bulletposY array at direction
		doTweenX('shotTweenX1', 'shot', -100, 0.01, 'linear');
		doTweenX('shotTweenX2', 'shot', 2000, 0.2, 'linear');
	end
end

function noteMiss(id, direction, noteType, isSustainNote, character, animId, forced) --making the shot from hank's gun sync position with it
	if noteType == 'Bullet_Note' then
		bulletposY[direction]() --executes functions in bulletposY array at direction
		doTweenX('shotTweenX1', 'shot', -100, 0.01, 'linear');
		doTweenX('shotTweenX2', 'shot', 2000, 0.2, 'linear');
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'double-trouble');
	end
end

function onCreate()

makeLuaSprite('shot', 'tracer', 2000, 640); --da Bullet
		addLuaSprite('shot', true);

	
	end



function onCreatePost()
	makeLuaText('misses', 'Press Space to Skip Intro', 1270, 0, 500);
	addLuaText('misses');
	setTextSize('misses', 40)
	doTweenAlpha('missesgone','misses',0,5,'linear')
end


-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end

function onUpdatePost()
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') and not getProperty('startingSong') and didskip == false then
            didskip = true
			removeLuaText('misses');
            setPropertyFromClass('Conductor', 'songPosition', 19000) --time in milliseconds
            setPropertyFromClass('flixel.FlxG', 'sound.music.time', getPropertyFromClass('Conductor', 'songPosition')) --to sync the inst with the song position
            setProperty('vocals.time', getPropertyFromClass('Conductor', 'songPosition')) --to sync the vocals with the song position
    end
	if curStep > 400 then
	reverseTime = true
end
end
