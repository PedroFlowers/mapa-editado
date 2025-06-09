area = {

{0, 1, 0},
{2, 0, 3},
{0, 4, 0},

}

attackType = ATTACK_POISON
needDirection = true
areaEffect = NM_ME_NONE
animationEffect = NM_ANI_NONE
hitEffect = NM_ME_NONE
damageEffect = NM_ME_POISEN_RINGS
animationColor = GREEN
offensive = true
needDirection = true
drawblood = false
minDmg = 5
maxDmg = 5

PoisonStormObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, minDmg, maxDmg)
SubPoisonStormObject1 = MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, 15, 15)
SubPoisonStormObject2 = MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, 5, 5)
SubPoisonStormObject3 = MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, 1, 1)

function onCast(cid, creaturePos, level, maglv, var)
centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}

return doAreaExMagic(cid, centerpos, needDirection, areaEffect, area, PoisonStormObject:ordered(),
	2000, 1, SubPoisonStormObject1:ordered(),
	2000, 2, SubPoisonStormObject2:ordered(),
	2000, 10, SubPoisonStormObject3:ordered(),
	3)
end  

