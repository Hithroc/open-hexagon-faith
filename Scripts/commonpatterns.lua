execScript("common.lua")

-- pAltBarrage: spawns a series of cAltBarrage
function pAltBarrage(mTimes, mStep)
    delay = getPerfectDelay(THICKNESS) * 5.6
    
    for i = 0, mTimes do
        cAltBarrage(i, mStep)
        wait(delay)
    end
    
    wait(delay)
end

function pAltBarrage2(mTimes, mStep)
    delay = getPerfectDelay(THICKNESS) * 2
    
    for i = 0, mTimes do
        cAltBarrage(i, mStep)
        wait(delay)
    end
    
    wait(delay)
end

function pAltBarrageSpiral(mTimes, mStep, mDelayMult)
    delay = getPerfectDelay(THICKNESS)* 5.6 * mDelayMult
    
    for i = 0, mTimes do
        cAltBarrage(i, mStep)
        wait(delay)
    end
    
    wait(getPerfectDelay(THICKNESS) * 6.1)
end

function pcWallEx(mTimes, mSide, mExtra)
    if mExtra == 0 then delay = getPerfectDelay(THICKNESS) * 1.0
    elseif mExtra == 1 then delay = getPerfectDelay(THICKNESS) * 2.0
    elseif mExtra == 2 then delay = getPerfectDelay(THICKNESS) * 2.8
    elseif  mExtra == 3 then delay = getPerfectDelay(THICKNESS) * 3.2
    end
    for i = 0, mTimes do
        cWallEx(getRandomSide(), mExtra)
        wait(delay)
    end
    
    wait(delay)
end

function pcfastWallEx(mTimes, mSide, mExtra)
    delay = getPerfectDelay(THICKNESS) * 0.8
    for i = 0, mTimes do
        cWallEx(getRandomSide(), mExtra)
        wait(delay)
    end
    
    wait(delay)
end

function pCBarrageN(mSide, mNeighbors)
    delay = getPerfectDelay(THICKNESS) * 5.6
    cBarrageN(mSide, mNeighbors)
    wait(delay)
end

-- pMirrorSpiral: spawns a spiral of rWallEx
function pMirrorSpiral(mTimes, mExtra)
    oldThickness = THICKNESS
    THICKNESS = getPerfectThickness(THICKNESS)
    delay = getPerfectDelay(THICKNESS)
    startSide = getRandomSide()
    loopDir = getRandomDir()    
    j = 0
    
    for i = 0, mTimes do
        rWallEx(startSide + j, mExtra)
        j = j + loopDir
        wait(delay)
    end
    
    THICKNESS = oldThickness
    
    wait(getPerfectDelay(THICKNESS) * 6.5)
end

function pMirrorSpiral2(mTimes, mExtra)
    oldThickness = THICKNESS
    THICKNESS = getPerfectThickness(THICKNESS)
    delay = getPerfectDelay(THICKNESS)*2.1
    startSide = getRandomSide()
    loopDir = getRandomDir()    
    j = 0
    
    for i = 0, mTimes do
        rWallEx(startSide + j, mExtra)
        j = j + loopDir
        wait(delay)
    end
    
    THICKNESS = oldThickness
    
    wait(getPerfectDelay(THICKNESS) * 6.5)
end

function pMirrorSpiral3(mTimes, mExtra)
    delay = getPerfectDelay(THICKNESS)
    startSide = getRandomSide()
    loopDir = getRandomDir()    
    j = 0
    
    for i = 0, mTimes do
        rWallEx(startSide + j, mExtra)
        j = j + loopDir
        wait(delay*3)
    end
    
    wait(getPerfectDelay(THICKNESS) * 6.5)
end



