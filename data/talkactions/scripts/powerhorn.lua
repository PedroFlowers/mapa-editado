function onSay(cid, words, param)
if doPlayerRemoveItem(cid,6527,150) == TRUE then
doPlayerAddItem(cid, 7140, 1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
else
doPlayerSendCancel(cid, 'You don\'t have xeeksot points.')
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FLAMEAREA)
end
end
