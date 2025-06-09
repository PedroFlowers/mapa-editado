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
		if isPremium(cid) then
			selfSay('Ola ' .. creatureGetName(cid) .. 'Eu estou tendo muitos problemas, acho que aconteseu algo com o imperador sauron,boatos que alguma força maligna possuiu ele, vc poderia me ajudar?')
			focus = cid
			talk_start = os.clock()
		else
			selfSay('Sorry, only premium players can travel by boat.')
			focus = 0
			talk_start = 0
		end

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')

  	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'job') then
			selfSay('Bom, eu so um dos mais fortes guardioes de mordor so que fui aprisionado por uma força maligna,pois eu descubrir quem fez isso com o lord sauron,sinto que esta força me leva para o mal poco a poco, muitas x nao consigo controlar.')
			talk_state = 1

		elseif talk_state == 1 then
 if msgcontains(msg, 'posso ajudar?') then
			selfSay('creio que um humano nao consiga,pois eu nao so o unico lutar contra o lord sauron e a mesma coisa que lutar contra todos os generais, eu posso testa-lo si conseguir me vencer talves tenhamos esperança de um mundo de paz, você toparia um duelo comigo?.')
			talk_state = 1

		elseif talk_state == 1 then
			if msgcontains(msg, 'yes') then
				if pay(cid,50) then
					travel(cid, 1447, 1504, 7)
					selfSay('Let\'s go!')
				else
					selfSay('Sorry, you don\'t have enough money.')
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
