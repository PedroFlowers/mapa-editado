function onUse(cid, item, frompos, item2, topos)
  	if doRemoveItem(item.uid,1) then
  	    doSendAnimatedText(getPlayerPosition(cid), "$$$", TEXTCOLOR_RED)
  		doPlayerAddItem(cid,13685,100)
  	end
  end
