local emptyPot = 7636

function onUse(cid, item, frompos, item2, topos)
	mag = getPlayerMagLevel(cid)	if mag >= 1 then
		doSendAnimatedText(getPlayerPosition(cid), "Aaaah...", TEXTCOLOR_ORANGE)
		if(doTargetCombatHealth(0, cid, COMBAT_HEALING, 150, 250, CONST_ME_MAGIC_BLUE) == LUA_ERROR) then
			return FALSE
		end
		doTransformItem(item.uid, emptyPot)
	else
		doSendMagicEffect(frompos,2)
		doPlayerSendCancel(cid,"You don't have the required level to use that potion.")
	end
		return 1
end