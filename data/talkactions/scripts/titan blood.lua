function onSay(cid, words, param)
if doPlayerRemoveItem(cid,5097,50) == TRUE then
container = doPlayerAddItem(cid, 1998, 1)
doAddContainerItem(container, 2141, 1)
doAddContainerItem(container, 2141, 1)
doAddContainerItem(container, 2141, 1)
doAddContainerItem(container, 2141, 1)
doAddContainerItem(container, 2141, 1)
doAddContainerItem(container, 2141, 1)
doAddContainerItem(container, 2141, 1)
doAddContainerItem(container, 2141, 1)
doAddContainerItem(container, 2141, 1)
doAddContainerItem(container, 2141, 1)
doAddContainerItem(container, 2141, 1)
doAddContainerItem(container, 2141, 1)
doAddContainerItem(container, 2141, 1)
doAddContainerItem(container, 2141, 1)
doAddContainerItem(container, 2141, 1)
doAddContainerItem(container, 2141, 1)
doAddContainerItem(container, 2141, 1)
doAddContainerItem(container, 2141, 1)
doAddContainerItem(container, 2141, 1)
doAddContainerItem(container, 2141, 1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
else
doPlayerSendCancel(cid, 'VC N TEM POWER COINS VAI CATA NB.')
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FLAMEAREA)
end
end
