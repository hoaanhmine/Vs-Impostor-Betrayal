function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Power Notes' then 
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'powernotes'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0); 
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -20);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 1);
			
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has penalties
			end
		end
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Power Notes' then
		characterPlayAnim('boyfriend', 'hey', true);
		setProperty('boyfriend.specialAnim', true);
doTweenAlpha('vignettefadeout','vignette2', 0, 0.3, 'smootherStepOut')
doTweenAlpha('fadingin','vignette', 0, 0.3, 'smootherStepOut')
cancelTween('vignettefadein')
cancelTween('blackingout')
cameraShake('camGame', 0.01, 0.2)
    end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'Power Notes' then
				    setProperty('health', getProperty('health') +0.0475);
		addMisses(-1);
	end
end