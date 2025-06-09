-- level doors based on actionId
-- to make door for level x create door on map and set its actionid to x+10000

function onUse(cid, item, frompos, item2, topos)
	reqlevel = item.actionid - 10000 -- actionids below 1000 are reserved

	if reqlevel > 0 then
		if getPlayerLevel(cid) >= reqlevel then
			pos = getPlayerPosition(cid)

			if pos.x == topos.x then
				if pos.y < topos.y then
					pos.y = topos.y + 1
				else
					pos.y = topos.y - 1
				end
			elseif pos.y == topos.y then
				if pos.x < topos.x then
					pos.x = topos.x + 1
				else
					pos.x = topos.x - 1
				end
			else
				doPlayerSendTextMessage(cid,22,'Fike Na Frente da porta.')
				return 1
			end

			doTeleportThing(cid,pos)
			doSendMagicEffect(topos,12)
		else
			doPlayerSendTextMessage(cid,22,'Voce prescisa ser level ' .. reqlevel .. ' para passar por essa porta.')
		end
		return 1
	else
		return 0
	end
end
