function onCreate()
    makeLuaSprite('vignette2', 'vignettereallydark2', 0, 0);
    makeLuaSprite('vignette', 'vblackout', 0, 0);
	
	addLuaSprite('vignette', false);
	addLuaSprite('vignette2', flase);
	setProperty('vignette2.alpha', 0);
	setProperty('vignette.alpha', 0);
	setObjectCamera('vignette', 'other');
	setObjectCamera('vignette2', 'other');
	
	end

function onStepHit()
if curStep > 1 and getProperty('vignette2.alpha') == 0 then
doTweenAlpha('vignettefadein','vignette2', 1, 40, 'smootherStepOut')
end
end

function onTweenCompleted(tag)
	if tag == 'vignettefadein' then
		doTweenAlpha('blackingout','vignette', 1, 40, 'smootherStepOut')
end
end