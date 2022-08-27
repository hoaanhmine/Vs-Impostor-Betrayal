local charsloaded = 6;
local xx = 650
local yy = 600
local xx2 = 650
local yy2 = 600
local xx3 = 650
local yy3 = 600
local xx4 = 650
local yy4 = 600
local ofs = 30
local zoomshit = 0;
local followchars = true
local camSpeed = 4;
local camInt = 1;
function onCreate()

	makeLuaSprite('polussky', 'polus/polusSky', -600, -300)
	makeLuaSprite('therock', 'polus/polusrocks', -600, -300);
	makeLuaSprite('polusground', 'polus/polusGround', -360, 560);
	makeLuaSprite('warehouse', 'polus/polusWarehouse', -360, 50);
	makeLuaSprite('polushills', 'polus/polusHills', -760, 50);
makeAnimatedLuaSprite('speakers','characters/speakers',300, 150)
addAnimationByPrefix('speakers', 'idle', 'GF Dancing Beat', 24, true)

		makeAnimatedLuaSprite('secondDad','characters/impostor3',-150, 550)
		addAnimationByPrefix('secondDad','idle','impostor idle',24,false);
		addAnimationByPrefix('secondDad','singLEFT','imposter left',24,false);
		addAnimationByPrefix('secondDad','singRIGHT','impostor right',24,false);
		addAnimationByPrefix('secondDad','singUP','impostor up2',24,false);
		addAnimationByPrefix('secondDad','singDOWN','impostor down',24,false);
		addAnimationByPrefix('secondDad','slash','impostor attack',24,false);
		objectPlayAnimation('secondDad','idle',true);

	addLuaSprite('polussky', false);
	addLuaSprite('therock', false);
	addLuaSprite('polushills', false);
	addLuaSprite('warehouse', false);
	addLuaSprite('polusground', false);
	addLuaSprite('speakers', false);
	addLuaSprite('secondDad', false);
		setObjectOrder('gfGroup', 15)
		setObjectOrder('secondDad', 16)


end

function onBeatHit()
objectPlayAnimation('speakers','idle',true)
if curBeat % 2 == 0 then
		if getProperty('secondDad.animation.curAnim.name') == 'idle' then
			objectPlayAnimation('secondDad','idle',true)

	        setProperty('secondDad.offset.x',0)
	        setProperty('secondDad.offset.y',0)
		end

	end
end


function onUpdate()
	for i = 0, getProperty('notes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('notes', i, 'noteType') == 'Second Dad Sing' then

			if getPropertyFromGroup('notes', i, 'mustPress') then
				if getPropertyFromGroup('notes', i, 'strumTime') <= getSongPosition() then --Doesn't let Dad/Opponent notes get ignored
					nd = getPropertyFromGroup('notes', i, 'noteData')
					triggerEvent('dad2sing',nd,'')
					--objectPlayAnimation('secondDad',nd,true)
				end
			end
		end
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
    end

end


local  u = 0

function goodNoteHit(id, noteData, noteType, isSustainNote)

	if noteType == 'Knife' then
				objectPlayAnimation('secondDad','slash',true);
				setProperty('secondDad.offset.x',-20)
                setProperty('secondDad.offset.y',45)
                triggerEvent('Camera Follow Pos',xx3+ofs,yy3)
runTimer('slashgobackidle', 0.6, 1)
	end


	followchars = true

end

function opponentNoteHit(id, noteData, noteType, isSustainNote)

	followchars = true
	if noteType == 'Both Dads Sing' or noteType == 'Second Dad Sing' then
		followchars = false
		triggerEvent('dad2sing',noteData,'')

	end
end


function onTimerCompleted(t,l,ll)
	if t == 'dadhold' .. u then
			objectPlayAnimation('secondDad','idle',true)

                setProperty('secondDad.offset.x',0)
                setProperty('secondDad.offset.y',0)
	end
	
	if t == 'slashgobackidle' then
			objectPlayAnimation('secondDad','idle',true)
			
			 setProperty('secondDad.offset.x',0)
                setProperty('secondDad.offset.y',0)
	end
end

function onEvent( name, value1,value2)
	if name == 'Camera Zoom Speed' then
		camSpeed = value1
		camInt = value2
	end
	if name == 'Set GF Speed' then
	setProperty('gf.visible', true);
	end
	if name == 'stopbf' then
	setProperty('boyfriend.stunned', true);
	end
	if name == 'gobf' then
	setProperty('boyfriend.stunned', false);
	end
	
	if name == "dad2sing" then

		cancelTimer('dadhold' .. u, 0.3, 1)
		u = u + 1
		runTimer('dadhold' .. u, 0.3, 1)

		if value1 == '0' then
			objectPlayAnimation('secondDad','singLEFT',true)
                setProperty('secondDad.offset.x',70)
                setProperty('secondDad.offset.y',20)
                triggerEvent('Camera Follow Pos',xx3-ofs,yy3)
		end
		if value1 == '1' then
			objectPlayAnimation('secondDad','singDOWN',true)
                setProperty('secondDad.offset.x',-90)
                setProperty('secondDad.offset.y',-20)
                triggerEvent('Camera Follow Pos',xx3,yy3+ofs)
		end
		if value1 == '2' then
			objectPlayAnimation('secondDad','singUP',true)
                setProperty('secondDad.offset.x',240)
                setProperty('secondDad.offset.y',85)
                triggerEvent('Camera Follow Pos',xx3,yy3-ofs)
		end
		if value1 == '3' then
			objectPlayAnimation('secondDad','singRIGHT',true)
                setProperty('secondDad.offset.x',-95)
                setProperty('secondDad.offset.y',-15)
                triggerEvent('Camera Follow Pos',xx3+ofs,yy3)
		end
		
	
	end
	
end
   

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'Knife' then
				objectPlayAnimation('secondDad','slash',true);
				setProperty('secondDad.offset.x',-20)
                setProperty('secondDad.offset.y',45)
                triggerEvent('Camera Follow Pos',xx3+ofs,yy3)
runTimer('slashgobackidle', 0.6, 1)
	end
end	