-- pMirrorSpiralDouble: spawns a spiral of rWallEx where you need to change direction
function pMirrorSpiralDouble(mTimes, mExtra)
    oldThickness = THICKNESS
    THICKNESS = getPerfectThickness(THICKNESS)
    delay = getPerfectDelay(THICKNESS)
    startSide = getRandomSide()
    currentSide = startSide
    loopDir = getRandomDir()    
    j = 0
    
    for i = 0, mTimes do
        rWallEx(startSide + j, mExtra)
        j = j + loopDir
        wait(delay)
    end
    
    rWallEx(startSide + j, mExtra)
    wait(delay * 0.9)
    
    rWallEx(startSide + j, mExtra)
    wait(delay * 0.9)
    
    loopDir = loopDir * -1
    
    for i = 0, mTimes + 1 do
        currentSide = currentSide + loopDir;
        rWallEx(currentSide + j - 1, mExtra)
        j = j + loopDir
        wait(delay)
    end
    
    THICKNESS = oldThickness
    wait(getPerfectDelay(THICKNESS) * 7.5)
end

function pMirrorSpiralDouble2(mTimes, mExtra)
    oldThickness = THICKNESS
    THICKNESS = getPerfectThickness(THICKNESS)
    delay = getPerfectDelay(THICKNESS)
    startSide = getRandomSide()
    currentSide = startSide
    loopDir = getRandomDir()    
    j = 0
    k = 0
    
    for k = 0, mTimes do
    
    for i = 0, math.random(4,mTimes*2) do
        currentSide = currentSide + loopDir;
        rWallEx(currentSide + j, mExtra)
        j = j + loopDir
        wait(delay)
    end
    
    loopDir = loopDir * -1
    
    j = 0
    
    for i = 0, math.random(4,mTimes*2) do
        currentSide = currentSide + loopDir;
        rWallEx(currentSide + j - 1, mExtra)
        j = j + loopDir
        wait(delay)
    end
    
    loopDir = loopDir * -1
    
    j = 0
    
    end
    
    THICKNESS = oldThickness
    wait(getPerfectDelay(THICKNESS) * 7.5)
end

function pSingleSpiral(mTimes, mExtra)
    oldThickness = THICKNESS
    THICKNESS = getPerfectThickness(THICKNESS)
    delay = getPerfectDelay(THICKNESS)
    startSide = getRandomSide()
    loopDir = getRandomDir()    
    j = 0
    
    for i = 0, mTimes do
        cWallEx(startSide + j, mExtra)
        j = j + loopDir
        wait(delay)
    end
    
    THICKNESS = oldThickness
    
    wait(getPerfectDelay(THICKNESS) * 6.5)
end

function pSingleSpiralDouble(mTimes, mExtra)
    oldThickness = THICKNESS
    THICKNESS = getPerfectThickness(THICKNESS)
    delay = getPerfectDelay(THICKNESS)
    startSide = getRandomSide()
    currentSide = startSide
    loopDir = getRandomDir()    
    j = 0
    k = 0
    
    for k = 0, mTimes do
    
    if math.random(0, 1) == 0 then
    for i = 0, math.random(mTimes, 2*mTimes) do
        cWallEx(currentSide + j, mExtra)
        j = j + loopDir
        wait(delay*0.85)
    end
    
    cWallEx(currentSide + j, mExtra)
    wait(delay*0.85)
    cWallEx(currentSide + j, mExtra)
    wait(delay*0.85)
    
    else
    for i = 0, math.random(mTimes, 2*mTimes) do
        cWallEx(currentSide + j, mExtra)
        j = j - loopDir
        wait(delay*0.85)
    end
    
    cWallEx(currentSide + j, mExtra)
    wait(delay*0.85)
    cWallEx(currentSide + j, mExtra)
    wait(delay*0.85)
    
    end
    --loopDir = loopDir * -1
    
    end
    
    THICKNESS = oldThickness
    
    wait(getPerfectDelay(THICKNESS) * 6.5)
end

function pMirrorSpiralThin(mTimes, mExtra, mDelayMult)
    delay = getPerfectDelay(THICKNESS) * 5.6 * mDelayMult
    startSide = getRandomSide()
    loopDir = getRandomDir()
    j = 0
    
    for i = 0, mTimes do
        rWallEx(startSide + j, mExtra)
        j = j + loopDir
        wait(delay)
    end
    
    wait(getPerfectDelay(THICKNESS) * 6.5)
