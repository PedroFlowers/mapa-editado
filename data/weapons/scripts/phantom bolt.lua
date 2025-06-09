local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ONYXARROW)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, -600, 0, -750)

function onUseWeapon(cid, var)
	return doCombat(cid, combat, var)
end


local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 31)
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ONYXARROW)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, 0, -1500, 0, -1700)

function onUseWeapon(cid, var)
	return doCombat(cid, combat, var)
end

local condition = createConditionObject(CONDITION_DROWN)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 1300, 100, -2300)
setCombatCondition(combat2, condition)

function onUseWeapon(cid, var)
rand = math.random(96,100)
if rand == 99 then
doPlayerAddHealth(cid,1000)
doPlayerSay(cid, "Ops! hurt?",16)
doSendAnimatedText(getPlayerPosition(cid), "Critical!", TEXTCOLOR_LIGHTGREY)
doCombat(cid, combat2, var)
else
doCombat(cid, combat, var)
end
end