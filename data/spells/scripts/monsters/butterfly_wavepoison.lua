area = {
{0, 0, 1, 1, 1, 0, 0},
{0, 1, 1, 1, 1, 1, 0},
{1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1},
{0, 1, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 0}
}
attackType = ATTACK_POISON
needDirection = false
areaEffect = 1
animationEffect = NM_ANI_NONE

hitEffect = NM_ME_POISEN
damageEffect = 1
animationColor = DARK_BLUE
offensive = true
drawblood = false

PoisonWaveObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, 0, 0)

function onCast(cid, creaturePos, level, maglv, var)
centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}
PoisonWaveObject.minDmg = 90
PoisonWaveObject.maxDmg = 180

return doAreaMagic(cid, centerpos, needDirection, areaEffect, area, PoisonWaveObject:ordered())
end  

