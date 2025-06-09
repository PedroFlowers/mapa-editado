function onUse(cid, item2, frompos, item, topos)
if item2.itemid == 0 then
return 0
end

if item2.itemid == 2147 then
item.itemid = 7504
doTransformItem(item2.uid,7760)

elseif item2.itemid == 2147 then
item.itemid = 7505
doTransformItem(item2.uid,7760)

elseif item2.itemid == 2147 then
item.itemid = 7506
doTransformItem(item2.uid,7760)

elseif item2.itemid == 2147 then
item.itemid = 7507
doTransformItem(item2.uid,7760)

else
return 0
end
return 1
end
