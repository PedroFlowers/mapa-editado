function onSay(cid, words, param)
if doPlayerRemoveItem(cid,5097,3000) == TRUE then
doPlayerAddItem(cid, 7407, 1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
else
doPlayerSendCancel(cid, 'Manow vc n tem power donates.')
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FLAMEAREA)
end
end
