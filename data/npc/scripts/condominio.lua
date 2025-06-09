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
          selfSay('Tchau Até Mais!.')
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
			selfSay('Olá ' .. creatureGetName(cid) .. '! Você Deseja Entrar No "Condominio De Luxo"?,(500GP).')
			focus = cid
			talk_start = os.clock()
		else
			selfSay('Desculpe, Só Players Premium Account Pode Entrar Nesse Condominio!.')
			focus = 0
			talk_start = 0
		end

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Desculpe, ' .. creatureGetName(cid) .. '! Eu Falo Com Você Daqui Um Minuto!.')

  	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'condominio de luxo') then
			selfSay('Você Tem Certeza Que Deseja Entra No Condominio De Luxo?')
			talk_state = 1

		elseif talk_state == 1 then
			if msgcontains(msg, 'yes') then
				if pay(cid,400) then
					travel(cid, 371, 101, 5)
					selfSay('Let\'s go!')
				else
					selfSay('Descupe Seus Fundos Sao Insuficientes.')
				end
 			end
			talk_state = 0
		
		elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
			selfSay('Tchau Até mais, ' .. creatureGetName(cid) .. '!')
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
  			selfSay('Proximo Por Favor...')
  		end
  			focus = 0
  	end
	if focus ~= 0 then
 		if getDistanceToCreature(focus) > 5 then
 			selfSay('Tchau Até Mais!.')
 			focus = 0
 		end
 	end
end
