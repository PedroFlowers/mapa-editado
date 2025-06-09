function onUse(cid, item, frompos, item2, topos)

itempos = {x=topos.x, y=topos.y, z=topos.z, stackpos=1}
item = getThingfromPos(itempos)
access = 5

if getPlayerAccess(cid) >= access then

doRemoveItem(item.uid,1)
doSendMagicEffect(itempos,2)
doPlayerSendTextMessage(cid,22,"O Item foi deletado.")
else
doPlayerSendTextMessage(cid,22,"Apenas GMs podem usar essa runa!")
end
return 1
end