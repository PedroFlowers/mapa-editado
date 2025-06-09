-- Script by aLeMaO --

function onStepIn(cid, item, pos)
uniqueid = 9015
novapos = {x=213, y=27, z=7}
if item.uid == 9015 then
doTeleportThing(cid,novapos)
doSendMagicEffect(novapos,10)
end
end