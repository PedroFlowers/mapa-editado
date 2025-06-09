local focus = 0
local talk_start = 0
local target = 0
local following = false
local attacking = false

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

if (msgcontains(msg, 'hi') and focus == 0) and getDistanceToCreature(cid) < 4 then
selfSay('Ola ' .. creatureGetName(cid) .. '! Voce quer passar por essa passsagem ?. Diga (pass).')
focus = cid
talk_start = os.clock()

elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
selfSay('Desculpe, ' .. creatureGetName(cid) .. '! Falo com voce em um minuto.')

elseif focus == cid then
talk_start = os.clock()

if msgcontains(msg, 'pass') then
selfSay('Voce tem o item Final Passagem?? (Para obter esse item voce tem que matar o Chefe Final)')
talk_start = os.clock()
end

if msgcontains(msg, 'yes') then
if getPlayerItemCount(cid,13623) >= 1 then
if doPlayerRemoveItem(cid,13623,1) then
travel(cid, 7960, 6009, 5)
selfSay('Boa Sorte!')
end
else
selfSay('Vc nao tem a Passagem Final.')
talk_start = os.clock()
end
end

elseif string.find(msg, '(%a*)bye(%a*)') and getDistanceToCreature(cid) < 4 then
selfSay('Good bye, ' .. creatureGetName(cid) .. '!')
focus = 0
talk_start = 0
end
end


function onCreatureChangeOutfit(creature)

end


function onThink()
if (os.clock() - talk_start) > 30 then
if focus > 0 then
selfSay('Proximo...')
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