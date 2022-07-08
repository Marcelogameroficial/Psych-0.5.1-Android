currentDifficulty ="Port por Nickobelit" ;

function onCreate()
    makeLuaText("Port por Nickobelit",currentDifficulty, 0, 990, 670);
    setTextAlignment("Port por Nickobelit", 'left');
    setTextSize("Port por Nickobelit", 18);
    setTextBorder("Port por Nickobelit", 1, 'FF0000');
    addLuaText( "Port por Nickobelit");
end

function onCreatePost()
    setProperty('timeBar.y', getProperty('timeBar.y')  -10);
    setProperty('timeTxt.y', getProperty('timeTxt.y')  -10);
end

function onUpdate(elapsed)
    currentDifficulty = getProperty("Port por Nickobelit");
end