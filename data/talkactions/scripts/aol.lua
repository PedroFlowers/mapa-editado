function onSay(cid, words, param)
if doPlayerRemoveItem(cid,2160,10) == TRUE then
doPlayerAddItem(cid, 13682, 1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
doCreatureSay(cid, "!aol", TALKTYPE_ORANGE_1)
else
doPlayerSendCancel(cid, 'Manow vc n tem dimdim.')
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FLAMEAREA)
end
end  
