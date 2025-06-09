-- NPC de troca - By Conde Sapo
local focus = 0
local talk_start = 0
local target = 0
local following = false
local attacking = false
local addon_state = 0

function onThingMove(creature, thing, oldpos, oldstackpos)
end

function onCreatureAppear(creature)
end

function onCreatureDisappear(cid, pos)
    if focus == cid then
        selfSay('Good bye then.')
        focus = 0
        talk_start = 0
    end
end

function onCreatureTurn(creature)
end

function msgcontains(txt, str)
    return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end

function onCreatureSay(cid, type, msg)
    msg = string.lower(msg)

    if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceToCreature(cid) < 4 then
        selfSay('Olá ' .. getCreatureName(cid) .. '... I Sell Sudden death dec')
        focus = cid
        talk_start = os.clock()

    elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
        selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

    elseif focus == cid then
        talk_start = os.clock()
        if msgcontains(msg, 'amulet') or msgcontains(msg, 'bp sd') then
            if doPlayerRemoveItem(cid,6527,5) == 0 then
                selfSay('Sorry,not Have item!')
                addon_state = 0
            else 
                selfSay('Thanks')
                doPlayerAddItem(cid,2268,100)
                doPlayerAddItem(cid,2268,100)
                doPlayerAddItem(cid,2268,100)
                doPlayerAddItem(cid,2268,100)
                doPlayerAddItem(cid,2268,100)
                doPlayerAddItem(cid,2268,100)
                doPlayerAddItem(cid,2268,100)
                doPlayerAddItem(cid,2268,100)
                doPlayerAddItem(cid,2268,100)
                doPlayerAddItem(cid,2268,100)
                doPlayerAddItem(cid,2268,100)
                doPlayerAddItem(cid,2268,100)
                doPlayerAddItem(cid,2268,100)
                doPlayerAddItem(cid,2268,100)
                doPlayerAddItem(cid,2268,100)
                doPlayerAddItem(cid,2268,100)
                doPlayerAddItem(cid,2268,100)
                doPlayerAddItem(cid,2268,100)
                doPlayerAddItem(cid,2268,100)
                doPlayerAddItem(cid,2268,100)
                talk_start = 0
            end 

        elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
            selfSay('Good bye, ' .. getCreatureName(cid) .. '! Come back soon..')
            focus = 0
            talk_start = 0
        end
    end
end

function onCreatureChangeOutfit(creature)
end

function onThink()
    doNpcSetCreatureFocus(focus)
    if (os.clock() - talk_start) > 30 then
        if focus > 0 then
            selfSay('Next Please...')
        end
        focus = 0
    end
    if focus ~= 0 then
        if getDistanceToCreature(focus) > 5 then
            selfSay('Good bye then.')
            focus = 0
        end
    end
end
