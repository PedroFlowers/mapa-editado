function onUse(cid, item, frompos, item2, topos)

playerlevel = getPlayerLevel(cid)

if playerlevel < 3 then
	doSummonCreature("rat",topos)
	doSummonCreature("spider",topos)
elseif playerlevel > 3 and < 5 then
	doSummonCreature("poison spider",topos)
	doSummonCreature("poison spider",topos)
elseif playerlevel > 5 and < 7 then
	doSummonCreature("troll",topos)
	doSummonCreature("troll",topos)
	doSummonCreature("troll",topos)
	doSummonCreature("troll",topos)
elseif playerlevel > 7 and < 10 then
	doSummonCreature("minotaur",topos)
	doSummonCreature("minotaur",topos)
elseif playerlevel > 10 and < 15 then
	doSummonCreature("elf",topos)
	doSummonCreature("elf scout",topos)
elseif playerlevel > 15 and < 20 then
	doSummonCreature("cyclops",topos)
	doSummonCreature("cyclops",topos)
elseif playerlevel > 20 and < 25 then
	doSummonCreature("demon skeleton",topos)
	doSummonCreature("demon skeleton",topos)
elseif playerlevel > 25 and < 30 then
	doSummonCreature("dragon",topos)
elseif playerlevel > 30 and < 35 then
	doSummonCreature("vampire",topos)
	doSummonCreature("vampire",topos)
	doSummonCreature("necromancer",topos)
elseif playerlevel > 35 and < 40 then
	doSummonCreature("giant spider",topos)
elseif playerlevel > 40 and < 45 then
	doSummonCreature("dragon lord",topos)
	doSummonCreature("dragon",topos)
elseif playerlevel > 45 and < 50 then
	doSummonCreature("orc warlord",topos)
	doSummonCreature("orc warlord",topos)
elseif playerlevel > 50 and < 55 then
	doSummonCreature("ancient scarab",topos)
	doSummonCreature("dragon lord",topos)
elseif playerlevel > 55 and < 60 then
	doSummonCreature("dragon lord",topos)
	doSummonCreature("dragon lord",topos)
elseif playerlevel > 60 and < 70 then
	doSummonCreature("warlock",topos)
esleif playerlevel > 70 and < 80 then
	doSummonCreature("hero",topos)
	doSummonCreature("hero",topos)
	doSummonCreature("hero",topos)
	doSummonCreature("hero",topos)
elseif playerlevel > 80 and < 90 then
	doSummonCreature("warlock",topos)
	doSummonCreature("warlock",topos)
	doSummonCreature("warlock",topos)
elseif playerlevel > 90 and < 100 then
	doSummonCreature("demon",topos)
elseif playerlevel > 100 and < 120 then
	doSummonCreature("demon",topos)
	doSummonCreature("demon",topos)
elseif playerlevel > 120 and < 200 then
	doSummonCreature("demon",topos)
	doSummonCreature("demon",topos)
	doSummonCreature("demon",topos)
	doSummonCreature("demon",topos)
	doSummonCreature("demon",topos)
	doSummonCreature("demon",topos)
	doSummonCreature("demon",topos)
	doSummonCreature("demon",topos)
else
	doPlayerSendCancel(cid,"Sorry not possible.")
  return 0
end
return 1
end