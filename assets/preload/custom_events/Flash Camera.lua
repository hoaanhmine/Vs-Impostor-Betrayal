function onEvent(n,v1,v2)


	if n == 'Flash Camera' then
 
 if getPropertyFromClass('ClientPrefs', 'flashing') == true then
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
	end
	
	end


end
