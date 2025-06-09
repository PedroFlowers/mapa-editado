local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 34)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_NONE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -10.0, -4000, -10.0, -6000)

function onCastSpell(cid, var)
doSendAnimatedText(getPlayerPosition(cid), "Gravita!", TEXTCOLOR_LIGHTBLUE)
	return doCombat(cid, combat, var)
end


local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 34)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_NONE)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -5.0, -4500, -5.0, -9000)


function onCastSpell(cid, var)
rand = math.random(97,100)
if rand == 98 then
doPlayerAddHealth(cid,-5000)
doSendAnimatedText(getPlayerPosition(cid), "Gravita!", TEXTCOLOR_LIGHTBLUE)
doPlayerSay(cid, "Ouch!",16)
doCombat(cid, combat2, var)
else
doCombat(cid, combat, var)
end
end