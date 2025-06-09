local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_BOLT)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, -50, 0, -100)

function onUseWeapon(cid, var)
	return doCombat(cid, combat, var)
end


local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 31)
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_BOLT)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, 0, -200, 0, -300)

function onUseWeapon(cid, var)
	return doCombat(cid, combat, var)
end

function onUseWeapon(cid, var)
rand = math.random(93,100)
if rand == 99 then
doPlayerAddHealth(cid,1000)
doPlayerSay(cid, "Ops! hurt?",16)
doSendAnimatedText(getPlayerPosition(cid), "Critical!", TEXTCOLOR_LIGHTGREY)
doCombat(cid, combat2, var)
else
doCombat(cid, combat, var)
end
end