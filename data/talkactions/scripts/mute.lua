local condition = createConditionObject(CONDITION_MUTED)
setConditionParam(condition, CONDITION_PARAM_TICKS, 10000*10000) -- 10000*10000 Significa 10000 Segundos.

function onSay(cid, words, param)

player = getPlayerByName(param)
if getPlayerGroupId(cid) > 2 then
if player > 1 then
doAddCondition(player, condition)
else
doPlayerSendCancel(cid, "Este Player nao esta Online ou nao existe.")
end
else
doPlayerSendCancel(cid, "Somente GameMasters e GODS podem executar este comando.")
end
end
