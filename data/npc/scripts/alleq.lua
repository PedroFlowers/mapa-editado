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

function onCreatureSay(cid, type, msg)
  	msg = string.lower(msg)

  	if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceToCreature(cid) < 4 then
  		selfSay('Hello ' .. creatureGetName(cid) .. '! I sell Helmets, Legs, Shields, Clubs, Axes, Swords, Amulets and Rings.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'amulets')  then
  			selfSay('I sell Platinum Amulets (5k) and Scarfs (1k).')
		elseif msgcontains(msg, 'axes')  then
  			selfSay('I sell Knight Axes (4k), Double Axes (400gp) and Battle Axes (200gp), Dragon Lances (20k), Halberds (400gp) and Hatchets (40gp).')
		elseif msgcontains(msg, 'swords')  then
  			selfSay('I sell Serpent Swords (3k), Spike Swords(1,6k) and Two-Handed Swords (800gp), Broad Swords (140gp), Short Swords (60gp), Sabres (50gp) and Swords (50gp).')
		elseif msgcontains(msg, 'clubs')  then
  			selfSay('I sell Battle Hammers (120gp) and Clerical Maces (400gp).')
		elseif msgcontains(msg, 'armgfdgors') then
			selfSay('I sell  Blue Robes (30k) and Knight Armors (10k). I do not sell Demon Armors, because they are bugged.')
		elseif msgcontains(msg, 'shields')  then
  			selfSay('I sell Tower Shields (8k), Dragon Shields (6k), Guardian Shields (4k), Beholder Shields (2k), and Dwarven Shields (200gp)')

		elseif msgcontains(msg, 'steedfggfl boots')  then
  			buy(cid,2645,getCount(msg),80000)
  		elseif msgcontains(msg, 'bodfgh') or msgcontains(msg, 'boots of haste')  then
  			buy(cid,2195,getCount(msg),80000)
		elseif msgcontains(msg, 'goldedfgn boots')  then
  			buy(cid,2646,getCount(msg),200000)
		elseif msgcontains(msg, 'booggfts')  then
  			selfSay('I sell Golden Boots (200k), Steel Boots (80k) and Boots of Haste (80k).') 
 
		elseif msgcontains(msg, 'magidfgdfc plate armor') or msgcontains(msg, 'mpa') then
			buy(cid,2472,getCount(msg),200000)
		elseif msgcontains(msg, 'dradgdfgon scale mail') or msgcontains(msg, 'dsm') then
			buy(cid,2492,getCount(msg),120000)
		elseif msgcontains(msg, 'golddgdfen armor') then
			buy(cid,2189,getCount(msg),60000)
		elseif msgcontains(msg, 'crowfgdfgn armor') then
			buy(cid,2487,getCount(msg),40000)
		elseif msgcontains(msg, 'knigfdht armor') then
			buy(cid,2476,getCount(msg),10000)
		elseif msgcontains(msg, 'bluefdgf robe') then
			buy(cid,2656,getCount(msg),30000)

		elseif msgcontains(msg, 'full helgdfmet of the ancients') then
			buy(cid,2343,getCount(msg),200000)
		elseif msgcontains(msg, 'horned dfghelmet') then
			buy(cid,2496,getCount(msg),180000)
		elseif msgcontains(msg, 'demon hedfglmet') then
			buy(cid,2493,getCount(msg),100000)
		elseif msgcontains(msg, 'wingedfgd helmet') then
			buy(cid,2474,getCount(msg),120000)
		elseif msgcontains(msg, 'royal gdfg helmet') then
			buy(cid,2498,getCount(msg),80000)
		elseif msgcontains(msg, 'crusdfgdfg ader helmet') then
			buy(cid,2497,getCount(msg),18000)
		elseif msgcontains(msg, 'warridfgdf or helmet') then
			buy(cid,2475,getCount(msg),12000)
		elseif msgcontains(msg, 'crownfgdfg  helmet') then
			buy(cid,2491,getCount(msg),10000)
		elseif msgcontains(msg, 'ladydfgdfg helmet') then
			buy(cid,2499,getCount(msg),8000)
			
		elseif msgcontains(msg, 'dragdfg on scale legs') or msgcontains(msg, 'dsl') then
			buy(cid,2469,getCount(msg),200000)
		elseif msgcontains(msg, 'goldfg den legs') then
			buy(cid,2470,getCount(msg),160000)
		elseif msgcontains(msg, 'dedfg mon legs') then
			buy(cid,2495,getCount(msg),150000)
		elseif msgcontains(msg, 'crodfg wn legs') then
			buy(cid,2488,getCount(msg),30000)
		elseif msgcontains(msg, 'knidfg ght legs') then
			buy(cid,2477,getCount(msg),12000)
		elseif msgcontains(msg, 'plate legs') then
			buy(cid,2647,getCount(msg),1000)
		elseif msgcontains(msg, 'brass legs') then
			buy(cid,2478,getCount(msg),200)
		elseif msgcontains(msg, 'chain legs') then
			buy(cid,2648,getCount(msg),100)
		elseif msgcontains(msg, 'legs')  then
  			selfSay('I sell Plate Legs (1k), Brass Legs (200gp) and Chain Legs (100gp).')
			
		elseif msgcontains(msg, 'bldfg essed shield') then
			buy(cid,2523,getCount(msg),300000)
		elseif msgcontains(msg, 'gredfg at shield') then
			buy(cid,2522,getCount(msg),200000)
		elseif msgcontains(msg, 'mmdfg s') or msgcontains(msg, 'masterdfg mind shield') then
			buy(cid,2514,getCount(msg),160000)
		elseif msgcontains(msg, 'phodfg enix shield') then
			buy(cid,2539,getCount(msg),150000)
		elseif msgcontains(msg, 'demdfg on shield') then
			buy(cid,2520,getCount(msg),80000)
		elseif msgcontains(msg, 'vamfg pire shield') then
			buy(cid,2534,getCount(msg),50000)
		elseif msgcontains(msg, 'meddfg usa shield') then
			buy(cid,2536,getCount(msg),16000)
		elseif msgcontains(msg, 'crodfg wn shield') then
			buy(cid,2519,getCount(msg),10000)
		elseif msgcontains(msg, 'tower shield') then
			buy(cid,2528,getCount(msg),8000)
		elseif msgcontains(msg, 'amazon shield') then
			buy(cid,2537,getCount(msg),8000)
		elseif msgcontains(msg, 'dragon shield') then
			buy(cid,2516,getCount(msg),6000)
		elseif msgcontains(msg, 'guardian shield') then
			buy(cid,2515,getCount(msg),4000)
		elseif msgcontains(msg, 'beholder shield') then
			buy(cid,2518,getCount(msg),3000)
		elseif msgcontains(msg, 'dwarven shield') then
			buy(cid,2525,getCount(msg),200)
			
		elseif msgcontains(msg, 'madfg gic longsword') then
			buy(cid,2390,getCount(msg),300000)
		elseif msgcontains(msg, 'wardfg lord sword') then
			buy(cid,2408,getCount(msg),200000)
		elseif msgcontains(msg, 'magdfg ic sword') or msgcontains(msg, 'sword of valor') then
			buy(cid,2400,getCount(msg),180000)
		elseif msgcontains(msg, 'stodfg necutter\'s axe') then
			buy(cid,2431,getCount(msg),180000)
		elseif msgcontains(msg, 'thundfg der hammer') then
			buy(cid,2421,getCount(msg),180000)
		elseif msgcontains(msg, 'gredfg at axe') then
			buy(cid,2415,getCount(msg),150000)
		elseif msgcontains(msg, 'giadfg nt sword') then
  			buy(cid,2393,getCount(msg),20000)
		elseif msgcontains(msg, 'brdfg ight sword') then
  			buy(cid,2407,getCount(msg),12000)
		elseif msgcontains(msg, 'icdfg e rapier')  then
  			buy(cid,2396,getCount(msg),8000)
		elseif msgcontains(msg, 'firdfg e sword') then
  			buy(cid,2392,getCount(msg),6000)
		elseif msgcontains(msg, 'serpent sword')  then
  			buy(cid,2409,getCount(msg),3000)
		elseif msgcontains(msg, 'spike sword')  then
  			buy(cid,2383,getCount(msg),1600)
  		elseif msgcontains(msg, 'two handed sword')  then
  			buy(cid,2377,getCount(msg),800)
		elseif msgcontains(msg, 'broad sword') then
  			buy(cid,2413,getCount(msg),140)
		elseif msgcontains(msg, 'short sword') then
  			buy(cid,2406,getCount(msg),60)
		elseif msgcontains(msg, 'sabre') then
  			buy(cid,2385,getCount(msg),50)
  		elseif msgcontains(msg, 'sword')  then
  			buy(cid,2376,getCount(msg),50)
			
		elseif msgcontains(msg, 'dragofdg n lance')  then
  			buy(cid,2414,getCount(msg),20000)
		elseif msgcontains(msg, 'guardiadfg n halberd')  then
  			buy(cid,2427,getCount(msg),15000)
  		elseif msgcontains(msg, 'fdfg ire axe')  then
  			buy(cid,2432,getCount(msg),20000)
		elseif msgcontains(msg, 'knight axe')  then
  			buy(cid,2430,getCount(msg),4000)
		elseif msgcontains(msg, 'double axe')  then
  			buy(cid,2387,getCount(msg),400)
		elseif msgcontains(msg, 'halberd')  then
  			buy(cid,2381,getCount(msg),400)
		elseif msgcontains(msg, 'battle axe')  then
  			buy(cid,2378,getCount(msg),200)
  		elseif msgcontains(msg, 'hatchet')  then
  			buy(cid,2388,getCount(msg),40)
		
		
		elseif msgcontains(msg, 'wdfgar hammer') then
  			buy(cid,2391,getCount(msg),12000)
		elseif msgcontains(msg, 'skudfg ll staff') then
  			buy(cid,2436,getCount(msg),20000)
  		elseif msgcontains(msg, 'dragdfg on hammer')  then
  			buy(cid,2434,getCount(msg),4000)
  		elseif msgcontains(msg, 'clerical mace')  then
  			buy(cid,2423,getCount(msg),400)
  		elseif msgcontains(msg, 'battle hammer')  then
  			buy(cid,2417,getCount(msg),120)
  		elseif msgcontains(msg, 'mace') then
  			buy(cid,2398,getCount(msg),60)
			
		elseif msgcontains(msg, 'platinum amulet') then
  			buy(cid,2171,getCount(msg),10000)
		elseif msgcontains(msg, 'scarf') then
  			buy(cid,2661,getCount(msg),1000)
		
		

		elseif string.find(msg, '(%a*)bye(%a*)') and getDistanceToCreature(cid) < 4 then
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
