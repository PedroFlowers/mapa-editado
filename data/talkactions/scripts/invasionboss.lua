--sistema de invasao by yago nobre (god severo) OTServ Networks

function onSay(cid, words, param)
aceso = 1
aceso1 = getPlayerAccess(cid)
tempo = 9000
if aceso1 >= aceso then

doPlayerSay(cid,"/bc white quatro magos ancioes estao a procura de um novo corpo muito cuidado pois ele sao perigosos!!",22)
doPlayerSendTextMessage(cid, 24,'Invasao Realizada Com Sucesso.')

--- Local summons and Creatures summons ---
monsterpos1 = {x=98, y=57, z=7}
monsterpos2 = {x=168, y=33, z=5}
monsterpos3 = {x=175, y=68, z=7}
monsterpos4 = {x=169, y=109, z=6}

doSummonCreature("ancient boss",monsterpos1)
doSummonCreature("ancient boss",monsterpos2)
doSummonCreature("ancient boss",monsterpos3)
doSummonCreature("ancient boss",monsterpos4)

--- end local summons and creatures summons ---

else
doPlayerSendTextMessage(cid,22,"Invasao Realizada Com Sucesso.")
end
end

