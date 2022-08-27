local xx = 2300;
local yy = 2200;
local xx2 = 2300;
local yy2 = 2200;
local ofs = 60;
local followchars = true;
local del = 0;
local del2 = 0;

function onCreate()

	makeLuaSprite('console', 'center console', 1450, 1750);
	makeLuaSprite('bg', 'reactor background', -600, -300);
	makeLuaSprite('cranes', 'upper cranes', 900, -300);
	makeLuaSprite('energyball', 'ball of big ol energy', 1200, 200);
	makeLuaSprite('bp', 'back pillars', -500, -300);
	makeLuaSprite('mp', 'middle pillars', -500, -300);
	makeLuaSprite('fp', 'front pillars', -500, -300);
	
	addLuaSprite('bg', false);
	addLuaSprite('energyball', false);
	addLuaSprite('console', false);
	addLuaSprite('cranes', false);
	addLuaSprite('bp', false);
	addLuaSprite('mp', false);
	addLuaSprite('fp', false);

--Blackout mechanic
if difficulty == 1 then
    makeLuaSprite('vignette2', 'vignettereallydark2', 0, 0);
    makeLuaSprite('vignette', 'vblackout', 0, 0);
	addLuaSprite('vignette', false);
	addLuaSprite('vignette2', false);
	setProperty('vignette2.alpha', 0);
	setProperty('vignette.alpha', 0);
	setObjectCamera('vignette', 'other');
	setObjectCamera('vignette2', 'other');
end
end

function onCreatePost()
	setObjectOrder('boyfriendGroup', 15)
	setObjectOrder('dadGroup', 16)
end

--Blackout mechanic
function onStepHit()
if curStep > 1 and getProperty('vignette2.alpha') == 0 and difficulty == 1 then
doTweenAlpha('vignettefadein','vignette2', 1, 40, 'smootherStepOut')
end
end

function onTweenCompleted(tag)
	if tag == 'vignettefadein' and difficulty == 1 then
		doTweenAlpha('blackingout','vignette', 1, 40, 'smootherStepOut')
end
end
--end of  blackout mechanic


function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end