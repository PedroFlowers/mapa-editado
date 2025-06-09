function onSay(cid, words, param)
if doPlayerRemoveItem(cid,2197,1) == TRUE then
doPlayerAddItem(cid, 13682, 1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
else
doPlayerSendCancel(cid, 'You don\'t have Elemental Necklace.')
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FLAMEAREA)
end
end
