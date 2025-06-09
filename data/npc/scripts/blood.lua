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
  		selfSay('Hello, ' .. creatureGetName(cid) .. '! I sell blood and dark runes.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'blood') then
			buy(cid,6558,getCount(msg),100000)
		elseif msgcontains(msg, 'dark sd') then
			buy(cid,2267,getCount(msg),15000)
		elseif msgcontains(msg, 'dark explo') or msgcontains(msg, 'dgggfd') then
			buy(cid,2314,getCount(msg),10000)
		elseif msgcontains(msg, 'ghghghf') then
			buy(cid,2580,getCount(msg),100)
		elseif msgcontains(msg, '434fe') then
			buy(cid,2164,getCount(msg),50000)
		elseif msgcontains(msg, 'blegfh') then
			buy(cid,13689,getCount(msg),200000)	
		elseif msgcontains(msg, 'large mana fluid') or msgcontains(msg, 'mf') then
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
