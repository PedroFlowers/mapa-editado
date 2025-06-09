local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 31)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, -1400, 0, -1600)

function onUseWeapon(cid, var)
doPlayerAddHealth(cid, math.random(100, 100))
doSendAnimatedText(getPlayerPosition(cid), "Critical!", TEXTCOLOR_LIGHTGREY)
	return doCombat(cid, combat, var)
end
