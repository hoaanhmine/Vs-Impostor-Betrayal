function onEvent(n,v1,v2)


	if n == 'Knife' then

		characterPlayAnim('boyfriend', 'dodge', true);
		setProperty('boyfriend.specialAnim', true);
		characterPlayAnim('dad', 'slash', true);
		setProperty('dad.specialAnim', true);
				objectPlayAnimation('secondDad','slash',true);



end
end

