function onEquip(cid, item, slot)
	local pos = {x = 65535}
	doSendMagicEffect(pos, 13)
        doSendAnimatedText(getPlayerPosition(cid), "Magic! 30", TEXTCOLOR_LIGHTBLUE)
        doPlayerSay(cid, "A power to darkness.",16)
end