local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, -5.3, -420, -5.3, -420)


local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 31)
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)

function onGetFormulaValues(cid, level, maglevel)
skill = getPlayerSkill(cid,2)
skill = getPlayerSkill(cid,2)
skill = getPlayerSkill(cid,3)
skill = getPlayerSkill(cid,4)
min = -((skill*16)+level)
max = -((skill*26)+level)
return min, max
end

setCombatCallback(combat2, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onUseWeapon(cid, var)
rand = math.random(100,100)
if rand == 100 then
doPlayerAddHealth(cid,99999)
doCombat(cid, combat2, var)
else
doCombat(cid, combat, var)
end
end