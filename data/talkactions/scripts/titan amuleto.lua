function onSay(cid, words, param)
if doPlayerRemoveItem(cid,5097,500) == TRUE then
doPlayerAddItem(cid, 2196, 1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
else
doPlayerSendCancel(cid, 'Manow vc n tem power donates.')
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FLAMEAREA)
end
end
