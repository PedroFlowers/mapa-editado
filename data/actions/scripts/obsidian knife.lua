--Action By BrunuxX modificado por Cunha
--Não Remover os Creditos!
function onUse(cid, item, frompos, item2, topos)
if item2.itemid == 0 then
return 0
end

random = math.random(1,5)
if getPlayerLevel(cid) >= 8 then
    if random == 1 then
        doTransformItem(item2.uid,item2.itemid+1)
        doSendMagicEffect(topos,13)
        if item2.itemid == 2881 then
            doPlayerAddItem(cid,5948,1)
        elseif item2.itemid == 2830 then
            doPlayerAddItem(cid,5878,1)
        elseif item2.itemid == 2866 then
            doPlayerAddItem(cid,5878,1)
        elseif item2.itemid == 2871 then
            doPlayerAddItem(cid,5878,1)
        elseif item2.itemid == 2876 then
            doPlayerAddItem(cid,5878,1)
        elseif item2.itemid == 2931 then
            doPlayerAddItem(cid,5893,1)
        elseif item2.itemid == 3031 then
            doPlayerAddItem(cid,5925,1)
        elseif item2.itemid == 3104 then
            doPlayerAddItem(cid,5877,1)
        elseif item2.itemid == 4256 then
            doPlayerAddItem(cid,5876,1)
        elseif item2.itemid == 4259 then
            doPlayerAddItem(cid,5876,1)
        elseif item2.itemid == 4262 then
            doPlayerAddItem(cid,5876,1)
        elseif item2.itemid == 2844 then
            doPlayerAddItem(cid,5877,1)
        end
    elseif random > 1 then
        if item2.itemid == 2881 or item2.itemid == 2830 or item2.itemid == 2866 or item2.itemid == 2871 or item2.itemid == 2876 or item2.itemid == 2931 or item2.itemid == 3031 or item2.itemid == 3104 or item2.itemid == 4256 or item2.itemid == 4259 or item2.itemid == 4262 or item2.itemid == 2844 then
            doTransformItem(item2.uid,item2.itemid+1)
            doSendMagicEffect(topos,2)
        end
    end
end
return 1
end