local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_DROWN)

function onCastSpell(cid, var)
doPlayerSendTextMessage(cid, 20, 'você retirou a mana shield de seu oponemte.')
doPlayerSay(cid, "die sucker.",16)
doSendAnimatedText(getPlayerPosition(cid), "Woop!", TEXTCOLOR_LIGHTGREEN)
	return doCombat(cid, combat, var)
end