end

-- pBarrageSpiral: spawns a spiral of cBarrage
function pBarrageSpiral(mTimes, mDelayMult, mStep)
    delay = getPerfectDelay(THICKNESS) * 5.6 * mDelayMult
    startSide = getRandomSide()
    loopDir = mStep * getRandomDir()    
    j = 0
    
    for i = 0, mTimes do
        cBarrage(startSide + j)
        j = j + loopDir
        wait(delay)
        if(getSides() < 6) then wait(delay * 0.6) end
    end
    
    wait(getPerfectDelay(THICKNESS) * 6.1)
end

-- pDMBarrageSpiral: spawns a spiral of cBarrage, with static delay
function pDMBarrageSpiral(mTimes, mDelayMult, mStep)
    delay = (getPerfectDelayDM(THICKNESS) * 5.42) * (mDelayMult / (getDifficultyMult() ^ 0.24)) * (getSpeedMult() ^ 0.16)
    startSide = getRandomSide()
    loopDir = mStep * getRandomDir()    
    j = 0
    
    for i = 0, mTimes do
        cBarrage(startSide + j)
        j = j + loopDir
        wait(delay)
        if(getSides() < 6) then wait(delay * 0.49) end
    end
    
    wait(getPerfectDelay(THICKNESS) * (6.7 * (getDifficultyMult() ^ 0.50)))
end

-- pWallExVortex: spawns left-left right-right spiral patters
function pWallExVortex(mTimes, mStep, mExtraMult)
    delay = getPerfectDelay(THICKNESS) * 5.0 
    startSide = getRandomSide()
    loopDir = getRandomDir()
    currentSide = startSide
    
    for j = 0, mTimes do
        for i = 0, mStep do
            currentSide = currentSide + loopDir
            rWallEx(currentSide, loopDir * mExtraMult)
            wait(delay)
        end
        
        loopDir = loopDir * -1
        
        for i = 0, mStep + 1 do
            currentSide = currentSide + loopDir;
            rWallEx(currentSide, loopDir * mExtraMult)
            wait(delay)
        end
    end
    
    wait(getPerfectDelay(THICKNESS) * 5.5)
end

function pWallExVortex2(mTimes, mStep, mExtraMult)
    delay = getPerfectDelay(THICKNESS) * 2.5 
    startSide = getRandomSide()
    loopDir = getRandomDir()
    currentSide = startSide
    
    for j = 0, mTimes do
        for i = 0, mStep do
            currentSide = currentSide + loopDir
            rWallEx(currentSide, loopDir * mExtraMult)
            wait(delay)
        end
        
        loopDir = loopDir * -1
        
        for i = 0, mStep + 1 do
            currentSide = currentSide + loopDir;
            rWallEx(currentSide, loopDir * mExtraMult)
            wait(delay)
        end
    end
    
    wait(getPerfectDelay(THICKNESS) * 5.5)
end

function pWallExVortex3(mTimes, mStep, mExtraMult)
    delay = getPerfectDelay(THICKNESS) * 7.5 
    startSide = getRandomSide()
    loopDir = getRandomDir()
    currentSide = startSide
    
    for j = 0, mTimes do
        for i = 0, mStep do
            currentSide = currentSide + loopDir
            rWallEx(currentSide, loopDir * mExtraMult)
            wait(delay)
        end
        
        loopDir = loopDir * -1
        
        for i = 0, mStep + 1 do
            currentSide = currentSide + loopDir;
            rWallEx(currentSide, loopDir * mExtraMult)
            wait(delay)
        end
    end
    
    wait(getPerfectDelay(THICKNESS) * 5.5)
end

