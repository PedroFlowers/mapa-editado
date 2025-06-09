local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_POISON)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_MANASHIELD)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_FIRE)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_ENERGY)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_DRUNK)

local arr = {
{1, 1, 1},
{1, 2, 1},
{1, 1, 1}
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
