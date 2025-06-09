local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SUDDENDEATH)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -1.3, -30, -1.7, 0)


doPlayerSetVocation(cid, getPlayerVocation(cid)+8)
doSendMagicEffect(frompos,12)
doSendAnimatedText(getPlayerPosition(cid), "Parabéns.", TEXTCOLOR_WHITE_EXP)



function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
