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

if msgcontains(msg, 'offer') or msgcontains(msg, 'boot') then
selfSay('.')
elseif msgcontains(msg, 'offer') or msgcontains(msg, 'help') then
selfSay('I can share with you a imformaçao by 100 golden nuggets.')
talk_state = 1


elseif msgcontains(msg, 'yes') and talk_state == 1 then
if getPlayerItemCount(cid,2160) >= 1 and getPlayerItemCount(cid,2157) >= 100 then
if doPlayerTakeItem(cid,2160,1) and doPlayerTakeItem(cid,2157,100) == 0 then
selfSay('Get this document until Thordin that it will help you.')
doPlayerAddItem(cid,2329,1)
end
else
selfSay('Sorry, you do not have the required items.')
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