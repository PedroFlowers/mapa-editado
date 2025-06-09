area = {
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0}
}

attackType = ATTACK_POISON
needDirection = false
areaEffect = NM_ME_POISEN_RINGS
animationEffect = NM_ANI_NONE

hitEffect = NM_ME_POISEN
damageEffect = NM_ME_POISEN_RINGS
animationColor = GREEN
offensive = true
needDirection = false
drawblood = true
--minDmg = 200
--maxDmg = 200

--PoisonStormObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, minDmg, maxDmg)
PoisonStormObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood)
SubPoisonStormObject1 = MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, 15, 15)
SubPoisonStormObject2 = MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, 10, 10)
SubPoisonStormObject3 = MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, 5, 5)

function onCast(cid, creaturePos, level, maglv, var)
centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}
n = tonumber(var)   -- try to convert it to a number
if n ~= nil then

	PoisonStormObject.minDmg = 0
	PoisonStormObject.maxDmg = 0 
else
	PoisonStormObject.minDmg = (level * 1 + maglv * 1) * 2.2 - 30
	PoisonStormObject.maxDmg = (level * 1 + maglv * 1) * 3.0 	
end 
return doAreaExMagic(cid, centerpos, needDirection, areaEffect, area, PoisonStormObject:ordered(),
	2000, 1, SubPoisonStormObject1:ordered(),
	2000, 2, SubPoisonStormObject2:ordered(),
	2000, 10, SubPoisonStormObject3:ordered(),
	3)
end  

