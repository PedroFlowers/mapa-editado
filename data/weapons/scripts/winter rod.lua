local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 42)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, -250, 0, -500)

function onUseWeapon(cid, var)
	return doCombat(cid, combat, var)
end


