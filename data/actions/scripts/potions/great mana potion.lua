local greatEmptyPot = 7635

function onUse(cid, item, frompos, item2, topos)
	mag = getPlayerMagLevel(cid)
		if getPlayerLevel(cid) < 80 then
		doSendMagicEffect(frompos,2)
		doPlayerSendCancel(cid,"This potion can only be consumed by paladins, druids and sorcerers of level 80 or higher.")
		return 1
		end
	if getPlayerVocation(cid) == 1 or getPlayerVocation(cid) == 2 or getPlayerVocation(cid) == 5 or getPlayerVocation(cid) == 6 then
		doSendAnimatedText(getPlayerPosition(cid), "Aaaah...", TEXTCOLOR_ORANGE)
		if(doTargetCombatMana(0, cid, 500, 900, CONST_ME_MAGIC_BLUE) == LUA_ERROR) then
			return FALSE
		end
		doTransformItem(item.uid, greatEmptyPot)
	else
		doSendMagicEffect(frompos,2)
		doPlayerSendCancel(cid,"This potion can only be consumed by sorcerers and druids of level 80 or higher.")
	end
		return 1
end