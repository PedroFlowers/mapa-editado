function onSay(cid, words, param)

local exhausted_seconds = 1.0
local exhausted_storagevalue = 555

	local playerPos = getCreaturePosition(cid)
	if (getPlayerLookDir(cid) == 1) then 
		target = {x = playerPos.x + 1, y = playerPos.y, z = playerPos.z, stackpos = 253}
	elseif (getPlayerLookDir(cid) == 2) then
		target = {x = playerPos.x, y = playerPos.y + 1, z = playerPos.z, stackpos = 253}
	elseif (getPlayerLookDir(cid) == 3) then
		target = {x = playerPos.x - 1, y = playerPos.y, z = playerPos.z, stackpos = 253}
	else
		target = {x = playerPos.x, y = playerPos.y - 1, z = playerPos.z, stackpos = 253}
	end
	target = getThingfromPos(target)
	if (isPlayer(target.uid) == TRUE) then
		if (getPlayerLookDir(target.uid) == getPlayerLookDir(cid)) then
			if (os.time() > getPlayerStorageValue(cid, exhausted_storagevalue)) then
			doSendAnimatedText(playerPos, 'Crew!!!', math.random(0,255))
			doSendAnimatedText(getThingPos(target.uid), 'Ohhh God!!', math.random(0,255))
			setPlayerStorageValue(cid, exhausted_storagevalue, os.time() + exhausted_seconds)
			splash = doCreateItem(2025,6, playerPos)
			doDecayItem(splash)
			splash2 = doCreateItem(2025,2, getThingPos(target.uid))
			doDecayItem(splash2)

				else
			end
		end
	end
end

