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

if msgcontains(msg, 'valan') or msgcontains(msg, 'second promotion') then
selfSay('Bom eu posso torna-lo um valan em troca de um item valioso, lembrando que apos voce conseguir o item e vir aki trocar cmg vc deve vir num level 8 da msm voc que seu char normal que eu o transformarei num valan.')
elseif msgcontains(msg, 'spirit') or msgcontains(msg, 'spirit') then
selfSay('Você gostaria de trocar seu spirit of valan mais 500k? por um personagem valan? lembrando que voce deve ser level 8 para isso.')
talk_state = 1
elseif getPlayerLevel(cid) < 8 then
				selfSay('desculpe voce presiza ser level 8.')
				talk_state = 1

elseif msgcontains(msg, 'yes') and talk_state == 1 then
if getPlayerItemCount(cid,2361) >= 1 and getPlayerItemCount(cid,2160) >= 50 then
if doPlayerTakeItem(cid,2361,1) and doPlayerTakeItem(cid,2160,50) == 0 then
selfSay('Aqui está.')
doPlayerSetVocation(cid, getPlayerVocation(cid)+4)
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