function onUse(cid, item, frompos, item2, topos)
if item.itemid == 1766 then
doSummonCreature("hellgorak",topos)
doSummonCreature("madareth",topos)
else
doPlayerSendCancel(cid,"Sorry, not possible.")
end
return 1
end 