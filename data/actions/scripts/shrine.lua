function onUse(cid, item, frompos, item2, topos)

    if item.itemid == 2146 then
        if item2.itemid == 7508 or item2.itemid == 7509 or item2.itemid == 7510 or item2.itemid == 7511 then
            if getPlayerSoul(cid) > 1 and getPlayerMana(cid) > 299 then
                if item.type == 1 then
                    doPlayerAddMana(cid,-300) 
                    doPlayerAddSoul(cid,-2)
                    doTransformItem(item.uid,7759)
                    doSendMagicEffect(frompos,12)
                    doSendAnimatedText(topos,"Glub",35)
                else
                    return 0
                end    
            else
                return 0
            end    
        end
    elseif item.itemid == 2149 then
        if item2.itemid == 7516 or item2.itemid == 7517 or item2.itemid == 7518 or item2.itemid == 7519 then
            if getPlayerSoul(cid) > 1 and getPlayerMana(cid) > 299 then
                if item.type == 1 then
                    doPlayerAddMana(cid,-300) 
                    doPlayerAddSoul(cid,-2)
                    doTransformItem(item.uid,7761)
                    doSendMagicEffect(frompos,14)
                    doSendAnimatedText(topos,"Grr",210)
                else
                    return 0
                end
            else
                return 0
            end    
        end
    elseif item.itemid == 2150 then
        if item2.itemid == 7512 or item2.itemid == 7513 or item2.itemid == 7514 or item2.itemid == 7515 then
            if getPlayerSoul(cid) >= 2 and getPlayerMana(cid) >= 300 then
                if item.type == 1 then
                    doPlayerAddMana(cid,-300) 
                    doPlayerAddSoul(cid,-2)
                    doTransformItem(item.uid,7762)
                    doSendMagicEffect(frompos,12)
                    doSendAnimatedText(topos,"Bzz",83)
                else
                    return 0    
                end    
            end    
        end
    elseif item.itemid == 2147 then
        if item2.itemid == 7504 or item2.itemid == 7505 or item2.itemid == 7506 or item2.itemid == 7507 then
            if getPlayerSoul(cid) > 1 and getPlayerMana(cid) > 299 then
                if item.type == 1 then
                    doPlayerAddMana(cid,-300) 
                    doPlayerAddSoul(cid,-2)
                    doTransformItem(item.uid,7760)
                    doSendMagicEffect(frompos,13)
                    doSendAnimatedText(topos,"Pff",180)
                else
                    return 0    
                end    
            else
                return 0
            end    
        end
    else
        return 0
    end
return 1
end