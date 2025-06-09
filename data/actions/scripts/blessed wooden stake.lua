--Action By BrunuxX modificado por Cunha
--Não Remover os Creditos!
function onUse(cid, item, frompos, item2, topos)
if item2.itemid == 0 then
return 0
end
 
random = math.random(1,5)
if getPlayerLevel(cid) >= 8 then
    if random == 1 then
        if item2.itemid == 2916 then
            doTransformItem(item2.uid,item2.itemid+1)
            doPlayerAddItem(cid,5906,1)
            doSendMagicEffect(topos,13)
        elseif item2.itemid == 2956 then
            doTransformItem(item2.uid,item2.itemid+1)
            doPlayerAddItem(cid,5905,1)
            doSendMagicEffect(topos,13)
        end
    elseif random > 1 then
        if item2.itemid == 2916 then
            doTransformItem(item2.uid,item2.itemid+1)
            doSendMagicEffect(topos,2)
        elseif item2.itemid == 2956 then
            doTransformItem(item2.uid,item2.itemid+1)
            doSendMagicEffect(topos,2)
        end
    end
end
return 1
end