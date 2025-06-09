-- !blessing by artofwork
local bless = {1, 2, 3, 4, 5}
local cost = 75000 -- Cost in gp.
local maxlevel = 1000

function onSay(cid, words, param)
local lvl = getPlayerLevel(cid)
local new_cost = (lvl * cost) / 500
local target = getPlayerGUID(cid)


for i = 1, table.maxn(bless) do
if(getPlayerBlessing(cid, bless[i])) then
doPlayerSendCancel(cid, "You have already have been blessed.")
return TRUE
end
end

if (getPlayerLevel(cid) >= maxlevel) then
if(doPlayerRemoveMoney(cid, new_cost) == TRUE) then
for i = 1, table.maxn(bless) do
doPlayerAddBlessing(cid, bless[i])
doPlayerPopupFYI(cid, "You have successfully been blessed.")
end
else
doPlayerPopupFYI(cid, "You need to have "..new_cost.."gp to buy blessings.")
end

elseif(getPlayerLevel(cid) < maxlevel) then
if(doPlayerRemoveMoney(cid, cost) == TRUE) then
for i = 1, table.maxn(bless) do
doPlayerAddBlessing(cid, bless[i])
end
doPlayerPopupFYI(cid, "You have successfully been blessed.")
else
doPlayerPopupFYI(cid, "You need to have "..cost.."gp to buy blessings.")
end
end
return FALSE
end