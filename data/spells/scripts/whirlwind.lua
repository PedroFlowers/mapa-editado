local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENCHANTEDSPEAR)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, 0, 0, 0.5, 0)
local arr = {
{1, 1, 1},
{1, 1, 1},
{1, 1, 1},
{0, 1, 0},
{0, 3, 0},
}
local arrDiag = {
{1, 1, 1, 0, 0},
{1, 1, 0, 0, 0},
{1, 0, 1, 0, 0},
{0, 0, 0, 1, 0},
{0, 0, 0, 0, 3},
}
local area = createCombatArea(arr, arrDiag)
setCombatArea(combat, area)
function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end 