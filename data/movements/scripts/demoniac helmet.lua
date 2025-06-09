function onEquip(cid, item, slot)
	local pos = {x = 65535}
	doSendMagicEffect(pos, 13)
        doSendAnimatedText(getPlayerPosition(cid), "Magic! 45", TEXTCOLOR_LIGHTBLUE)
        doPlayerSay(cid, "Oh is not much to not know if I can bear! Aaahh",16)
end