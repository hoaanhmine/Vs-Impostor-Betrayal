function onTimerCompleted(tag, loops, loopsLeft)
end

stepHitFuncs = { --a bunch of timed events, timed to steps
		[255] = function()
doTweenZoom('zommingsuspense', 'camGame', 1.1, 3, 'quadInOut')
	end,
			[272] = function()
			    cancelTween('zommingsuspense')
				
		   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1980,1020,'ff0000')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
			doTweenAlpha('flTw','flash',0,0.5,'smootherInOut')
		
		noteTweenX('lee', 4, 412, 0.0001, 'smootherStepOut')
	noteTweenX('dff', 5, 524, 0.0001, 'smootherStepOut')
	noteTweenX('uvv', 6, 636, 0.001, 'smootherStepOut')
	noteTweenX('rzz', 7, 748, 0.001, 'smootherStepOut')
			noteTweenX('leftnotegone', 0, -150, 0.00000003, 'smootherStepOut')
	noteTweenX('downnotegone', 1, -150, 0.00000000003, 'smootherStepOut')
	noteTweenX('upnotegone', 2, 1500, 0.0000003, 'smootherStepOut')
	noteTweenX('rightnotegone', 3, 1500, 0.00000003, 'smootherStepOut')
	
	setProperty('timeTxt.visible', false)
	doTweenColor('timegored', 'timeBar', 'ed2828', 0.001, 'linear')
	end,
	
	[300] = function()
	
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'35373b')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.2,'linear')
		cameraShake('camGame', 0.01, 0.2);

	end,
	
		[301] = function()
	
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'35373b')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.2,'linear')
		cameraShake('camGame', 0.01, 0.2);

	end,
	
		[302] = function()
	
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'35373b')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.2,'linear')
		cameraShake('camGame', 0.01, 0.2);

	end,
	
		[303] = function()
		doTweenAlpha('redout', 'shapered', 0, 0.01, 'linear')
		doTweenColor('timegored', 'timeBar', '35373b', 0.001, 'linear')
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'35373b')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.2,'linear')
		cameraShake('camGame', 0.01, 0.2);

	end,
	
			[332] = function()
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'ed2828')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.2,'linear')
		cameraShake('camGame', 0.01, 0.2);

	end,
	
		
			[334] = function()
					doTweenAlpha('redin', 'shapered', 100, 0.01, 'linear')
					doTweenColor('timegored', 'timeBar', 'ed2828', 0.001, 'linear')
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'ed2828')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.2,'linear')
		cameraShake('camGame', 0.01, 0.2);

	end,
	
			[396] = function()
	
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'35373b')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.2,'linear')
		cameraShake('camGame', 0.01, 0.2);

	end,
	
		[398] = function()
		doTweenAlpha('redout', 'shapered', 0, 0.01, 'linear')
					   makeLuaSprite('flash', '', 0, 0);
					   doTweenColor('timegored', 'timeBar', '35373b', 0.001, 'linear')
        makeGraphic('flash',1920,1080,'35373b')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.2,'linear')
		cameraShake('camGame', 0.01, 0.2);

	end,
	
				[684] = function()
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'ed2828')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.2,'linear')
		cameraShake('camGame', 0.01, 0.2);

	end,
				[685] = function()
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'ed2828')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.2,'linear')
		cameraShake('camGame', 0.01, 0.2);

	end,
				[686] = function()
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'ed2828')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.2,'linear')
		cameraShake('camGame', 0.01, 0.2);

	end,
				[687] = function()
					doTweenAlpha('redin', 'shapered', 100, 0.01, 'linear')
					   makeLuaSprite('flash', '', 0, 0);
					   doTweenColor('timegored', 'timeBar', 'ed2828', 0.001, 'linear')
        makeGraphic('flash',1920,1080,'ed2828')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.2,'linear')
		cameraShake('camGame', 0.01, 0.2);

	end,
	
				[700] = function()
	
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'35373b')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.2,'linear')
		cameraShake('camGame', 0.01, 0.2);

	end,
	
		[702] = function()
		doTweenAlpha('redout', 'shapered', 0, 0.01, 'linear')
					   makeLuaSprite('flash', '', 0, 0);
					   doTweenColor('timegored', 'timeBar', '35373b', 0.001, 'linear')
        makeGraphic('flash',1920,1080,'35373b')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.2,'linear')
		cameraShake('camGame', 0.01, 0.2);

	end,
	
						[907] = function()
		doTweenAlpha('bige', 'glitch', 70, 100, 'linear')

	end,
	
					[908] = function()
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'ed2828')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.2,'linear')
		cameraShake('camGame', 0.01, 0.2);

	end,
				[910] = function()
				doTweenAlpha('bigone', 'glitch', 0, 0.01, 'linear')
					doTweenAlpha('redin', 'shapered', 100, 0.01, 'linear')
					   makeLuaSprite('flash', '', 0, 0);
					   doTweenColor('timegored', 'timeBar', 'ed2828', 0.001, 'linear')
        makeGraphic('flash',1920,1080,'ed2828')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.2,'linear')
		cameraShake('camGame', 0.01, 0.2);

	end,
	
					[1164] = function()
	
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'35373b')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.2,'linear')
		cameraShake('camGame', 0.01, 0.2);

	end,
	
						[1165] = function()
	
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'35373b')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.2,'linear')
		cameraShake('camGame', 0.01, 0.2);

	end,
	
						[1166] = function()
	
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'35373b')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.2,'linear')
		cameraShake('camGame', 0.01, 0.2);

	end,
	
	
		[1167] = function()
		 doTweenColor('timegored', 'timeBar', '000000', 0.001, 'linear')
		setCharacterX('boyfriend', -190)
		setCharacterY('boyfriend', 32000000000)
	triggerEvent('Change Character', 1, 'shapeshifterdark');
		doTweenAlpha('redout', 'shapered', 0, 0.01, 'linear')
		doTweenAlpha('redouta', 'shapegray', 0, 0.01, 'linear')
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'35373b')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.2,'linear')
		cameraShake('camGame', 0.01, 0.2);

	end,
	
					[1420] = function()
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'ed2828')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.2,'linear')
		cameraShake('camGame', 0.01, 0.2);

	end,
	
						[1421] = function()
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'ed2828')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.2,'linear')
		cameraShake('camGame', 0.01, 0.2);

	end,
	
							[1422] = function()
					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'ed2828')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.2,'linear')
		cameraShake('camGame', 0.01, 0.2);

	end,
	

				[1423] = function()
				addLuaSprite('vignette', true);
				doTweenColor('timegored', 'timeBar', 'ed2828', 0.001, 'linear')
						setCharacterX('boyfriend', -190)
		setCharacterY('boyfriend', 420)
			triggerEvent('Change Character', 0, 'bffoward');
	triggerEvent('Change Character', 1, 'shapeshifter');
		doTweenAlpha('redout', 'shapered', 100, 0.01, 'linear')
		doTweenAlpha('redouta', 'shapegray', 100, 0.01, 'linear')

					   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'ed2828')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'other');
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.2,'linear')
		cameraShake('camGame', 0.01, 0.2);

	end,
}

function onStepHit()
    if stepHitFuncs[curStep] then 
        stepHitFuncs[curStep]() -- Executes function at curStep in stepHitFuncs
    end
end