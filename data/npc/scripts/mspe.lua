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
			selfSay('Ol� ' .. creatureGetName(cid) .. '! Para saber os item de MSP diga (msp).')
			focus = cid
			talk_start = os.clock()
		else
			selfSay('Desculpe, Voce tem que ser premmium!.')
			focus = 0
			talk_start = 0
		end

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Espere Ai, ' .. creatureGetName(cid) .. '! Falo Com voce logo depois dele(a)!.')

  	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'msp') then
			selfSay('Os comandos de items de MSP sao: Deus Set->(!deusarmor, 60),(!deuslegs, 60),(!deushelmet, 60),(!deusboots, 60). Armas de Slayer ->(!Rorth, 80),(!exnoz, 120). Armas de Cleric e Wyzards ->(!tartaros, 80),(!suruba, 120). Armas de Ranger ->(!shuriken, 80),(!exbolt, 120) Runas ->(!supermr, 70),(!megamr, 100),(superuh, 70),(!megauh, 100),(!supersd, 80). Bom jogo')
			talk_state = 1

		elseif talk_state == 1 then
			if msgcontains(msg, 'hjghjfjt') then
				if pay(cid,0) then
					travel(cid, 1162, 7967, 11)
					selfSay('Let\'s go!')
				else
					selfSay('Descupe Voce nao tem permissao para ir ao evento.')
				end
 			end
			talk_state = 0
		
		elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
			selfSay('Good Bye.')
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
 			selfSay('Tchau At� Mais!.')
 			focus = 0
 		end
 	end
end
