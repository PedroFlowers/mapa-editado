newoutfit = {lookType = 9}

function onUse(cid, item, frompos, item2, topos)

if item.itemid == 2366 then
doPlayerAddMana(cid, math.random(100000, 100000))
doPlayerAddHealth(cid, math.random(100000, 100000))
doTargetCombatCondition(0, cid, blood, CONST_ME_NONE)
doPlayerSay(cid,"Pena magica!",16)
doSendMagicEffect(frompos,12)
doPlayerSendTextMessage(cid, 20, 'você usso a pena magica!')
doRemoveItem(item.uid,0)

end
end