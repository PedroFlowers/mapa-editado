local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end
-- OTServ event handling functions end

-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
keywordHandler:addKeyword({'armors'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I buy Mind robe (400k), Horned (400k), Dark Wyzard robe (400k), Gladiator (450k), Arcane robe (200k), Venon (500k) Phoenix (550k), also mpa (100k).'})


-- Makes sure the npc reacts when you say hi, bye etc.
npcHandler:addModule(FocusModule:new())