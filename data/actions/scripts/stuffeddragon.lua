function onUse(cid, item, frompos, item2, topos)

rand = math.random(1, 5)

if getPlayerExhaust(cid,5791,4) == 1 then

elseif rand == 1 then
doPlayerSay(cid, "I WILL SET THE WORLD IN FIRE!" ,16)
doSendMagicEffect(cid, frompos, 6)
elseif rand == 2 then
doPlayerSay(cid, "GROOAAARRR!" ,16)
doSendMagicEffect(cid, frompos, 6)
elseif rand == 3 then
doPlayerSay(cid, "FCHHHHH",16)
doSendMagicEffect(cid, frompos, 6)
elseif rand == 4 then
doPlayerSay(cid, "YOU WILL BURN!",16)
doSendMagicEffect(cid, frompos, 6)
elseif rand == 5 then
doPlayerSay(cid, "ZCHHHHH",16)
doSendMagicEffect(cid, frompos, 6)


end
return 1
end