function onEquip(cid, item, slot)
	local pos = {x = 65535}
	doSendMagicEffect(pos, 13)
        doSendAnimatedText(getPlayerPosition(cid), "Magic! 40", TEXTCOLOR_LIGHTBLUE)
        doPlayerSay(cid, "Fell my fury! Aaahh",16)
end