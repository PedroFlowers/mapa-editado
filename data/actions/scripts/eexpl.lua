function onUse(cid, item, frompos, item2, topos)

container = doPlayerAddItem(cid, 5949, 1)

if item.itemid == 1945 and doPlayerRemoveMoney(cid,200000) == 1 then
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doTransformItem(item.uid,item.itemid+1)

elseif item.itemid == 1946 and doPlayerRemoveMoney(cid,250000) == 1 then
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doAddContainerItem(container, 2314, 10)
doTransformItem(item.uid,item.itemid-1)

else
doPlayerSendCancel(cid,"Sorry, you don't have enough money!")
end
return 1
end
