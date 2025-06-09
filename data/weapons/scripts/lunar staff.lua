local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 37)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, -1800, 0, -2000)

function onUseWeapon(cid, var)
doPlayerSay(cid,"Eletrifick!!",16)
	return doCombat(cid, combat, var)
end

