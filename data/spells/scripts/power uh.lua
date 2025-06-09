local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 1)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)
--setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 1.3, -30, 2.0, 0)


function onCastSpell(cid, var)
doPlayerAddHealth(cid, math.random(100000, 150000))
doSendAnimatedText(getPlayerPosition(cid), "Power uh!", TEXTCOLOR_LIGHTBLUE)
	return doCombat(cid, combat, var)
end
