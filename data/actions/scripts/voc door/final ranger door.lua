function onUse(cid, item, frompos, item2, topos)
reqvoc = getPlayerVocation(cid)
if item.uid == 8223 then
if reqvoc == 19 then
pos = getPlayerPosition(cid)

if pos.x == topos.x then
if pos.y < topos.y then
pos.y = topos.y + 1
else
pos.y = topos.y - 1
end
elseif pos.y == topos.y then
if pos.x < topos.x then
pos.x = topos.x + 1
else
pos.x = topos.x - 1
end
else
doPlayerSendTextMessage(cid,22,'Fike na frente da porta.')
return 1
end

doTeleportThing(cid,pos)
doSendMagicEffect(topos,12)
else
doPlayerSendTextMessage(cid,22,'Apenas Final Ranger Passao Aki.')
end
return 1
else
return 0
end
end