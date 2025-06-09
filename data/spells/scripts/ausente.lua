-- Script 100% by Colandus!

-- >>CONFIG<< --
local HEAL_DELAY = 1000 -- How big should the delay be between each heal? Milliseconds > 0 = 1 second.
local HEAL_TIMES = 200 -- How many times shall it heal you each time you use it?
-- >>CONFIG<< --


function onCastSpell(cid, var)
	doTargetCombatCondition(1, cid, exhaust, CONDITION_DROWN)
	local function onCastSpell1(parameters)
		doCombat(parameters.cid, parameters.combat, parameters.var)

	doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
		doSendAnimatedText(getPlayerPosition(cid), "Ausente", TEXTCOLOR_WHITE_EXP)
	end
	
	local parameters = {cid = cid, combat = combat, var = var}
	for i = 0, math.max(HEAL_TIMES, 0) - 0 do
		addEvent(onCastSpell1, HEAL_DELAY * i, parameters)
	end
	return LUA_NO_ERROR
end