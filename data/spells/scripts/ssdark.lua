local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SUDDENDEATH)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -10.0, -22500, -10.0, -36000)

function onCastSpell(cid, var)
doSendAnimatedText(getPlayerPosition(cid), "", TEXTCOLOR_LIGHTRED)
	return doCombat(cid, combat, var)
end


local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SUDDENDEATH)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -5.0, -39500, 5.0, -49000)


function onCastSpell(cid, var)
rand = math.random(98,100)
if rand == 99 then
doPlayerAddHealth(cid,5000)
doSendAnimatedText(getPlayerPosition(cid), "", TEXTCOLOR_LIGHTRED)
doPlayerSay(cid, "",16)
doCombat(cid, combat2, var)
else
doCombat(cid, combat, var)
end
end