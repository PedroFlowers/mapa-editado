function onStepIn(cid, item, pos)

if getPlayerLevel(cid) < 90000 and getPlayerAccess(cid) < 1 then
  doPlayerSendCancel(cid,"Apenas Players Level 90000 Podem passar.")
  doSendMagicEffect(pos, 2)
  pos.y = pos.y+1
  doTeleportThing(cid, pos)
  doSendMagicEffect(pos, 2)
end
end