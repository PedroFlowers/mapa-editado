local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 29)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, -900000, 0, -1320000)

function onUseWeapon(cid, var)
	return doCombat(cid, combat, var)
end


local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 29)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, 0, -1300000, 0, -1720000)

local condition = createConditionObject(CONDITION_DROWN)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 430000, 10000, -530000)
setCombatCondition(combat2, condition)

function onUseWeapon(cid, var)
rand = math.random(90,100)
if rand == 99 then
doCombat(cid, combat2, var)
doSendAnimatedText(getPlayerPosition(cid), "Team!", TEXTCOLOR_LIGHTGREY)
doPlayerSay(cid, "Pinks!!",16)
else
doCombat(cid, combat, var)
end
end