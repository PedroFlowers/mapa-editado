local greatEmptyPot = 7635

function onUse(cid, item, frompos, item2, topos)
	mag = getPlayerMagLevel(cid)
		if getPlayerLevel(cid) < 80 then
		doSendMagicEffect(frompos,2)
		doPlayerSendCancel(cid,"This potion can only be consumed by paladins and knights of level 80 or higher.")
		return 1
		end
	if getPlayerVocation(cid) == 3 or getPlayerVocation(cid) == 4 or getPlayerVocation(cid) == 7 or getPlayerVocation(cid) == 8 then
		doSendAnimatedText(getPlayerPosition(cid), "Aaaah...", TEXTCOLOR_ORANGE)
		if(doTargetCombatHealth(0, cid, COMBAT_HEALING, 500, 1000, CONST_ME_MAGIC_BLUE) == LUA_ERROR) then
			return FALSE
		end
		doTransformItem(item.uid, greatEmptyPot)
	else
		doSendMagicEffect(frompos,2)
		doPlayerSendCancel(cid,"This potion can only be consumed by paladins and knights of level 80 or higher.")
	end
		return 1
end