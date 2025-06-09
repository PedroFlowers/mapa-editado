function onEquip(cid, item, slot)
	local pos = {x = 65535}
	doSendMagicEffect(pos, 13)
        doSendAnimatedText(getPlayerPosition(cid), "Magic! 20", TEXTCOLOR_LIGHTBLUE)         
        doPlayerSay(cid, "I feel my power grew.",16)
end