local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SUDDENDEATH)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -2.7, -150, -3.0, -500)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end


local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SUDDENDEATH)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -3.0, -150, -3.2, -1000) 


function onCastSpell(cid, var)
rand = math.random(90,100)
if rand == 99 then
doPlayerSay(cid, "Take That!",16)
doCombat(cid, combat2, var)
else
doCombat(cid, combat, var)
end
end
