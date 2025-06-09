area = {
{0, 0, 0},
{0, 1, 0},
{0, 0, 0}
}

attackType = ATTACK_POISON
needDirection = false
areaEffect = NM_ME_FIRE_AREA
animationEffect = NM_ANI_NONE

hitEffect = NM_ME_POISEN_RINGS
damageEffect = NM_ME_POISEN
animationColor = GREEN
offensive = true
drawblood = false
minDmg = 10
maxDmg = 10

FireBombObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, 0, 0)
SubFireBombObject1 = MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, minDmg, maxDmg)
SubFireBombObject2 = MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, 10, 10)

function onCast(cid, creaturePos, level, maglv, var)
centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}

return doAreaGroundMagic(cid, centerpos, needDirection, areaEffect, area, EnergyBombObject:ordered(),
	0, 1, SubEnergyBombObject1:ordered(),
	5000, 1, SubEnergyBombObject2:ordered(),
	2, 105000, 1490, 1)
end
