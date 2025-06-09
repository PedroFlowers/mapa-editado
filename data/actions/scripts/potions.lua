local greatHealthPot = 7591
local greatManaPot = 7590
local strongHealthPot = 7588
local strongManaPot = 7589
local healthPot = 7618
local manaPot = 7620
local greatEmptyPot = 7635
local strongEmptyPot = 7634
local emptyPot = 7636

function onUse(cid, item, frompos, item2, topos)
	if(item.itemid == healthPot) then
                doSendAnimatedText(getPlayerPosition(cid), "Aaaah...", TEXTCOLOR_ORANGE)
		if(doTargetCombatHealth(0, cid, COMBAT_HEALING, 170, 230, CONST_ME_MAGIC_BLUE) == LUA_ERROR) then
			return FALSE
		end
		doTransformItem(item.uid, emptyPot)
	elseif(item.itemid == manaPot) then
                doSendAnimatedText(getPlayerPosition(cid), "Aaaah...", TEXTCOLOR_ORANGE)
		if(doTargetCombatMana(0, cid, 170, 230, CONST_ME_MAGIC_BLUE) == LUA_ERROR) then
			return FALSE
		end
		doTransformItem(item.uid, emptyPot)
	elseif(item.itemid == strongHealthPot) then
                doSendAnimatedText(getPlayerPosition(cid), "Aaaah...", TEXTCOLOR_ORANGE)
		if(doTargetCombatHealth(0, cid, COMBAT_HEALING, 300, 500, CONST_ME_MAGIC_BLUE) == LUA_ERROR) then
			return FALSE
		end
		doTransformItem(item.uid, strongEmptyPot)
	elseif(item.itemid == strongManaPot) then
                doSendAnimatedText(getPlayerPosition(cid), "Aaaah...", TEXTCOLOR_ORANGE)
		if(doTargetCombatMana(0, cid, 300, 500, CONST_ME_MAGIC_BLUE) == LUA_ERROR) then
			return FALSE
		end
		doTransformItem(item.uid, strongEmptyPot)
	elseif(item.itemid == greatHealthPot) then
                doSendAnimatedText(getPlayerPosition(cid), "Aaaah...", TEXTCOLOR_ORANGE)
		if(doTargetCombatHealth(0, cid, COMBAT_HEALING, 500, 800, CONST_ME_MAGIC_BLUE) == LUA_ERROR) then
			return FALSE
		end
		doTransformItem(item.uid, greatEmptyPot)
	elseif(item.itemid == greatManaPot) then
                doSendAnimatedText(getPlayerPosition(cid), "Aaaah...", TEXTCOLOR_ORANGE)
		if(doTargetCombatMana(0, cid, 500, 800, CONST_ME_MAGIC_BLUE) == LUA_ERROR) then
			return FALSE
		end
		doTransformItem(item.uid, greatEmptyPot)
	end

	return TRUE
end