local combat = createCombatObject()

local NORMAL_CORPSE_STAGE_I = {2317, 2806, 2808, 2813, 2820, 2824, 2826, 2830, 2835, 2839, 2844, 2848, 2849, 2853, 2860, 2862, 2864, 2866, 2871, 2876, 2881, 2886, 2889, 2893, 2905, 2908, 2914, 2920, 2924, 2928, 2931, 2935, 2938, 2940, 2945, 2960, 2967, 2969, 2972, 2979, 2981, 2983, 2985, 2987, 2992, 2995, 3019, 3043, 3046, 3055, 3058, 3065, 3067, 3069, 3073, 3077, 3080, 3084, 3086, 3090, 3095, 3099, 3104, 3109, 3113, 3119, 3128, 3129, 4251, 4253, 4256, 4259, 4262, 4265, 4268, 4271, 4274, 4277, 4280, 4283, 4286, 4289, 4292, 4295, 4298, 4301, 4304, 4307, 4310, 4314, 4317}

setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)

local arr = {
 {0, 0, 0, 1, 1, 1,0 , 0, 0},
 {0, 0, 1, 1, 1, 1, 1, 0, 0},
 {0, 1, 1, 1, 1, 1, 1, 1, 0},
 {1, 1, 1, 1, 1, 1, 1, 1, 1},
 {1, 1, 1, 1, 3, 1, 1, 1, 1},
 {1, 1, 1, 1, 1, 1, 1, 1, 1},
 {0, 1, 1, 1, 1, 1, 1, 1, 0},
 {0, 0, 1, 1, 1, 1, 1,0 , 0},
 {0, 0, 0, 1, 1, 1, 0, 0, 0},
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

function onTargetTile(cid, pos)
    local position = {x=pos.x, y=pos.y, z=pos.z, stackpos=255}
    local item = getThingfromPos(position)

    if item.itemid > 0 then
        if isInArray(NORMAL_CORPSE_STAGE_I, item.itemid) == 1 then
            doRemoveItem(item.uid,1)
            doSendMagicEffect(pos, CONST_ME_POFF)
            local creature = doSummonCreature("Skeleton", pos)
            doConvinceCreature(cid, creature)
        end
    end
end

setCombatCallback(combat, CALLBACK_PARAM_TARGETTILE, "onTargetTile")

function onCastSpell(cid, var)
    return doCombat(cid, combat, var)
end