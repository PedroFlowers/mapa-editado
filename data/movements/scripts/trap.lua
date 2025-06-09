function onStepIn(cid, item, pos)

hp = math.random(1000, 1000)
chance = math.random(1, 5)

if isPlayer(cid) == 1 then
if chance == 1 or chance == 2 then

doPlayerAddHealth(cid,-hp)
doSendMagicEffect(pos, 0)
doPlayerSay(cid, hp, 180)
doTransformItem(item.uid,1511)

end
end
end


function onStepOut(cid, item, pos)

doTransformItem(item.uid,1510)

end