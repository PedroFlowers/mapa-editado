local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_DROWN)

function onCastSpell(cid, var)

doSendAnimatedText(getPlayerPosition(cid), "woooops", TEXTCOLOR_LIGHTGREEN)
	return doCombat(cid, combat, var)
end