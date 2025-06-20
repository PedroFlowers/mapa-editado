local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
function onGetFormulaValues(cid, level, maglevel)
	min = -(level * 58) / 10
	max = -(level * 78.5) /10
	
	return min, max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local arr = {
{0, 0, 0, 0, 0},
{0, 0, 1, 0, 0},
{0, 1, 2, 1, 0},
{0, 0, 1, 0, 0},
{0, 0, 0, 0, 0}
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
