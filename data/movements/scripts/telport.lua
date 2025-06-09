--------------- D@rK ---------------
--------------- OTNet ---------------

function onStepIn(cid, item, pos)

--==--==--==--==--==--==--==--==
energy = {x=228, y=28, z=7}
 ice = {x=250, y=26, z=7}
 earth = {x=33, y=93, z=7}
 fire = {x=54, y=43, z=7}
--==--==--==--==--==--==--==--==

voc = getPlayerVocation(cid)
lvl = getPlayerLevel(cid)

    if isPremium(cid) then
        if lvl >= 30 then
            if voc == 1 or voc == 5 then
                if item.actionid == 8020 then    
                    doSendMagicEffect(getPlayerPosition(cid),11)
                    doTeleportThing(cid,energy)
                elseif item.actionid == 8022 then
                    doSendMagicEffect(getPlayerPosition(cid),15)
                    doTeleportThing(cid,fire)
                end
            elseif voc == 2 or voc == 6 then
                if item.actionid == 8021 then    
                    doSendMagicEffect(getPlayerPosition(cid),43)
                    doTeleportThing(cid,ice)
                elseif item.actionid == 8023 then
                    doSendMagicEffect(getPlayerPosition(cid),45)
                    doTeleportThing(cid,earth)
                end
            else
                doPlayerSendTextMessage(cid, 20, "You aren't able to enter this portal")
                doTeleportThing(cid,position)
            end
        else
            doPlayerSendTextMessage(cid, 20, "Only players of level 30 or higher are able to enter this portal")
            doTeleportThing(cid,position)
        end
    else
        doPlayerSendTextMessage(cid, 20, "Only Premium are able to enter this portal")
        doTeleportThing(cid,position)
    end
    doSendMagicEffect(getPlayerPosition(cid),10)
end