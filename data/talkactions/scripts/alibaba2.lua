

function onSay(cid, words, param)

	playerpos = getPlayerPosition(cid)

	if math.max(math.abs(playerpos.x-23), math.abs(playerpos.y-30)) < 3 then
		doTransformItem(426, 1304)
		doSendAnimatedText(playerpos, "Closed", 120)
		return 0
	end
	return 1

end