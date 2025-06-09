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
  		selfSay('Eu vejo Que Vc Conseguiu Fazer o iniciu da quest (Pass) para ir para o fim da quest!')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()


	if msgcontains(msg, 'pass') then
		selfSay('Voce Quer Ir Para o fim da quest?')
		talk_state = 1

		elseif talk_state == 1 then
			if msgcontains(msg, 'yes') then
				travel(cid, 3695, 1099, 7)
  		selfSay('/B Parabéns ' .. creatureGetName(cid) .. ',   Ele Esta na ultima parte da titan. Boa Sorte. =)')
				else
					selfSay('Sorry, you don\'t have Vocation')
				end

			talk_state = 0
	elseif msgcontains(msg, 'neliem') then
				travel(cid, 3695, 1099, 7)
  		selfSay('/B Parabéns ' .. creatureGetName(cid) .. ',   Ele Esta na ultima parte da titan. Boa Sorte. =)')	
			
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
  			selfSay('How rude!')
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
