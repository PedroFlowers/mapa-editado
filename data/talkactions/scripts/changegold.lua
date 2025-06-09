function onSay(cid, words, param)
if doPlayerRemoveItem(cid,13685,100) == TRUE then
doPlayerAddItem(cid, 6548, 1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MAGIC_RED)
else
doPlayerSendCancel(cid, 'desculpe vc n tem 100 ruby coins para trocar.')
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FLAMEAREA)
end
end
