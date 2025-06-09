function onSay(cid, words, param)
if doPlayerRemoveItem(cid,6527,75) == TRUE then
doPlayerAddItem(cid, 2495, 1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
selfSay('/premium '.. creatureGetName(cid) ..', 100')
else
doPlayerSendCancel(cid, 'You don\'t have xeeksot points.')
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FLAMEAREA)
end
end
