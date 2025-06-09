-- Script by aLeMaO --

function onStepIn(cid, item, pos)
uniqueid = 9011
novapos = {x=326, y=448, z=8}
if item.uid == 9011 then
doTeleportThing(cid,novapos)
doSendMagicEffect(novapos,10)
end
end