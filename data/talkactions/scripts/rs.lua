-- 1º script de invasao para sql, por ALEX0007--
function onSay(cid, words, param)
monstro = "Rei Sentin"


pos1 = {x=1127, y=993, z=7}

if getPlayerAccess(cid) >= 1 then --so GM e GOD pode usar esse comando
doSummonCreature(monstro, pos1)


doPlayerSendTextMessage(cid, 20, '')

end
end