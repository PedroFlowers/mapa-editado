-- Script by aLeMaO --

function onStepIn(cid, item, pos)
uniqueid = 9012
novapos = {x=327, y=448, z=8}
if item.uid == 9012 then
doTeleportThing(cid,novapos)
doSendMagicEffect(novapos,10)
end
end