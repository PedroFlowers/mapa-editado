local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 13)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC , 0, -92000, 0, -145000)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 15)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC , 0, -7832000, 0, -9545000)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 17)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC , 0, -15032000, 0, -1545000)

local combat4 = createCombatObject()
setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, 19)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC , 0, -3232000, 0, -4245000)

local combat5 = createCombatObject()
setCombatParam(combat5, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat5, COMBAT_PARAM_EFFECT, 25)
setCombatFormula(combat5, COMBAT_FORMULA_LEVELMAGIC , 0, -320000, 0, -450000)

local combat6 = createCombatObject()
setCombatParam(combat6, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat6, COMBAT_PARAM_EFFECT, 27)
setCombatFormula(combat6, COMBAT_FORMULA_LEVELMAGIC , 0, -92000, 0, -405000)

local combat7 = createCombatObject()
setCombatParam(combat7, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat7, COMBAT_PARAM_EFFECT, 28)
setCombatFormula(combat7, COMBAT_FORMULA_LEVELMAGIC , 0, -302000, 0, -405000)

local combat8 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 3)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC , 0, -15032000, 0, -1545000)

local combat9 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 18)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC , 0, -15032000, 0, -1545000)

local combat10 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 37)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC , 0, -15032000, 0, -1545000)

arr1 = {
{0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 3, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0},
}

arr2 = {
{1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1},
{0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0},
{0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 3, 1, 0, 1, 0, 0},
{0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0},
{0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0},
{1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1},
}

arr3 = {
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 3, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
}

arr4 = {
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 1, 0, 1, 3, 1, 0, 0, 1, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1},
{0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
}

arr5 = {
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0},
{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 1, 1, 1, 3, 1, 0, 0, 0, 0},
{0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0},
{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0},
{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0},
}

arr6 = {
{0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 3, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0},
}

arr7 = {
{0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0},
{0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0},
{0, 0, 0, 0, 1, 3, 1, 0, 1, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0},
{0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0},
}

arr8 = {
{1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1},
{0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0},
{0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 3, 1, 0, 1, 0, 0},
{0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0},
{0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0},
{1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1},
}

arr9 = {
{1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1},
{0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0},
{0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 3, 1, 0, 1, 0, 0},
{0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0},
{0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0},
{1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1},
}

arr10 = {
{1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1},
{0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0},
{0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 3, 1, 0, 1, 0, 0},
{0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0},
{0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0},
{1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1},
}

local area1 = createCombatArea(arr1)
local area2 = createCombatArea(arr2)
local area3 = createCombatArea(arr3)
local area4 = createCombatArea(arr4)
local area5 = createCombatArea(arr5)
local area6 = createCombatArea(arr6)
local area7 = createCombatArea(arr7)
local area8 = createCombatArea(arr8)
local area9 = createCombatArea(arr9)
local area10 = createCombatArea(arr10)

setCombatArea(combat1, area1)
setCombatArea(combat2, area2)
setCombatArea(combat3, area3)
setCombatArea(combat4, area4)
setCombatArea(combat5, area5)
setCombatArea(combat6, area6)
setCombatArea(combat7, area7)
setCombatArea(combat7, area8)
setCombatArea(combat7, area9)
setCombatArea(combat7, area10)

local function onCastSpell1(parameters)
doCombat(parameters.cid, parameters.combat1, parameters.var)
end

local function onCastSpell2(parameters)
doCombat(parameters.cid, parameters.combat2, parameters.var)
end

local function onCastSpell3(parameters)
doCombat(parameters.cid, parameters.combat3, parameters.var)
end

local function onCastSpell4(parameters)
doCombat(parameters.cid, parameters.combat4, parameters.var)
end

local function onCastSpell5(parameters)
doCombat(parameters.cid, parameters.combat5, parameters.var)
end

local function onCastSpell6(parameters)
doCombat(parameters.cid, parameters.combat6, parameters.var)
end

local function onCastSpell7(parameters)
doCombat(parameters.cid, parameters.combat7, parameters.var)
end

local function onCastSpell8(parameters)
doCombat(parameters.cid, parameters.combat8, parameters.var)
end

local function onCastSpell9(parameters)
doCombat(parameters.cid, parameters.combat9, parameters.var)
end

local function onCastSpel20(parameters)
doCombat(parameters.cid, parameters.combat10, parameters.var)
end

function onCastSpell(cid, var)
local parameters = { cid = cid, var = var, combat1 = combat1, combat2 = combat2, combat3 = combat3, combat4 = combat4, combat5 = comba5, combat6 = combat6, combat7, combat8, combat9, combat10 = combat10}
addEvent(onCastSpell1, 100, parameters)
addEvent(onCastSpell2, 300, parameters)
addEvent(onCastSpell3, 500, parameters)
addEvent(onCastSpell4, 700, parameters)
addEvent(onCastSpell5, 900, parameters)
addEvent(onCastSpell6, 1100, parameters)
addEvent(onCastSpell7, 1300, parameters)
addEvent(onCastSpell8, 1500, parameters)
addEvent(onCastSpell9, 1700, parameters)
addEvent(onCastSpell10, 1900, parameters)

end                  