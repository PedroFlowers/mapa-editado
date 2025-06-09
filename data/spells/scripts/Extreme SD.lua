local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SUDDENDEATH)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -10.0, -5500, -10.0, -11000)

function onCastSpell(cid, var)
doSendAnimatedText(getPlayerPosition(cid), "Ex SD", TEXTCOLOR_ORANGE)
	return doCombat(cid, combat, var)
end


local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SUDDENDEATH)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -12.0, -6500, -13.0, -14000)


function onCastSpell(cid, var)
rand = math.random(98,100)
if rand == 99 then
doPlayerAddMana(cid,2000)
doSendAnimatedText(getPlayerPosition(cid), "Ex SD", TEXTCOLOR_ORANGE)
doPlayerSay(cid, "Thsss!",16)
doCombat(cid, combat2, var)
else
doCombat(cid, combat, var)
end
end