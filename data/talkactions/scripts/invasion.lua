--sistema de invasao by yago nobre (god severo) OTServ Networks

function onSay(cid, words, param)
aceso = 1
aceso1 = getPlayerAccess(cid)
tempo = 9000
if aceso1 >= aceso then

doPlayerSay(cid,"/bc white Os Grandes Dark Warlocks Mandaram uma Tropa de warlock Para Dahlia.Defenda Sua Cidade.",22)
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

doSummonCreature("warlock",monsterpos1)
doSummonCreature("warlock",monsterpos2)
doSummonCreature("warlock",monsterpos3)
doSummonCreature("warlock",monsterpos4)
doSummonCreature("warlock",monsterpos5)
doSummonCreature("warlock",monsterpos6)
doSummonCreature("warlock",monsterpos7)
doSummonCreature("warlock",monsterpos8)
doSummonCreature("warlock",monsterpos9)
doSummonCreature("warlock",monsterpos10)
doSummonCreature("warlock",monsterpos11)
doSummonCreature("dark warlock",monsterpos12)
doSummonCreature("warlock",monsterpos13)
doSummonCreature("warlock",monsterpos14)
doSummonCreature("dark warlock",monsterpos15)
doSummonCreature("warlock",monsterpos16)
doSummonCreature("warlock",monsterpos17)
doSummonCreature("warlock",monsterpos18)
doSummonCreature("warlock",monsterpos19)
doSummonCreature("dark warlock",monsterpos20)
--- end local summons and creatures summons ---

else
doPlayerSendTextMessage(cid,22,"Invasao Realizada Com Sucesso.")
end
end

