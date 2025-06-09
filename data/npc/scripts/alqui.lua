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
selfSay('Intao xau..')
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
selfSay('Olá, ' .. creatureGetName(cid) .. '... eu vendo todos os tipos de poções que você pode imaginar, por exemplo:health potion(130 gp), strong health(200), great health(350), mana potion(200), strong mana(300), great mana(400)...Diga qual dessas você quer que eu vendo pra você (fale o nome do jeito exatamente como eu disse)Tambem vendo heath backpacks e mana backpacks por 10 gps')
focus = cid
talk_start = os.clock()

elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
selfSay('Peraew, ' .. creatureGetName(cid) .. 'falo contigo em um minuto...')

elseif focus == cid then
talk_start = os.clock()

if msgcontains(msg, 'health potion') then
buy(cid,7618,getCount(msg),130)
elseif msgcontains(msg, 'strong health') then
buy(cid,7588,getCount(msg),200)
elseif msgcontains(msg, 'great health') then
buy(cid,7591,getCount(msg),350)
elseif msgcontains(msg, 'mana potion') then
buy(cid,7620,getCount(msg),200)
elseif msgcontains(msg, 'strong mana') then
buy(cid,7589,getCount(msg),300)
elseif msgcontains(msg, 'great mana') then
buy(cid,7590,getCount(msg),400)
elseif msgcontains(msg, 'mana backpack') then
buy(cid,2001,getCount(msg),10)
elseif msgcontains(msg, 'health backpack') then
buy(cid,2000,getCount(msg),10) 


elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
selfSay('Muito obrigado, ' .. creatureGetName(cid) .. '=]')
focus = 0
talk_start = 0
end
end
end


function onCreatureChangeOutfit(creature)

end


function onThink()
if (os.clock() - talk_start) > 30 then
if focus > 0 then
selfSay('Proximo por favor...')
end
focus = 0
end
if focus ~= 0 then
if getDistanceToCreature(focus) > 5 then
selfSay('Adeus...')
focus = 0
end
end
end
