local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
function onGetFormulaValues(cid, level, maglevel)
	min = -(level * 22) / 10
	max = -(level * 38.5) /10
	
	return min, max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local arr = {
{0, 0, 1, 0, 0},
{0, 1, 1, 1, 0},
{1, 1, 2, 1, 1},
{0, 1, 1, 1, 0},
{0, 0, 1, 0, 0}
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
