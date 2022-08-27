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

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'double-trouble');
	end
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
            setPropertyFromClass('Conductor', 'songPosition', 21000) --time in milliseconds
            setPropertyFromClass('flixel.FlxG', 'sound.music.time', getPropertyFromClass('Conductor', 'songPosition')) --to sync the inst with the song position
            setProperty('vocals.time', getPropertyFromClass('Conductor', 'songPosition')) --to sync the vocals with the song position
    end
	if curStep > 400 then
	reverseTime = true
end
end

