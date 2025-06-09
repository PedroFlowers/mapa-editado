local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HEALING)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)
--setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 2.6, -100, 2.9, 100)

function onGetFormulaValues(cid, level, maglevel)
	min = (level * 8 + maglevel * 10) * 6.6 - 50
	max = (level * 8 + maglevel * 11) * 6.9
	
	if min < 1250 then
		min = 2250
	end

	return min, max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
