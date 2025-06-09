function onSay(cid, words, param)
if money.itemid  13677
doRemoveItem(money.uid,1)
money.itemid  2173
doRemoveItem(money.uid,1)
doPlayerAddItem(cid, 13683, 1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
else
doPlayerSendCancel(cid, 'You don\'t have 5kk and outhers itens.')
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FLAMEAREA)
end
end
