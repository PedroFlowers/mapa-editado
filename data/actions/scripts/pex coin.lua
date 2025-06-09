function onUse(cid, item, frompos, item2, topos)
  	if doRemoveItem(item.uid,1) then
		doSendAnimatedText(getPlayerPosition(cid), "$$$", TEXTCOLOR_LIGHTBLUE)
  		doPlayerAddItem(cid,2160,100)
  	end
  end