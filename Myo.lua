scriptId = 'com.thalmic.examples.outputeverything'
scriptTitle = "HackUMass"
scriptDetailsUrl = "" -- We don't have this until it's submitted to the Myo Market

function onPoseEdge(pose, edge)
	myo.unlock("hold")
	myo.controlMouse(true)
    myo.debug("onPoseEdge: " .. pose .. ", " .. edge)  
    if(pose == "fingersSpread" and edge == "on") then
    	myo.debug("Centered")
    	myo.centerMousePosition()
    elseif(pose == "fist" edge == "on") then
        myo.keyboard("r", "press")
    elseif(pose == "waveOut" and edge == "on") then
    	myo.mouse("left", "down")
    elseif(pose == "waveOut" and edge == "off") then
    	myo.mouse("left", "up")
    else
    	myo.debug("else")
    end

end

function onPeriodic()
end

function onForegroundWindowChange(app, title)
    myo.debug("onForegroundWindowChange: " .. app .. ", " .. title)
    return true
end

function activeAppName()
    return "HackUMass"
end
function
 onActiveChange(isActive)
    myo.debug("onActiveChange")
end