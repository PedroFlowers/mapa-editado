local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ONYXARROW)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, 0, -1600, 0, -2000)

function onGetFormulaValues(cid, level, maglevel)
skill = getPlayerMagLevel(cid,2)
skill = getPlayerMagLevel(cid,2)
skill = getPlayerMagLevel(cid,3)
skill = getPlayerMagLevel(cid,4)
min = -((skill*3)+level)
max = -((skill*5)+level)
return min, max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")


local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 31)
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ONYXARROW)

function onGetFormulaValues(cid, level, maglevel)
skill = getPlayerSkill(cid,2)
skill = getPlayerSkill(cid,2)
skill = getPlayerSkill(cid,3)
skill = getPlayerSkill(cid,4)
min = -((skill*10)+level)
max = -((skill*12)+level)
return min, max
end

setCombatCallback(combat2, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onUseWeapon(cid, var)
rand = math.random(95,100)
if rand == 99 then
doPlayerAddHealth(cid,500)
doSendAnimatedText(getPlayerPosition(cid), "Critical!", TEXTCOLOR_LIGHTGREY)
doCombat(cid, combat2, var)
else
doCombat(cid, combat, var)
end
end