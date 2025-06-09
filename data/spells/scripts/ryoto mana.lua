local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_CRAPS)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)
--setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 1.3, -30, 2.0, 0)


function onCastSpell(cid, var)
doPlayerAddMana(cid, math.random(90000, 90000))
doSendAnimatedText(getPlayerPosition(cid), "Ryoto mana rune!", TEXTCOLOR_LIGHTGREEN)
	return doCombat(cid, combat, var)
end