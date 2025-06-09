function onSay(cid, words, param)
if doPlayerRemoveItem(cid,13685,50) doPlayerRemoveItem(cid,2125,1) == 0 then
doPlayerAddItem(cid, 13684, 1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
else
doPlayerSendCancel(cid, 'You don\'t have 50kk and itens')
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FLAMEAREA)
end
end
