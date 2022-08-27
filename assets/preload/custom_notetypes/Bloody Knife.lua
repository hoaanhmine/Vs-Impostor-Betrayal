function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Bloody Knife' then 
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'bknifenotes'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0); --custom notesplash color, why not
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -20);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 1);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Bloody Knife' then
				   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'ff3030')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',0.5)
		doTweenAlpha('flTw','flash',0,0.4,'linear')
			setProperty('health', getProperty('health')-1);
		playSound('kill', 2)
		cameraShake('camGame', 0.01, 0.2);
    end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'Bloody Knife' then
	setProperty('vocals.volume', 100);
			characterPlayAnim('boyfriend', 'dodge', true);
		setProperty('boyfriend.specialAnim', true);
				characterPlayAnim('dad', 'slash', true);
						setProperty('dad.specialAnim', true);
			    setProperty('health', getProperty('health') +0.0475);
		addMisses(-1);
	end
end