local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 49)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -0.1, -150, -0.1, -500)

function onUseWeapon(cid, var)
	return doCombat(cid, combat, var)
end