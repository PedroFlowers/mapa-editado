function onSay(cid, words, param)
if doPlayerRemoveItem(cid,13641,50) == TRUE then
doPlayerAddItem(cid, 5097, 1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MAGIC_RED)
else
doPlayerSendCancel(cid, 'desculpe vc n tem 50 Final coins para trocar por 1 power coins.')
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FLAMEAREA)
end
end
