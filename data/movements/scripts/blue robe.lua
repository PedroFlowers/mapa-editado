function onEquip(cid, item, slot)
	local pos = {x = 65535}
	doSendMagicEffect(pos, 13)
        doSendAnimatedText(getPlayerPosition(cid), "Magic! 10", TEXTCOLOR_LIGHTBLUE)
        doPlayerSay(cid, "Magic!",16)
end