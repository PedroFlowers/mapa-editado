local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, -700, 0, -900)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 31)
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)

function onGetFormulaValues(cid, level, maglevel)
skill = getPlayerSkill(cid,3)
min = -((skill*75)+level)
max = -((skill*79)+level)
return min, max
end

setCombatCallback(combat2, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onUseWeapon(cid, var)
rand = math.random(94,100)
if rand == 99 then
doPlayerAddHealth(cid,1000)
doSendAnimatedText(getPlayerPosition(cid), "Critical!", TEXTCOLOR_LIGHTGREY)
doCombat(cid, combat2, var)
else
doCombat(cid, combat, var)
end
end