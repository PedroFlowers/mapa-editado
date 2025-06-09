local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -0.5, -850000, -1.0, 0)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 31)
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 17)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC , 0, -15032000, 0, -1545000)

local combat4 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 13)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC , 0, -92000, 0, -145000)

local combat5 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 15)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC , 0, -7832000, 0, -9545000)

local combat6 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 17)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC , 0, -15032000, 0, -1545000)

local combat7 = createCombatObject()
setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, 19)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC , 0, -3232000, 0, -4245000)

local combat8 = createCombatObject()
setCombatParam(combat5, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat5, COMBAT_PARAM_EFFECT, 25)
setCombatFormula(combat5, COMBAT_FORMULA_LEVELMAGIC , 0, -320000, 0, -450000)

local combat9 = createCombatObject()
setCombatParam(combat6, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat6, COMBAT_PARAM_EFFECT, 27)
setCombatFormula(combat6, COMBAT_FORMULA_LEVELMAGIC , 0, -92000, 0, -405000)

local combat10 = createCombatObject()
setCombatParam(combat7, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat7, COMBAT_PARAM_EFFECT, 28)
setCombatFormula(combat7, COMBAT_FORMULA_LEVELMAGIC , 0, -302000, 0, -405000)

function onGetFormulaValues(cid, level, maglevel)
skill = getPlayerSkill(cid,3)
min = -((skill*31)+level)
max = -((skill*33)+level)
return min, max
end

setCombatCallback(combat2, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onUseWeapon(cid, var)
rand = math.random(1,100)
if rand == 99 then
doSendAnimatedText(getPlayerPosition(cid), "KING!", TEXTCOLOR_LIGHTGREY)
doPlayerAddHealth(cid,1000)
doCombat(cid, combat2, var)
end
rand = math.random(94,100)
if rand == 99 then
doSendAnimatedText(getPlayerPosition(cid), "KING!", TEXTCOLOR_LIGHTGREY)
doPlayerAddHealth(cid,1000)
rand = math.random(90,100)
doCombat(cid, combat2, var)
else
doCombat(cid, combat, var)
end
end