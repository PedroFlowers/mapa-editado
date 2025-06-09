local acombat = createCombatObject()

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_BOLT)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -3.0, -20, -2.6, -250)

arr = {
{0, 0, 0, 0, 0},
{0, 1, 1, 1, 0},
{0, 1, 2, 1, 0},
{0, 1, 1, 1, 0},
{0, 0, 0, 0, 0}
}
local area = createCombatArea(arr)
setCombatArea(acombat, area)

function onTargetTile(cid, pos)
doCombat(cid,combat,positionToVariant(pos))
end

setCombatCallback(acombat, CALLBACK_PARAM_TARGETTILE, "onTargetTile")

function onCastSpell(cid, var)
return doCombat(cid, acombat, var)
end
