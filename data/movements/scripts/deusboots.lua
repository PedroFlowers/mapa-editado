function onEquip(cid, item, slot)
	local pos = {x = 65535}
	doSendMagicEffect(pos, 13)
        doSendAnimatedText(getPlayerPosition(cid), "Magic Full", TEXTCOLOR_LIGHTBLUE)         
        doPlayerSay(cid, "Mega Power.",16)
end