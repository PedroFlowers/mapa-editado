--|Script by MeisterRox|--
function onStepIn(cid, item, pos)
if getPlayerLevel(cid) >= 30 and getPlayerVocation(cid) == 2 or getPlayerLevel(cid) >= 30 and getPlayerVocation(cid) == 6 or getPlayerLevel(cid) >= 30 and getPlayerVocation(cid) == 3 or getPlayerLevel(cid) >= 30 and getPlayerVocation(cid) == 7  or getPlayerLevel(cid) >= 30 and getPlayerVocation(cid) == 4 or getPlayerLevel(cid) >= 30 and getPlayerVocation(cid) == 8   then
doPlayerSendTextMessage(cid,22,"Este portal é apenas para Sorcerers, Lvl's 30+.")
player1pos = {x = position.x + 2, y = position.y + 2, z = position.z}
player1 = getThingfromPos(player1pos)
doTeleportThing(cid, player1pos)
			return FALSE
		end
actionid = 8020
newpos = {x=228, y=28, z=7}
if item.actionid == 8020 then
doTeleportThing(cid,newpos)
doSendMagicEffect(newpos,10)
end
	return TRUE
end