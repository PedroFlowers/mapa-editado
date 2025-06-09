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
			selfSay('Olá ' .. creatureGetName(cid) .. '! Você Quer Ir Para Onde? (Infernal Island,400GP).')
			focus = cid
			talk_start = os.clock()
		else
			selfSay('Desculpe, Só Players Premium Account Pode Viajar Comigo!.')
			focus = 0
			talk_start = 0
		end

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Desculpe, ' .. creatureGetName(cid) .. '! Eu Falo Com Você Daqui Um Minuto!.')

  	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'infernal island') then
			selfSay('Se Você For A Infernal Island, Você Só Terá Um Jeito De Sair dela, Tem Uma Passagem No Final Da Ilha, Que é Muito Dificil De Se Chegar vivo lá, Você Tem Certeza Que Deseja Ir Para Infernal Island?')
			talk_state = 1

		elseif talk_state == 1 then
			if msgcontains(msg, 'yes') then
				if pay(cid,400) then
					travel(cid, 300, 232, 7)
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
