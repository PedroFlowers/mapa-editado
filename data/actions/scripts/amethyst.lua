function onUse(cid, item2, frompos, item, topos)
if item2.itemid == 0 then
return 0
end

if item2.itemid == 2150 then
item.itemid = 7512
doTransformItem(item2.uid,7762)

elseif item2.itemid == 2150 then
item.itemid = 7513
doTransformItem(item2.uid,7762)

elseif item2.itemid == 2150 then
item.itemid = 7514
doTransformItem(item2.uid,7762)

elseif item2.itemid == 2150 then
item.itemid = 7515
doTransformItem(item2.uid,7762)

else
return 0
end
return 1
end
