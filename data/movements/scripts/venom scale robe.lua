function onEquip(cid, item, slot)
	local pos = {x = 65535}
	doSendMagicEffect(pos, 13)
        doSendAnimatedText(getPlayerPosition(cid), "Magic! 30", TEXTCOLOR_LIGHTBLUE)
        doPlayerSay(cid, "Now feel my true strength!",16)
end