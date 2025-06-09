local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SPEAR)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, 0, 0, 0.10, 0)

function onUseWeapon(cid, var, item)
--By GENOMA

chance = 11

quebrar = math.random(1,chance)
if quebrar == 1 then
doPlayerRemoveItem(cid,7378,1)

end

return doCombat(cid, combat, var)
end