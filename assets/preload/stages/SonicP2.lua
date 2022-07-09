function onCreate()
	-- get the fuck out
	
	
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'exe_gameover');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'exe_gameOverEnd');

	makeLuaSprite('YCR_sky', 'SonicP2/sky', -1000, -500);
	makeLuaSprite('YCR_floor', 'SonicP2/ground', -500, -100)
	makeLuaSprite('YCR_trees', 'SonicP2/trees', -500, -100)
	makeLuaSprite('YCR_backtrees', 'SonicP2/backtrees', -500, -200)
	makeAnimatedLuaSprite('p3_Stats', 'SonicP2/P3_SonicStat', -600, 0);
	addAnimationByPrefix('p3_Stats','busk','TitleMenuSSBG instance 1',24,true)
	makeAnimatedLuaSprite('staticBACKGROUND2', 'SonicNewLoc/staticBACKGROUND2', -345, 0);
	addAnimationByPrefix('staticBACKGROUND2', 'staticBACKGROUND2', 'menuSTATICNEW instance',24,true);
	scaleObject('staticBACKGROUND2', 1.35, 1.35);
	scaleObject('p3_Stats', 5.5, 5.5);
	setProperty('p3_Stats.visible', false);
	setProperty('staticBACKGROUND2.visible', false);
	scaleObject('YCR_sky', 2.0, 2.0);
	setScrollFactor('YCR_sky', 0.9, 0.9);
	setScrollFactor('YCR_backtrees', 1.05, 1.0);
	setScrollFactor('YCR_trees', 1.025, 1.0);
	setProperty('YCR_sky.antialiasing', true);
	setProperty('p3_Stats.antialiasing', true);
	setProperty('YCR_backtrees.antialiasing', true);
	setProperty('YCR_floor.antialiasing', true);
	setProperty('YCR_trees.antialiasing', true);
	
	addLuaSprite('staticBACKGROUND2', false)
	addLuaSprite('YCR_sky', false)
	addLuaSprite('p3_Stats', false)
	addLuaSprite('YCR_backtrees', false)
	addLuaSprite('YCR_trees', false)
	addLuaSprite('YCR_floor', false)
end


function onBeatHit()

     if curBeat %1 == 0 then

        setProperty('timeBar.color', getColorFromHex('800000'))-- put the hex code for the color here
     end

     if curBeat %2 == 0 then

        setProperty('timeBar.color', getColorFromHex('800000'))-- put the hex code for the color here

     end

end

function onStepHit()
	if curStep == 528 then
		triggerEvent('Change Character', 'bf', 'bf-pixel-sonic');

		triggerEvent('Change Character', 'gf', 'gf-pixel-sonic');

		triggerEvent('Change Character', 'dad', 'PixelExe1');

		setCharacterX('boyfriend', 1150);

		setCharacterY('boyfriend', -160);

		setCharacterX('dad', 150);

		setCharacterY('dad', -130);

		setCharacterX('gf', 440);

		setCharacterY('gf', -200);

		setProperty('YCR_sky.visible', false);
		setProperty('YCR_floor.visible', false);
		setProperty('YCR_trees.visible', false);
		setProperty('YCR_backtrees.visible', false);

		makeLuaSprite('thefrickinbg2', 'SonicP2/greenhillsbiggggg', -572, -426);
		setProperty('thefrickinbg2.antialiasing', false);
		
		makeLuaSprite('idklol', 'idkwatisdis', 0, 0);
		setObjectCamera('idklol', 'other');
		
		makeLuaSprite('black_vignette', 'black_vignette', 0, 0);
		setObjectCamera('black_vignette', 'other');
		setProperty('black_vignette.visible', false);

		addLuaSprite('thefrickinbg2', false);

		addLuaSprite('idklol', true);
		addLuaSprite('black_vignette', true)
		
		setPropertyFromGroup('playerStrums', 0, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('playerStrums', 1, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('playerStrums', 2, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('playerStrums', 3, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('opponentStrums', 0, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('opponentStrums', 1, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('opponentStrums', 2, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('opponentStrums', 3, 'texture', 'PIXEL_NOTE_assets');
	
	end
	if curStep == 767 then
		setProperty('idklol.visible', false);
		triggerEvent('Change Character', 'dad', 'PixelExe2');
	end
	if curStep == 783 then
		triggerEvent('Change Character', 'bf', 'bf2');

		triggerEvent('Change Character', 'dad', 'ycr-mad');
		
		triggerEvent('Change Character', 'gf', 'GF_tied');

		setCharacterX('boyfriend', 830);

		setCharacterY('boyfriend', 100);

		setCharacterX('dad', 30);

		setCharacterY('dad', 165);

		setCharacterX('gf', 110);

		setCharacterY('gf', 80);
		
		setProperty('p3_Stats.visible', true);
		setProperty('YCR_floor.visible', true);
		setProperty('YCR_trees.visible', true);
		setProperty('YCR_backtrees.visible', true);
		setProperty('thefrickinbg2.visible', false);
		
		setPropertyFromGroup('playerStrums', 0, 'texture', 'blood_notes');
		setPropertyFromGroup('playerStrums', 1, 'texture', 'blood_notes');
		setPropertyFromGroup('playerStrums', 2, 'texture', 'blood_notes');
		setPropertyFromGroup('playerStrums', 3, 'texture', 'blood_notes');
		setPropertyFromGroup('opponentStrums', 0, 'texture', 'blood_notes');
		setPropertyFromGroup('opponentStrums', 1, 'texture', 'blood_notes');
		setPropertyFromGroup('opponentStrums', 2, 'texture', 'blood_notes');
		setPropertyFromGroup('opponentStrums', 3, 'texture', 'blood_notes');

		setProperty('thefrickinbg2.visible', false);
    end
	if curStep == 911 then
		setProperty('p3_Stats.visible', false);
		setProperty('staticBACKGROUND2.visible', true);
	end
	if curStep == 1039 then
		setProperty('vg.visible', false);
		
		makeLuaSprite('backtrees', 'SonicNewLoc/backtrees', -440, -210);
		setLuaSpriteScrollFactor('backtrees', 1, 1);
		scaleObject('backtrees', 1.0, 1.0);

		makeLuaSprite('Trees', 'SonicNewLoc/Trees', -510, -270);
		setLuaSpriteScrollFactor('Trees', 1, 1);
		scaleObject('Trees', 1.2, 1.2);

		makeLuaSprite('ground', 'SonicNewLoc/ground', -625, -160);
		setLuaSpriteScrollFactor('ground', 1.0, 1);
		scaleObject('ground', 1.1, 1.1);
		
		
		setProperty('YCR_floor.visible', false);
		setProperty('YCR_trees.visible', false);
		setProperty('YCR_backtrees.visible', false);
		setProperty('p3_Stats.visible', false);
		setProperty('black_vignette.visible', true);
		
		addLuaSprite('backtrees', false);
		addLuaSprite('Trees', false);
		addLuaSprite('ground', false);
	end
end