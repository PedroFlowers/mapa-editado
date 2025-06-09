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
          selfSay('Good bye then.')
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

  	if (msgcontains(msg, 'hi') and focus == 0) and getDistanceToCreature(cid) < 4 then
  		selfSay('Olá ' .. creatureGetName(cid) .. '! Eu vendo items de MSP.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Desculpe, ' .. creatureGetName(cid) .. '! Falo com voce depois dele.')

  	elseif focus == cid then
		talk_start = os.clock()

	if msgcontains(msg, 'amulets') then
        selfSay('Os items sao: (deus armor, 60), (deus legs, 60), (deus helmet, 60),(king helmet, 70),(king armor, 70),(king legs, 70),(king boots, 70),(deus helmet, 60), (deus boots, 60), (super mr, 70), (mega mr, 100), (super uh, 70), (mega uh, 100), (shuriken, 80), (exbolt, 120), (rorth, 80), (exnoz, 120), (tartaros, 80), (suruba, 120).')      

      elseif msgcontains(msg, 'deus armor') or msgcontains(msg, 'armor') then
         if doPlayerRemoveItem(cid,6527,60)
         doPlayerAddItem(cid,13630,1)

      elseif msgcontains(msg, 'king armor') or msgcontains(msg, 'armor') then
         if doPlayerRemoveItem(cid,5097,70)
         doPlayerAddItem(cid,13596,1)

      elseif msgcontains(msg, 'king helmet') or msgcontains(msg, 'armor') then
         if doPlayerRemoveItem(cid,5097,70)
         doPlayerAddItem(cid,13567,1)

      elseif msgcontains(msg, 'king legs') or msgcontains(msg, 'armor') then
         if doPlayerRemoveItem(cid,5097,70)
         doPlayerAddItem(cid,13601,1)

      elseif msgcontains(msg, 'king boots') or msgcontains(msg, 'armor') then
         if doPlayerRemoveItem(cid,5097,70)
         doPlayerAddItem(cid,2641,1)

      elseif msgcontains(msg, 'deus legs') then
         if doPlayerRemoveItem(cid,6527,60)
         doPlayerAddItem(cid,13652,1)

      elseif msgcontains(msg, 'deus helmet') then
         if doPlayerRemoveItem(cid,6527,60)
         doPlayerAddItem(cid,13654,1)

      elseif msgcontains(msg, 'deus boots') then
         if doPlayerRemoveItem(cid,6527,60)
         doPlayerAddItem(cid,13503,1)

      elseif msgcontains(msg, 'super mr') then
         if doPlayerRemoveItem(cid,6527,70)
         doPlayerAddItem(cid,2298,1)

      elseif msgcontains(msg, 'mega mr') then
         if doPlayerRemoveItem(cid,6527,100)
         doPlayerAddItem(cid,2300,1)

      elseif msgcontains(msg, 'super uh') then
         if doPlayerRemoveItem(cid,6527,70)
         doPlayerAddItem(cid,2275,1)

      elseif msgcontains(msg, 'mega uh') then
         if doPlayerRemoveItem(cid,6527,100)
         doPlayerAddItem(cid,2306,1)

      elseif msgcontains(msg, 'shuriken') then
         if doPlayerRemoveItem(cid,6527,80)
         doPlayerAddItem(cid,13607,1)

      elseif msgcontains(msg, 'exbolt') then
         if doPlayerRemoveItem(cid,6527,120)
         doPlayerAddItem(cid,7406,1)

      elseif msgcontains(msg, 'rorth') then
         if doPlayerRemoveItem(cid,6527,80)
         doPlayerAddItem(cid,13536,1)

      elseif msgcontains(msg, 'exnoz') then
         if doPlayerRemoveItem(cid,6527,120)
         doPlayerAddItem(cid,13535,1)

      elseif msgcontains(msg, 'tartaros') then
         if doPlayerRemoveItem(cid,6527,80)
         doPlayerAddItem(cid,13529,1)

      elseif msgcontains(msg, 'suruba') then
         if doPlayerRemoveItem(cid,6527,120)
         doPlayerAddItem(cid,13524,1)
		elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
			selfSay('Good bye, ' .. creatureGetName(cid) .. '!')
			focus = 0
			talk_start = 0
		end
  	end
end


function onCreatureChangeOutfit(creature)

end



function onThink()
  	if (os.clock() - talk_start) > 30 then
  		if focus > 0 then
  			selfSay('Next Please...')
  		end
 		focus = 0
  	end
 	if focus ~= 0 then
 		if getDistanceToCreature(focus) > 5 then
 			selfSay('Good bye then.')
 			focus = 0
 		end
 	end
end
