local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 31)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -2.0, -45, -2.3, 150)

function onUseWeapon(cid, var)
doPlayerAddHealth(cid, math.random(900, 900))
doPlayerSay(cid,"Fell my fury!?",16)
doSendAnimatedText(getPlayerPosition(cid), "Critical!", TEXTCOLOR_WHITE_EXP)
	return doCombat(cid, combat, var)
end