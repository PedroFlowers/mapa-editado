local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

function onCastSpell(cid, var)
doPlayerAddMana(cid, math.random(2500, 3000))
doPlayerAddMana(cid, math.random(2500, 3000))
doPlayerSay(cid,"Aaaaah..",16)
	return doCombat(cid, combat, var)
end
