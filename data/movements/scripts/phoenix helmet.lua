function onEquip(cid, item, slot)
	local pos = {x = 65535}
	doSendMagicEffect(pos, 13)
        doSendAnimatedText(getPlayerPosition(cid), "Magic!", TEXTCOLOR_LIGHTBLUE)
        doPlayerSay(cid, "A power of fire that touch with brain.",16)
end