-- Script by aLeMaO --

function onStepIn(cid, item, pos)
uniqueid = 9016
novapos = {x=77, y=102, z=7}
if item.uid == 9016 then
doTeleportThing(cid,novapos)
doSendMagicEffect(novapos,10)
end
end