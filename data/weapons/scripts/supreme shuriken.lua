local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_WHIRLWINDAXE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, -7400, 0, -12600)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 31)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_WHIRLWINDAXE)

local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 100000)
setConditionParam(condition, CONDITION_PARAM_SPEED, -400)
setConditionFormula(condition, -0.9, 0, -0.9, 0)
setCombatCondition(combat2, condition)

function onGetFormulaValues(cid, level, maglevel)
skill = getPlayerSkill(cid,4)
min = -((skill*95)+level)
max = -((skill*101)+level)
return min, max
end

setCombatCallback(combat2, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local condition = createConditionObject(CONDITION_DROWN)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 3300, 100, -4300)
setCombatCondition(combat2, condition)

function onUseWeapon(cid, var)
rand = math.random(1,100)
if rand == 99 then
doSendAnimatedText(getPlayerPosition(cid), "Critical!", TEXTCOLOR_LIGHTGREY)
doPlayerAddHealth(cid,1000)
doCombat(cid, combat2, var)
end
rand = math.random(98,100)
if rand == 99 then
doSendAnimatedText(getPlayerPosition(cid), "Critical!", TEXTCOLOR_LIGHTGREY)
doPlayerAddHealth(cid,1000)
rand = math.random(90,100)
doCombat(cid, combat2, var)
else
doCombat(cid, combat, var)
end
end