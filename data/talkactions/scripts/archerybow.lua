function onSay(cid, words, param)
if doPlayerRemoveItem(cid,6527,65) == TRUE then
doPlayerAddItem(cid, 13533, 1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
doCreatureSay(cid, "!archerybow", TALKTYPE_ORANGE_1)
else
doPlayerSendCancel(cid, 'You don\'t have xeeksot points.')
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FLAMEAREA)
end
end
