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

if msgcontains(msg, 'final') or msgcontains(msg, 'final promotion') then
selfSay('Para pode comprar Final voce prescisa ser lvl 8 e ter os items requeridos.(final spirit e 5kk) para comprar final diga (spirit).')
elseif msgcontains(msg, 'spirit') or msgcontains(msg, 'final promotion') then
selfSay('tem certeza que ker troca seu final spirit e mais 3kk em troca de final ?. diga (yes) se kiser. Diga (no) se nao kiser.')
talk_state = 1
elseif getPlayerLevel(cid) < 8 then
				selfSay('desculpe voce presiza ser level 8.')
				talk_state = 1

elseif msgcontains(msg, 'yes') and talk_state == 1 then
if getPlayerItemCount(cid,13626) >= 1 and getPlayerItemCount(cid,2160) >= 500 then
if doPlayerTakeItem(cid,13626,1) and doPlayerTakeItem(cid,2160,500) == 0 then
selfSay('You Are Um New Final!')
doPlayerSetVocation(cid, getPlayerVocation(cid)+16)
end
else
selfSay('Desculpe, voc� n�o tem os itens requeridos.')
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