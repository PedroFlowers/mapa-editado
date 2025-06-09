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
  		selfSay('Hello ' .. creatureGetName(cid) .. '! I sell the first addon for 100 chicken feather,second addon for 100 vampire dust and the Third addon for 100 crystal coin.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'first addon') then
			selfSay('Do you want to buy the first addon for 100 chicken feather?')
			talk_state = 1

		elseif msgcontains(msg, 'second addon') then
			selfSay('Do you want to buy the second addon for 100 vampire dust?')
			talk_state = 2

		elseif msgcontains(msg, 'third addon') then
			selfSay('Do you want to buy the third addon for 100 crystal coin?')
			talk_state = 3		
		
		elseif talk_state == 1 then
			if msgcontains(msg, 'yes') then
					addon(cid, 1)
                        if doPlayerRemoveItem(cid,5890,100) == 0 then
				else
				end
 			end
			talk_state = 0

		elseif talk_state == 2 then
			if msgcontains(msg, 'yes') then
					addon(cid, 2)
                        if doPlayerRemoveItem(cid,5905,100) == 0 then
				else
				end
 			end
			talk_state = 0

		elseif talk_state == 3 then
			if msgcontains(msg, 'yes') then
					addon(cid, 3)
                        if doPlayerRemoveItem(cid,2160,100) == 0 then
				else
				end
 			end
			talk_state = 0
			
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
	doNpcSetCreatureFocus(focus)
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

