function onUse(cid, item2, frompos, item, topos)
if item2.itemid == 0 then
return 0
end

if item2.itemid == 2146 then
item.itemid = 7508
doTransformItem(item2.uid,7759)

elseif item2.itemid == 2146 then
item.itemid = 7509
doTransformItem(item2.uid,7759)

elseif item2.itemid == 2146 then
item.itemid = 7510
doTransformItem(item2.uid,7759)

elseif item2.itemid == 2146 then
item.itemid = 7511
doTransformItem(item2.uid,7759)

else
return 0
end
return 1
end
