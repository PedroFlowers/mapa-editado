local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, -2500, 0, -2500)

local arr = {
{0, 0, 0, 0, 0, 0, 0},
{0, 1, 0, 0, 0, 1, 0},
{0, 0, 1, 1, 1, 0, 0},
{0, 0, 1, 2, 1, 0, 0},
{0, 0, 1, 1, 1, 0, 0},
{0, 1, 0, 0, 0, 1, 0},
{0, 0, 0, 0, 0, 0, 0},
}
local area = createCombatArea(arr)
setCombatArea(combat, area)

function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end


local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 0)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, 0, -5000, 0, -5000) 

local condition = createConditionObject(CONDITION_ENERGY)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 1000, 10, -1000)
setCombatCondition(combat2, condition)

local arr = {
{0, 0, 0, 0, 0, 0, 0},
{0, 1, 0, 0, 0, 1, 0},
{0, 0, 1, 1, 1, 0, 0},
{0, 0, 1, 2, 1, 0, 0},
{0, 0, 1, 1, 1, 0, 0},
{0, 1, 0, 0, 0, 1, 0},
{0, 0, 0, 0, 0, 0, 0},
}
local area = createCombatArea(arr)
setCombatArea(combat2, area)


function onCastSpell(cid, var)
rand = math.random(98,100)
if rand == 99 then
doPlayerSendTextMessage(cid, 20, 'Você cortou seu oponemte.')
doPlayerSay(cid, "Fell my fury!",16)
doSendAnimatedText(getPlayerPosition(cid), "Fatal!", TEXTCOLOR_LIGHTGREY)
doCombat(cid, combat2, var)
else
doCombat(cid, combat, var)
end
end

