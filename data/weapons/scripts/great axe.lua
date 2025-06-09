local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -0.5, -40, -1.0, 0)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 31)
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)

function onGetFormulaValues(cid, level, maglevel)
skill = getPlayerSkill(cid,3)
min = -((skill*29)+level)
max = -((skill*31)+level)
return min, max
end

setCombatCallback(combat2, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local condition = createConditionObject(CONDITION_DROWN)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 1300, 100, -2300)
setCombatCondition(combat2, condition)

function onUseWeapon(cid, var)
rand = math.random(1,100)
if rand == 99 then
doSendAnimatedText(getPlayerPosition(cid), "Critical!", TEXTCOLOR_LIGHTGREY)
doPlayerAddHealth(cid,1000)
doCombat(cid, combat2, var)
end
rand = math.random(92,100)
if rand == 99 then
doSendAnimatedText(getPlayerPosition(cid), "Critical!", TEXTCOLOR_LIGHTGREY)
doPlayerAddHealth(cid,1000)
rand = math.random(90,100)
doCombat(cid, combat2, var)
else
doCombat(cid, combat, var)
end
end