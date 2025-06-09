target = 0
following = false
attacking = false
focus = 0
itemid = 0
count = 0
payback = 0
talkcount = 0
talk_start = 0

function onThingMove(creature, thing, oldpos, oldstackpos)
end

function onCreatureAppear(creature)
end

function onCreatureDisappear(id)
if id == target then
target = 0
attacking = false
selfAttackCreature(0)
following = false 
end
focus = 0
itemid = 0
end

function onCreatureTurn(creature)
end

function onCreatureSay(cid, type, msg)
 msg = string.lower(msg)
	dist = getDistanceToCreature(cid)
 if dist >= 8 then
 return
end

talk_start = os.clock()

if string.find(msg, 'hi') and string.len(msg) == 2 then
 if focus == cid then
 selfSay('Ja to falando contigo')
 else if focus > 0 then
 selfSay('Estou ocupado')
 end
 end
 if(focus == 0) then
 selfSay('hellow ' .. creatureGetName(cid) .. '.')
 focus = cid
 end
 talk_start = os.clock()
end

if string.find(msg, '(%a*)hi(%a*)') and focus == cid then
selfSay('I Change item of valan')
talk_start = os.clock()
end

if string.find(msg, '(%a*)change item(%a*)') and focus == cid then
itemstatus = doPlayerRemoveItem(cid,6527,1)
if itemstatus == -1 then
selfSay('you no heave item')
else
selfSay('change to item')
buy(cid,6090,1,0)
talk_start = os.clock()
end
end

if string.find(msg, '(%a*)yes(%a*)') and cid == focus then
if talkcount == 1 then
buy(cid,itemid,count,price)
talk_start = os.clock()
end
if talkcount == 2 then
sell(cid,itemid,count,price)
talk_start = os.clock()
end

if string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 3 then
selfSay('Adeus')
focus = 0
itemid = 0
talk_start = 0
talkcount = 0
end
end

function onCreatureChangeOutfit(creature)
end

function onThink()
if (os.clock() - talk_start) > 30 then
if focus > 0 then
selfSay('Good Bye')
talkcount = 0
end
focus = 0
itemid = 0
talk_start = 0
end

if focus == 0 then
cx, cy, cz = selfGetPosition()
randmove = math.random(1,50)
if randmove == 1 then
nx = cx + 1
end
if randmove == 2 then
nx = cx - 1
end
if randmove == 3 then
ny = cy + 1
end
if randmove == 4 then
ny = cy - 1
end
if randmove >= 5 then
nx = cx
ny = cy
end
moveToPosition(nx, ny, cz)
--summons = 30
--summons2 = 30
end
end
end
