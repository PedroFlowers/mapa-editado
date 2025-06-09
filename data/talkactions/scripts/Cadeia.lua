function onSay(cid,words,param)
jailpos = {x=1026, y=977, z=5}
unjailpos = {x=1000, y=998, z=6}
target = getPlayerByName(param)
local access = getPlayerAccess(cid)
if access >= 6 then
if isPlayer(getPlayerByName(param)) == 1 then
jailer = getPlayerName(cid)
doPlayerSendTextMessage(target,25,'You got jailed by '..jailer..' for one day then you will be executed.')
doTeleportThing(target,jailpos)
doPlayerSendTextMessage(cid,21,"You just jailed "..param..".")
local a = {cid=cid, target=target, param=param, jailpos=jailpos, unjailpos=unjailpos}
addEvent(onTime,1440*60*1000,a)
end
end
end
