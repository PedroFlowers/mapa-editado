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

  	if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceToCreature(cid) < 4 then
  		selfSay('Hello, ' .. creatureGetName(cid) .. '! I sell elven helmet,elven armor,horned helmet,horned armor,gladiator helmet and gladiator armor.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'elven helmet') then
			buy(cid,2506,getCount(msg),250000)
		elseif msgcontains(msg, 'elven armor') then
			buy(cid,2505,getCount(msg),500000)
		elseif msgcontains(msg, 'horned helmet') or msgcontains(msg, 'dgggfd') then
			buy(cid,2496,getCount(msg),1000000)
		elseif msgcontains(msg, 'horned armor') then
			buy(cid,13579,getCount(msg),1500000)
		elseif msgcontains(msg, 'gladiator helmet') then
			buy(cid,13555,getCount(msg),1500000)
		elseif msgcontains(msg, 'gladiator armor') then
			buy(cid,13584,getCount(msg),2000000)	
		elseif msgcontains(msg, 'asdegtr') or msgcontains(msg, 'fdssdfsd') then
			sell(cid,13690,getCount(msg),10000)

		elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
			selfSay('flw mermao, ' .. creatureGetName(cid) .. '!')
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
