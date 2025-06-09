function onEquip(cid, item, slot)
	if slot ~= 4 then
		doPlayerSendTextMessage(cid, 25, "They work better at feet")
	end
end


function onEquip(cid, item, slot)
	local pos = {x = 65535}
	doSendMagicEffect(pos, 13)
        doSendAnimatedText(getPlayerPosition(cid), "Magic! 15", TEXTCOLOR_LIGHTBLUE)         
        doPlayerSay(cid, "And a very strong mystical power!",16)
end