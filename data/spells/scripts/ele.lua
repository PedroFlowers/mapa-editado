local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -0.0, -0, -0.0, -0)

local arr = {
{0, 0, 0, 0, 0,},
{0, 0, 0, 0, 0,},
{0, 0, 0, 0, 0,},
{0, 0, 0, 0, 0,},
{0, 0, 0, 0, 0,},
{0, 0, 0, 0, 0,},
{0, 0, 0, 0, 0,},
}


local area = createCombatArea(arr)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
