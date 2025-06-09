local strongEmptyPot = 7634

function onUse(cid, item, frompos, item2, topos)
	mag = getPlayerMagLevel(cid)
		if getPlayerLevel(cid) < 50 then
		doSendMagicEffect(frompos,2)
		doPlayerSendCancel(cid,"This potion can only be consumed by paladins, druids and sorcerers of level 50 or higher.")
		return 1
		end
	if getPlayerVocation(cid) == 3 or getPlayerVocation(cid)  == 7 or getPlayerVocation(cid)  == 1 or getPlayerVocation(cid) == 2 or getPlayerVocation(cid) == 5 or getPlayerVocation(cid) == 6 then
		doSendAnimatedText(getPlayerPosition(cid), "Aaaah...", TEXTCOLOR_ORANGE)
		if(doTargetCombatMana(0, cid, 300, 700, CONST_ME_MAGIC_BLUE) == LUA_ERROR) then
			return FALSE
		end
		doTransformItem(item.uid, strongEmptyPot)
	else
		doSendMagicEffect(frompos,2)
		doPlayerSendCancel(cid,"This potion can only be consumed by sorcerers, paladins and druids of level 50 or higher.")
	end
		return 1
end