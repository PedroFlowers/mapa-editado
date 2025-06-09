local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions start
function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end
-- OTServ event handling functions end

function creatureSayCallback(cid, type, msg)
-- Place all your code in here. Remember that hi, bye and all that stuff is already handled by the npcsystem, so you do not have to take care of that yourself.
if(npcHandler.focus ~= cid) then
return false
end

if msgcontains(msg, 'specialised') or msgcontains(msg, 'boot') then
selfSay('Ola meu nome e sauron eu fui um grande guerreiro a muito tempo atras,mais sempre guardei comigo os meus ekipamentos meus eu tendo largado a vida de guerreiro.')
elseif msgcontains(msg, 'helmet') or msgcontains(msg, 'helmet') then
selfSay('Hum pelo que parece voce conseguiu um helmet meu mais pelo visto ele esta muito velho fraco e acabado, gostaria que eu desse mais poder para ele isso le custara algo.')
if msgcontains(msg, 'yes') or msgcontains(msg, 'yes') 
then
selfSay('Hum isto li custara muito sangue,por que para min reviver este helmet e muito dificil tem certeza q deseja si ariscar?')
talk_state = 1


elseif msgcontains(msg, 'yes') and talk_state == 1 then
if getPlayerItemCount(cid,2342) >= 1 and getPlayerHealth(uid,30000)
if doPlayerTakeItem(cid,2160,1) and 
selfSay('Receba! use com cuidado.')
doPlayerAddItem(cid,2343,1)
end
else
selfSay('Desculpe, você não tem nenhum helmet meu.')
end


elseif msgcontains(msg, 'no') and (talk_state >= 1 and talk_state <= 5) then
selfSay('Ok.')
talk_state = 0
end
-- Place all your code in here. Remember that hi, bye and all that stuff is already handled by the npcsystem, so you do not have to take care of that yourself.
return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())