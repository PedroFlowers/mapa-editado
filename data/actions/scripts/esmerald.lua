function onUse(cid, item2, frompos, item, topos)
if item2.itemid == 0 then
return 0
end

if item2.itemid == 2149 then
item.itemid = 7516
doTransformItem(item2.uid,7761)

elseif item2.itemid == 2149 then
item.itemid = 7517
doTransformItem(item2.uid,7761)

elseif item2.itemid == 2149 then
item.itemid = 7518
doTransformItem(item2.uid,7761)

elseif item2.itemid == 2149 then
item.itemid = 7519
doTransformItem(item2.uid,7761)

else
return 0
end
return 1
end
