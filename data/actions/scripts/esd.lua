function onUse(cid, item, frompos, item2, topos)

container = doPlayerAddItem(cid, 5926, 1)

if item.itemid == 1945 and doPlayerRemoveMoney(cid,300000) == 1 then
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doTransformItem(item.uid,item.itemid+1)

elseif item.itemid == 1946 and doPlayerRemoveMoney(cid,300000) == 1 then
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doAddContainerItem(container, 2267, 5)
doTransformItem(item.uid,item.itemid-1)

else
doPlayerSendCancel(cid,"Sorry, you don't have enough money!")
end
return 1
end
