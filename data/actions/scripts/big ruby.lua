function onUse(cid, item, frompos, item2, topos)
	npos = {x=999, y=5198, z=7}
	if item.itemid == 1386 or item.itemid == 3678 then
		npos.y = npos.y + 0
		npos.z = npos.z - 0
		doTeleportThing(cid, npos)
	else
		npos.z = npos.z + 0
		doTeleportThing(cid, npos)
	end
	return 1
end