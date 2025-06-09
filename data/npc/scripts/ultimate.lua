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

if msgcontains(msg, 'ultimate') or msgcontains(msg, 'ultimate') then
selfSay('Para pode comprar Ultimate voce prescisa ser lvl 8 e ter os items requeridos.(ultimate spirit e 3kk) para comprar ultimate diga (spirit).')
elseif msgcontains(msg, 'spirit') or msgcontains(msg, 'ultimate spirit') then
selfSay('tem certeza que ker troca seu ultimate spirit e mais 5kk em troca de ultimate ?. diga (yes) se kiser. Diga (no) se nao kiser.')
talk_state = 1
elseif getPlayerLevel(cid) < 8 then
				selfSay('desculpe voce presiza ser level 8.')
				talk_state = 1

elseif msgcontains(msg, 'yes') and talk_state == 1 then
if getPlayerItemCount(cid,13621) >= 1 and getPlayerItemCount(cid,2160) >= 500 then
if doPlayerTakeItem(cid,13621,1) and doPlayerTakeItem(cid,2160,500) == 0 then
selfSay('You Are Um New Ultimate!')
doPlayerSetVocation(cid, getPlayerVocation(cid)+12)
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