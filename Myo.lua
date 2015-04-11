scriptId = 'com.thalmic.examples.outputeverything'
scriptTitle = "HackUMass"
scriptDetailsUrl = "" -- We don't have this until it's submitted to the Myo Market

function onPoseEdge(pose, edge)
	myo.unlock("hold")
    myo.debug("onPoseEdge: " .. pose .. ", " .. edge)  
    if(pose == "doubleTab" and edge == "off") then
    	myo.lock()
    elseif(pose == "fist" and edge == "on") then
    	myo.mouse("right", "click")
    else
    	myo.debug("hello")
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