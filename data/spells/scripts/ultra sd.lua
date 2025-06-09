local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SUDDENDEATH)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -1.0, -4000000, -1.0, -6000000)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, 0, -200, 0, -400)

local arr = {
{1, 1, 1},
{1, 3, 1},
{1, 1, 1}
}

local arr2 = {
{1, 1, 1},
{1, 3, 1},
{1, 1, 1}
}

local area = createCombatArea(arr)
local area2 = createCombatArea(arr2)
setCombatArea(combat, area)
setCombatArea(combat, area2)
function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end

function onCastSpell2(cid, var)
	return doCombat(cid, combat2, var)
end
