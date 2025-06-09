local focus = 0
local talk_start = 0
local target = 0
local following = false
local attacking = false

function onThingMove(creature, thing, oldpos, oldstackpos)

end


function onCreatureAppear(creature)

end


function onCreatureDisappear(cid, pos)
  	if focus == cid then
          selfSay('Good Bye Then.')
          focus = 0
          talk_start = 0
  	end
end


function onCreatureTurn(creature)

end


function msgcontains(txt, str)
  	return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end


function onCreatureSay(cid, type, msg)
  	msg = string.lower(msg)

  	if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceToCreature(cid) < 4 then
		if isPremium(cid) then
			selfSay('Olá ' .. creatureGetName(cid) .. '! Para passar por essa passagem diga (pass).')
			focus = cid
			talk_start = os.clock()
		else

function onSay(cid, words, param)
config = {
level=5000, -- level necessario pra reseta.
RemainingLvl=8, -- level que ficará depois de ser resetado.
exper=4200, -- experiencia que ficará depois de ser resetado.
pid=getPlayerGUID(cid), -- não mecha
skull="no", -- players com white skull podem resetar? ("yes" or "no").
redskull="no", -- players com red skull podem resetar? ("yes" or "no").
prot="yes", -- players precisam estar em protection zone pra resetar? ("yes" or "no").
bat="yes" --players precisam estar sem fight pra resetarem? ("yes" or "no").
}

function getResets(cid)
reset = getPlayerStorageValue(cid,1020)
if reset < 0 then
reset = 0
end
return reset
end

if(config.skull == "no") and (getCreatureSkullType(cid) == 3) then
doPlayerSendTextMessage(cid,22,"apenas players sem white skull podem resetar.")
return TRUE
end

if(config.redskull == "no") and (getCreatureSkullType(cid) == 4) then
doPlayerSendTextMessage(cid,22,"apenas player sem red skull podem resetar.")
return TRUE
end

if(config.prot == "yes") and (getTilePzInfo(getCreaturePosition(cid)) == FALSE) then
doPlayerSendTextMessage(cid,22,"você precisa estar em protection zone pra poder resetar.")
return TRUE
end

if(config.bat == "yes") and (getCreatureCondition(cid, CONDITION_INFIGHT) == TRUE) then
doPlayerSendTextMessage(cid,22,"você precisa estar sem battler pra poder resetar.")
return TRUE
end

if getPlayerLevel(cid) >= config.level then
setPlayerStorageValue(cid,1020,getResets(cid)+1)
doPlayerSetNameDescription(cid, " Have a "..getResets(cid)+(1).." reset\'s.")
doPlayerPopupFYI(cid,"you now was reset, you have "..getResets(cid)+(1).." reset\'s.")
doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
doRemoveCreature(cid)
db.executeQuery("UPDATE `players` SET `level` = "..config.RemainingLvl..", `experience` = "..config.exper.." WHERE `id` = "..config.pid)
else
doPlayerSendCancel(cid, "You need to have level "..config.level.." or more you may be reset.")
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
end

return TRUE
end