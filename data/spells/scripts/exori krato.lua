local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 51)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, 0, -50032000, 0, -50032000)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 31)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, 0, -50032000, 0, -50032000)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 16)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, 0, -50032000, 0, -50032000)

arr1 = {
{0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 1, 3, 1, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0},
}

arr2 = {
{0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 3, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
}

arr3 = {
{0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 3, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
}

local area1 = createCombatArea(arr1)
local area2 = createCombatArea(arr2)
local area3 = createCombatArea(arr3)

setCombatArea(combat1, area1)
setCombatArea(combat2, area2)
setCombatArea(combat3, area3)

local function onCastSpell1(parameters)
doCombat(parameters.cid, parameters.combat1, parameters.var)
end

local function onCastSpell2(parameters)
doCombat(parameters.cid, parameters.combat2, parameters.var)
end

local function onCastSpell3(parameters)
doCombat(parameters.cid, parameters.combat3, parameters.var)
end

function onCastSpell(cid, var)
local parameters = { cid = cid, var = var, combat1 = combat1, combat2 = combat2, combat3 = combat3}
addEvent(onCastSpell1, 100, parameters)
addEvent(onCastSpell2, 300, parameters)
addEvent(onCastSpell3, 500, parameters)

end                  