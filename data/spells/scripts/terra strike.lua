local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 46)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -0.4, -32, -0.5, 0)

local combatDist = createCombatObject()
setCombatParam(combatDist, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatParam(combatDist, COMBAT_PARAM_EFFECT, 46)
setCombatParam(combatDist, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_EARTH)
setCombatFormula(combatDist, COMBAT_FORMULA_LEVELMAGIC, -0.4, -32, -0.5, 0)



function onCastSpell(cid, var)
local target = getCreatureTarget(cid)
if(target ~= 0) then
return doCombat(cid, combatDist, numberToVariant(target))
end
return doCombat(cid, combat, var)
end

