local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 3)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, -70000000, 0, -80000000)

arr = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 3, 1, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}


local area = createCombatArea(arr)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 3)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, 0, -50000000, 0, -60000000)

function onGetFormulaValues(cid, level, maglevel)
skill = getPlayerSkill(cid,1)
min = -((skill*10000)+level)
max = -((skill*11000)+level)
return min, max
end

setCombatCallback(combat2, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 1)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, 0, -15000, 0, -15000)

arr3 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 3, 1, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local area3 = createCombatArea(arr3)
setCombatArea(combat3, area3)

function onCastSpell3(cid, var)
	return doCombat(cid, combat3, var)
end

local condition = createConditionObject(CONDITION_DROWN)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 770000, 1000, -890000)
setCombatCondition(combat2, condition)

function onUseWeapon(cid, var)
rand = math.random(3,100)
if rand == 99 then
doSendAnimatedText(getPlayerPosition(cid), "Titan!", TEXTCOLOR_RED)
doPlayerAddHealth(cid,7000000)
doCombat(cid, combat2, var)
end
rand = math.random(98,100)
if rand == 99 then
doSendAnimatedText(getPlayerPosition(cid), "Titan!", TEXTCOLOR_RED)
doPlayerAddHealth(cid,7000000)
rand = math.random(99,100)
doCombat(cid, combat2, var)
else
doCombat(cid, combat, var)
end
end