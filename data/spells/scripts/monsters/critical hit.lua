local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -0.4, -30, -0.5, 0)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
