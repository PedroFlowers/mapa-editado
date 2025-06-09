function onUse(cid, item, frompos, item2, topos)

random = math.random(1,2)

if item.itemid == 6558 then
if random == 1 then
doPlayerAddItem(cid,7588,1)
doRemoveItem(item.uid,1)
doSendMagicEffect(getPlayerPosition(cid),0)

elseif random == 2 then
doPlayerAddItem(cid,7589,1)
doRemoveItem(item.uid,1)
doSendMagicEffect(getPlayerPosition(cid),0)
end
end
return 1
end