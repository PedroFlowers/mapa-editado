--sistema de invasao by yago nobre (god severo) OTServ Networks

function onSay(cid, words, param)
aceso = 1
aceso1 = getPlayerAccess(cid)
tempo = 9000
if aceso1 >= aceso then

doPlayerSay(cid,"/bc white O lord irgun lança uma grande maldiçao de escaravelhos sobre dahlia ,quem podera nos defender!",22)
doPlayerSendTextMessage(cid, 24,'Invasao Realizada Com Sucesso.')

--- Local summons and Creatures summons ---
monsterpos1 = {x=193, y=34, z=7}
monsterpos2 = {x=194, y=34, z=7}
monsterpos3 = {x=195, y=35, z=7}
monsterpos4 = {x=193, y=36, z=7}
monsterpos5 = {x=193, y=38, z=7}
monsterpos6 = {x=193, y=39, z=7}
monsterpos7 = {x=193, y=42, z=7}
monsterpos8 = {x=193, y=43, z=7}
monsterpos9 = {x=193, y=46, z=7}
monsterpos10 = {x=192, y=46, z=7}
monsterpos11 = {x=193, y=47, z=7}
monsterpos12 = {x=193, y=49, z=7}
monsterpos13 = {x=193, y=50, z=7}
monsterpos14 = {x=193, y=54, z=7}
monsterpos15 = {x=193, y=56, z=7}
monsterpos16 = {x=190, y=59, z=7}
monsterpos17 = {x=156, y=32, z=7}
monsterpos18 = {x=156, y=33, z=7}
monsterpos19 = {x=156, y=34, z=7}
monsterpos20 = {x=137, y=38, z=7}

doSummonCreature("escaravelho",monsterpos1)
doSummonCreature("escaravelho",monsterpos2)
doSummonCreature("escaravelho",monsterpos3)
doSummonCreature("escaravelho",monsterpos4)
doSummonCreature("escaravelho",monsterpos5)
doSummonCreature("escaravelho",monsterpos6)
doSummonCreature("escaravelho",monsterpos7)
doSummonCreature("escaravelho",monsterpos8)
doSummonCreature("escaravelho",monsterpos9)
doSummonCreature("escaravelho",monsterpos10)
doSummonCreature("escaravelho",monsterpos11)
doSummonCreature("escaravelho",monsterpos12)
doSummonCreature("escaravelho",monsterpos13)
doSummonCreature("escaravelho",monsterpos14)
doSummonCreature("escaravelho",monsterpos15)
doSummonCreature("escaravelho",monsterpos16)
doSummonCreature("escaravelho",monsterpos17)
doSummonCreature("escaravelho",monsterpos18)
doSummonCreature("escaravelho",monsterpos19)
doSummonCreature("escaravelho",monsterpos20)
--- end local summons and creatures summons ---

else
doPlayerSendTextMessage(cid,22,"Invasao Realizada Com Sucesso.")
end
end