-- pInverseBarrage: spawns two barrages who force you to turn 180 degrees
function pInverseBarrage(mTimes)
    delay = getPerfectDelay(THICKNESS) * 9.9
    startSide = getRandomSide()
    
    for i = 0, mTimes do
        cBarrage(startSide)
        wait(delay)
        if(getSides() < 6) then wait(delay * 0.8) end
        cBarrage(startSide + getHalfSides())
        wait(delay)
    end
    
    wait(getPerfectDelay(THICKNESS) * 2.5)
end

function pFastInverseBarrage(mTimes)
    delay = getPerfectDelay(THICKNESS) * 6.9
    startSide = getRandomSide()
    
    for i = 0, mTimes do
        cBarrage(startSide)
        wait(delay)
        if(getSides() < 6) then wait(delay * 0.8) end
        cBarrage(startSide + getHalfSides())
        wait(delay)
    end
    
    wait(getPerfectDelay(THICKNESS) * 2.5)
end

-- pRandomBarrage: spawns barrages with random side, and waits humanly-possible times depending on the sides distance
function pRandomBarrage(mTimes, mDelayMult)
    side = getRandomSide()
    oldSide = 0
    
    for i = 0, mTimes do    
        cBarrage(side)
        oldSide = side
        side = getRandomSide()
        wait(getPerfectDelay(THICKNESS) * (2 + (getSideDistance(side, oldSide)*mDelayMult)))
    end
    
    wait(getPerfectDelay(THICKNESS) * 5.6)
end

-- pMirrorWallStrip: spawns rWalls close to one another on the same side
function pMirrorWallStrip(mTimes, mExtra)
    delay = getPerfectDelay(THICKNESS) * 3.65
    startSide = getRandomSide()
    
    for i = 0, mTimes do
        rWallEx(startSide, mExtra)
        wait(delay)
    end
    
    wait(getPerfectDelay(THICKNESS) * 5.00)
end

function pMirrorWallStrip2(mTimes, mExtra)
    delay = getPerfectDelay(THICKNESS) * 1.5
    startSide = getRandomSide()
    
    for i = 0, mTimes do
        rWallEx(startSide, mExtra)
        wait(delay)
    end
    
    wait(getPerfectDelay(THICKNESS) * 5.00)
end

-- pTunnel: forces you to circle around a very thick wall
function pTunnel(mTimes)
    oldThickness = THICKNESS
    myThickness = getPerfectThickness(THICKNESS)
    delay = getPerfectDelay(myThickness) * 5
    startSide = getRandomSide()
    loopDir = getRandomDir()
    
    THICKNESS = myThickness
    
    for i = 0, mTimes do
        if i < mTimes then
            wall(startSide, myThickness + 5 * getSpeedMult() * delay)
        end
        
        cBarrage(startSide + loopDir)
        wait(delay)
        
        loopDir = loopDir * -1
    end
    
    THICKNESS = oldThickness
end

function pTunnel2(mTimes)
    oldThickness = THICKNESS
    myThickness = getPerfectThickness(THICKNESS)
    delay = getPerfectDelay(myThickness) * 2.8
    startSide = getRandomSide()
    loopDir = getRandomDir()
    
    THICKNESS = myThickness
    
    for i = 0, mTimes do
        if i < mTimes then
            wall(startSide, myThickness + 5 * getSpeedMult() * delay)
        end
        
        cBarrage(startSide + loopDir)
        wait(delay)
        
        loopDir = loopDir * -1
    end
    
    THICKNESS = oldThickness
end

function pTunnel3(mTimes)
    oldThickness = THICKNESS
    myThickness = getPerfectThickness(THICKNESS)
    delay = getPerfectDelay(myThickness) * 6.5
    startSide = getRandomSide()
    loopDir = getRandomDir()
    
    THICKNESS = myThickness
    
    for i = 0, mTimes do
        if i < mTimes then
            wall(startSide, myThickness + 5 * getSpeedMult() * delay)
        end
        
        cBarrage(startSide + loopDir)
        wait(delay)
        
        loopDir = loopDir * -1
    end
    
    THICKNESS = oldThickness
end
