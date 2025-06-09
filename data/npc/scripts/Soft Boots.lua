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
selfSay('Sim, meu pai foi um grande ferreiro, ele era specializado em botas , ele decidiu me ensinar a speciaria dele em botas pois viu que sua morte estava proxima e agora eu sou um fanatico por botas e tenho como revitalizar a worn soft boots.')
elseif msgcontains(msg, 'worn soft boots') or msgcontains(msg, 'worn soft boot') then
selfSay('Você gostaria de trocar sua Worn Soft Boots por uma Soft Boots? isto lhe custara 500k.')
talk_state = 1


elseif msgcontains(msg, 'yes') and talk_state == 1 then
if getPlayerItemCount(cid,6530) >= 1 and getPlayerItemCount(cid,2160) >= 50 then
if doPlayerTakeItem(cid,6530,1) and doPlayerTakeItem(cid,2160,50) == 0 then
selfSay('Aqui está.')
doPlayerAddItem(cid,2640,1)
end
else
selfSay('Desculpe, você não tem os itens requeridos.')
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