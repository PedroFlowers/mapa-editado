area = {
{0, 0, 1, 1, 1, 0, 0},
{0, 1, 1, 1, 1, 1, 0},
{1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1},
{0, 1, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 0}
}

attackType = ATTACK_FIRE
needDirection = false
areaEffect = 20
animationEffect = 14

hitEffect = 20
damageEffect = NM_ME_MAGIC_POISEN
animationColor = GREEN
offensive = true
drawblood = false

GreatFireballObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, 0, 0)

function onCast(cid, creaturePos, level, maglv, var)
centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}

GreatFireballObject.minDmg =2
GreatFireballObject.maxDmg =3

return doAreaMagic(cid, centerpos, needDirection, areaEffect, area, GreatFireballObject:ordered())
end
