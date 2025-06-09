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

if msgcontains(msg, 'deus') or msgcontains(msg, 'deus promotion') then
selfSay('Para pode comprar deus voce prescisa ser lvl 8 e ter os items requeridos.(spirit of deus e 1kk) para comprar deus diga (spirit).')
elseif msgcontains(msg, 'spirit') or msgcontains(msg, 'spirit of deus') then
selfSay('tem certeza que ker troca seu spirit of deus e mais 1kk em troca de deus ?. diga (yes) se kiser. Diga (no) se nao kiser.')
talk_state = 1
elseif getPlayerLevel(cid) < 8 then
				selfSay('desculpe voce presiza ser level 8.')
				talk_state = 1

elseif msgcontains(msg, 'yes') and talk_state == 1 then
if getPlayerItemCount(cid,13651) >= 1 and getPlayerItemCount(cid,2160) >= 100 then
if doPlayerTakeItem(cid,13651,1) and doPlayerTakeItem(cid,2160,100) == 0 then
selfSay('You Are Um New Deus!')
doPlayerSetVocation(cid, getPlayerVocation(cid)+8)
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