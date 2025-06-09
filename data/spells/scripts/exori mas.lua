local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 22)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -0.7, -30, -0.5, 0)






local area = CALLBACK_PARAM_TARGETTILE
setCombatArea(combat, area)

function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end