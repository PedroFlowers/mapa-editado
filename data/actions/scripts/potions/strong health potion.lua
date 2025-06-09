local strongEmptyPot = 7634

function onUse(cid, item, frompos, item2, topos)
	mag = getPlayerMagLevel(cid)
		if getPlayerLevel(cid) < 50 then
		doSendMagicEffect(frompos,2)
		doPlayerSendCancel(cid,"This potion can only be consumed by paladins and knights of level 50 or higher.")
		return 1
		end
	if getPlayerVocation(cid) == 3 or getPlayerVocation(cid) == 4 or getPlayerVocation(cid) == 7 or getPlayerVocation(cid) == 8 then
		doSendAnimatedText(getPlayerPosition(cid), "Aaaah...", TEXTCOLOR_ORANGE)
		if(doTargetCombatHealth(0, cid, COMBAT_HEALING, 350, 600, CONST_ME_MAGIC_BLUE) == LUA_ERROR) then
			return FALSE
		end
		doTransformItem(item.uid, strongEmptyPot)
	else
		doSendMagicEffect(frompos,2)
		doPlayerSendCancel(cid,"This potion can only be consumed by paladins and knights of level 50 or higher.")
	end
		return 1
end