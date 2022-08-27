function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Knife' then 
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'knifenotes'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0); --custom notesplash color, why not
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -20);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 1);


			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
			
			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
				
			end
			
		end
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Knife' then
	
if not botPlay or not instakill then
	playSound('kill', 0.5)
				   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'ff3030')
	      addLuaSprite('flash', true);
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',0.8)
		doTweenAlpha('flTw','flash',0,0.4,'linear')
			setProperty('health', getProperty('health')-1);
		runTimer('bleed', 0.2, 40);
		characterPlayAnim('boyfriend', 'hurt', true);
		setProperty('boyfriend.specialAnim', true);
				cameraShake('camGame', 0.01, 0.2);
				
elseif botPlay or instakill then

						characterPlayAnim('boyfriend', 'dodge', true);
		setProperty('boyfriend.specialAnim', true);
				objectPlayAnimation('secondDad','slash',true);
end




	end

end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'Knife' then
	
setProperty('vocals.volume', 100);
		characterPlayAnim('boyfriend', 'dodge', true);
		setProperty('boyfriend.specialAnim', true);
		characterPlayAnim('dad', 'slash', true);
		setProperty('dad.specialAnim', true);
				objectPlayAnimation('secondDad','slash',true);
			    setProperty('health', getProperty('health') +0.0475);
		addMisses(-1);	
	end
	
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'bleed' and loopsLeft >= 1 then
	        if getProperty('health') > 0.1 then
            setProperty('health', health-0.01);
	end
end
end