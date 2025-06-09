 focus = 0
 talk_start = 0
 target = 0
 following = false
 attacking = false
 
 function onThingMove(creature, thing, oldpos, oldstackpos)
 
 end
 
 
 function onCreatureAppear(creature)
 
 end
 
 
 function onCreatureDisappear(cid, pos)
    if focus == cid then
         selfSay('Good Bye.')
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
 
    if ((string.find(msg, '(%a*)hi(%a*)')) and (focus == 0)) and getDistanceToCreature(cid) < 3 then
       selfSay('Hi ' .. creatureGetName(cid) .. ', I am buying ALL game\'s equipments!! Like all type of Weapons (Swords, Clubs, Axes, Rods and Wands), Shields, Legs, Armors, Helmets, Boots, Amulets and Rings. What you\'ll sell?')
       focus = cid
       talk_start = os.clock()
    end
 
    if string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 3 then
       selfSay('Wait Please.')
    end
 
    if msgcontains(msg, 'swords list') and focus == cid then
      selfSay('I buy Combat Knife, Silver Dagger, Short Sword, Sabre, Bone Sword, Carlin Sword, Heavy Machete, Katana, Long Sword, Poison Dagger, Scimitar, Templar Scytheblade, Broad Sword, Serpent Sword, Two-Handed Sword, Fire Sword, Bright Sword, Giant Sword, Magic Sword, Warlord Sword, Magic Long Sword, Ice Rapier.')
       talk_start = os.clock()
    end

        if msgcontains(msg, 'combat knife') and focus == cid then
   item = 2404
   price = 7
   selfSay('Do you want to sell a Combat Knife for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end
 
    if msgcontains(msg, 'silver dagger') and focus == cid then
   item = 2402
   price = 10
   selfSay('Do you want to sell a Silver Dagger for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end
 
    if msgcontains(msg, 'short sword') and focus == cid then
   item = 2406
   price = 15
   selfSay('Do you want to sell a Short Sword for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end
 
    if msgcontains(msg, 'sabre') and focus == cid then
   item = 2385
   price = 17
   selfSay('Do you want to sell a Sabre for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end
 
    if msgcontains(msg, 'bone sword') and focus == cid then
   item = 2450
   price = 20
   selfSay('Do you want to sell a Bone Sword for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'carlin sword') and focus == cid then
   item = 2395
   price = 22
   selfSay('Do you want to sell a Carlin Sword for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end
 
    if msgcontains(msg, 'heavy machete') and focus == cid then
   item = 2442
   price = 35
   selfSay('Do you want to sell a Heavy Machete for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end
 
    if msgcontains(msg, 'katana') and focus == cid then
   item = 2412
   price = 40
   selfSay('Do you want to sell a Katana for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'longsword') and focus == cid then
   item = 2397
   price = 50
   selfSay('Do you want to sell a Longsword for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'poison dagger') and focus == cid then
   item = 2411
   price = 60
   selfSay('Do you want to sell a Poison Dagger for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'scimitar') and focus == cid then
   item = 2419
   price = 75
   selfSay('Do you want to sell a Scimitar for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'templar scytheblade') and focus == cid then
   item = 3963
   price = 250
   selfSay('Do you want to sell a Templar Scytheblade for ' ..price.. ' Gold Coins?')
   talk_start = os.clock()
    end

    if msgcontains(msg, 'broad sword') and focus == cid then
   item = 2413
   price = 150
   selfSay('Do you want to sell a Broad Sword for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'serpent sword') and focus == cid then
   item = 2409
   price = 300
   selfSay('Do you want to sell a Serpent Sword for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'two-handed sword') and focus == cid then
   item = 2377
   price = 400
   selfSay('Do you want to sell a Two-handed sword for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'fire sword') and focus == cid then
   item = 2392
   price = 2500
   selfSay('Do you want to sell a Fire Sword for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'bright sword') and focus == cid then
   item = 2407
   price = 7500
   selfSay('Do you want to sell a Bright Sword for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'giant sword') and focus == cid then
   item = 2393
   price = 10000
   selfSay('Do you want to sell a Giant Sword for ' ..price.. ' Gold Coins?')
       sell(cid,3219,1,10000)
       talk_start = os.clock()
    end

    if msgcontains(msg, 'magic sword') and focus == cid then
   item = 2400
   price = 75000
   selfSay('Do you want to sell a Magic Sword for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'warlord sword') and focus == cid then
   item = 2408
   price = 125000
   selfSay('Do you want to sell a Warlord Sword for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'magic long sword') and focus == cid then
   item = 2390
   price = 200000
   selfSay('Do you want to sell a Magic Long Sword for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'ice rapier') and focus == cid then
   item = 2396
   price = 1500
   selfSay('Do you want to sell a Ice Rapier for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'clubs list') and focus == cid then
      selfSay('I buy Crowbar, Scythe, Studded Club, Bone Club, Iron Hammer, Daramanian Mace, Battle Hammer, Morning Star, Banana Staff, Clerical Mace, Dragon Hammer, Skull Staff, Crystal Mace, Silver Mace, War Hammer, Hammer of Wrath, Thunder Hammer and Magic Staff.')
       talk_start = os.clock()
    end

    if msgcontains(msg, 'crowbar') and focus == cid then
   item = 2416
   price = 50
   selfSay('Do you want to sell a Crowbar for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'scythe') and focus == cid then
   item = 2550
   price = 5
   selfSay('Do you want to sell a Scythe for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'studded club') and focus == cid then
   item = 2448
   price = 7
   selfSay('Do you want to sell a Studded Club for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'bone club') and focus == cid then
   item = 2449
   price = 12
   selfSay('Do you want to sell a Bone Club for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'iron hammer') and focus == cid then
   item = 2422
   price = 40
   selfSay('Do you want to sell a Iron Hammer for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'daramanian mace') and focus == cid then
   item = 2439
   price = 50
   selfSay('Do you want to sell a Daramanian Mace for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'battle hammer') and focus == cid then
   item = 2417
   price = 60
   selfSay('Do you want to sell a Battle Hammer for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'morning star') and focus == cid then
   item = 2394
   price = 75
   selfSay('Do you want to sell a Morning Star for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'banana staff') and focus == cid then
   item = 3966
   price = 250
   selfSay('Do you want to sell a Banana Staff for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'clerical mace') and focus == cid then
   item = 2423
   price = 200
   selfSay('Do you want to sell a Clerical Mace for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'dragon hammer') and focus == cid then
   item = 2434
   price = 1500
   selfSay('Do you want to sell a Dragon Hammer for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'skull staff') and focus == cid then
   item = 2436
   price = 5000
   selfSay('Do you want to sell a Skull Staff for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'crystal mace') and focus == cid then
   item = 2445
   price = 20000
   selfSay('Do you want to sell a Crystal Mace for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'silver mace') and focus == cid then
   item = 2424
   price = 40000
   selfSay('Do you want to sell a Silver Mace for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'war hammer') and focus == cid then
   item = 2391
   price = 2500
   selfSay('Do you want to sell a War Hammer for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'hammer of wrath') and focus == cid then
   item = 2444
   price = 50000
   selfSay('Do you want to sell a Hammer of Wrath for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'thunder hammer') and focus == cid then
   item = 2421
   price = 75000
   selfSay('Do you want to sell a Thunder Hammer for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'magic staff') and focus == cid then
   item = 2433
   price = 7500
   selfSay('Do you want to sell a Magic Staff for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'axes list') and focus == cid then
      selfSay('I buy Hand Axe, Golden Sickle, Hatchet, Hunting Spear, Orcish Axe, Battle Axe, Ripper Lance, Barbarian Axe, Knight Axe, Obsidian Lance, Double Axe, Halberd, Fire Axe, Naginata, Daramanian Waraxe, Guardian Halberd, Dragon Lance, Stonecutter Axe and Great Axe.')
       talk_start = os.clock()
    end

    if msgcontains(msg, 'hand axe') and focus == cid then
   item = 2380
   price = 5
   selfSay('Do you want to sell a Hand Axe for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'golden sickle') and focus == cid then
   item = 2418
   price = 500
   selfSay('Do you want to sell a Golden Sickle for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'hatchet') and focus == cid then
   item = 2388
   price = 15
   selfSay('Do you want to sell a Hatchet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'hunting spear') and focus == cid then
   item = 3965
   price = 250
   selfSay('Do you want to sell a Hunting Spear for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'orcish axe') and focus == cid then
   item = 2428
   price = 200
   selfSay('Do you want to sell a Orcish Axe for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'battle axe') and focus == cid then
   item = 2378
   price = 300
   selfSay('Do you want to sell a Battle Axe for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'ripper lance') and focus == cid then
   item = 3964
   price = 1000
   selfSay('Do you want to sell a Ripper Lance for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'barbarian axe') and focus == cid then
   item = 2429
   price = 400
   selfSay('Do you want to sell a Barbarian Axe for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'dwarven axe') and focus == cid then
   item = 2435
   price = 1000
   selfSay('Do you want to sell a Dwarven Axe for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'knight axe') and focus == cid then
   item = 2430
   price = 1500
   selfSay('Do you want to sell a Knight Axe for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

if msgcontains(msg, 'halberd') and focus == cid then
   item = 2381
   price = 300
   selfSay('Do you want to sell a Obsidian Lance for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'obsidian lance') and focus == cid then
   item = 2425
   price = 300
   selfSay('Do you want to sell a Obsidian Lance for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'double axe') and focus == cid then
   item = 2387
   price = 400
   selfSay('Do you want to sell a Double Axe for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'fire axe') and focus == cid then
   item = 2432
   price = 6000
   selfSay('Do you want to sell a Fire Axe for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'naginata') and focus == cid then
   item = 2426
   price = 5000
   selfSay('Do you want to sell a Naginata for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'daramanian waraxe') and focus == cid then
   item = 2440
   price = 5000
   selfSay('Do you want to sell a Daramanian Waraxe for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'guardian halberd') and focus == cid then
   item = 2427
   price = 7500
   selfSay('Do you want to sell a Guardian Halberd for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'dragon lance') and focus == cid then
   item = 2414
   price = 10000
   selfSay('Do you want to sell a Dragon Lance for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'stonecutter axe') and focus == cid then
   item = 2431
   price = 75000
   selfSay('Do you want to sell a Stonecutter Axe for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'great axe') and focus == cid then
   item = 2415
   price = 150000
   selfSay('Do you want to sell a Great Axe for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'wand list') and focus == cid then
      selfSay('I buy Wand of Vortex, Wand of Dragonbreath, Wand of Plague, Wand of Cosmic Energy and Wand of Inferno (Hell).')
       talk_start = os.clock()
   end

    if msgcontains(msg, 'vortex') and focus == cid then
   item = 2190
   price = 250
   selfSay('Do you want to sell a Wand of Vortex for ' .. price .. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'dragonbreath') and focus == cid then
   item = 2191
   price = 500
   selfSay('Do you want to sell a Wand of Dragonbreath for ' .. price .. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'plague') and focus == cid then
   item = 2188
   price = 2500
   selfSay('Do you want to sell a Wand of Plague for ' .. price .. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'cosmic energy') and focus == cid then
   item = 2189
   price = 5000
   selfSay('Do you want to sell a Wand of Cosmic Energy for ' .. price .. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'hell') and focus == cid then
   item = 2187
   price = 7500
   selfSay('Do you want to sell a Wand of Inferno for ' .. price .. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'rod list') and focus == cid then
      selfSay('I buy Snakebite Rod, Moonlight Rod, Volcanic Rod, Quagmire Rod and Tempest Rod.')
       talk_start = os.clock()
   end

    if msgcontains(msg, 'snakebite') and focus == cid then
   item = 2182
   price = 250
   selfSay('Do you want to sell a Snakebite Rod for ' .. price .. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'moonlight') and focus == cid then
   item = 2186
   price = 500
   selfSay('Do you want to sell a Moonlight Rod for ' .. price .. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'volcanic') and focus == cid then
   item = 2185
   price = 2500
   selfSay('Do you want to sell a Volcanic Rod for ' .. price .. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'quagmire') and focus == cid then
   item = 2181
   price = 5000
   selfSay('Do you want to sell a Quagmire Rod for ' .. price .. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'tempest') and focus == cid then
   item = 2183
   price = 7500
   selfSay('Do you want to sell a Tempest Rod for ' .. price .. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'armors list') and focus == cid then
      selfSay('I buy Simple Dress, Ball Gown, Cape, Jacket, Green Tunic, Red Robe, Doublet, Red Tunic, Leather Armor, Studded Armor, Chain Armor, Brass Armor, Scale Armor, Plate Armor, Dark Armor, Noble Armor, Knight Armor, Crown Armor, Lady Armor, Blue Robe, Golden Armor, Dragon Scale Mail, Demon Armor, Magic Plate Armor.')
       talk_start = os.clock()
    end

    if msgcontains(msg, 'simple dress') and focus == cid then
   item = 2657
   price = 100
   selfSay('Do you want to sell a Simple Dress for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'ball gown') and focus == cid then
   item = 2659
   price = 150
   selfSay('Do you want to sell a Ball Gown for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'cape') and focus == cid then
   item = 2654
   price = 25
   selfSay('Do you want to sell a Cape for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'jacket') and focus == cid then
   item = 2650
   price = 5
   selfSay('Do you want to sell a Jacket for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'green tunic') and focus == cid then
   item = 2652
   price = 25
   selfSay('Do you want to sell a Green Tunic for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'red robe') and focus == cid then
   item = 2655
   price = 10000
   selfSay('Do you want to sell a Red Robe for ' ..price.. ' Gold Coins?')
       sell(cid,3504,1,10000)
       talk_start = os.clock()
    end

    if msgcontains(msg, 'doublet') and focus == cid then
   item = 2485
   price = 15
   selfSay('Do you want to sell a Doublet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'red tunic') and focus == cid then
   item = 2653
   price = 150
   selfSay('Do you want to sell a Red Tunic for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'leather armor') and focus == cid then
   item = 2467
   price = 20
   selfSay('Do you want to sell a Leather Armor for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'studded armor') and focus == cid then
   item = 2484
   price = 30
   selfSay('Do you want to sell a Studded Armor for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'chain armor') and focus == cid then
   item = 2464
   price = 100
   selfSay('Do you want to sell a Chain Armor for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'brass armor') and focus == cid then
   item = 2465
   price = 200
   selfSay('Do you want to sell a Brass Armor for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'scale armor') and focus == cid then
   item = 2483
   price = 150
   selfSay('Do you want to sell a Scale Armor for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'plate armor') and focus == cid then
   item = 2463
   price = 400
   selfSay('Do you want to sell a Plate Armor for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'dark armor') and focus == cid then
   item = 2489
   price = 500
   selfSay('Do you want to sell a Dark Armor for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'noble armor') and focus == cid then
   item = 2486
   price = 1000
   selfSay('Do you want to sell a Noble Armor for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'knight armor') and focus == cid then
   item = 2476
   price = 2500
   selfSay('Do you want to sell a Knight Armor for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'crown armor') and focus == cid then
   item = 2487
   price = 5000
   selfSay('Do you want to sell a Crown Armor for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'lady armor') and focus == cid then
   item = 2500
   price = 6000
   selfSay('Do you want to sell a Lady Armor for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'blue robe') and focus == cid then
   item = 2656
   price = 5500
   selfSay('Do you want to sell a Blue Robe for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'golden armor') and focus == cid then
   item = 2466
   price = 25000
   selfSay('Do you want to sell a Golden Armor for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'dragon scale mail') and focus == cid then
   item = 2492
   price = 60000
   selfSay('Do you want to sell a Dragon Scale Mail for ' ..price.. ' Gold Coins?')
       talk_start = os.clock()
    end

    if msgcontains(msg, 'demon armor') and focus == cid then
   item = 2494
   price = 150000
   selfSay('Do you want to sell a Demon Armor for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'magic plate armor') and focus == cid then
   item = 2472
   price = 250000
   selfSay('Do you want to sell a Magic Plate Armor for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'shields list') and focus == cid then
      selfSay('I buy Wooden, Studded, Brass, Plate, Black, Copper, Bone, Steel, Sentinel, Ornamented, Viking, Battle, Scarab, Dark, Salamander, Dwarven, Tusk, Ancient, Rose, Castle, Beholder, Griffin, Guardian, Dragon, Tower, Crown, Amazon , Medusa, Vampire, Phoenix, Demon, Mastermind, Great, Blessed Shields also Shield of Honour.')
       talk_start = os.clock()
    end

    if msgcontains(msg, 'wooden shield') and focus == cid then
   item = 2512
   price = 5
   selfSay('Do you want to sell a Wooden Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'studded shield') and focus == cid then
   item = 2526
   price = 20
   selfSay('Do you want to sell a Studded Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'brass shield') and focus == cid then
   item = 2511
   price = 30
   selfSay('Do you want to sell a Brass Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'plate shield') and focus == cid then
   item = 2510
   price = 50
   selfSay('Do you want to sell a Plate Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'black shield') and focus == cid then
   item = 2529
   price = 200
   selfSay('Do you want to sell a Black Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'copper shield') and focus == cid then
   item = 2530
   price = 125
   selfSay('Do you want to sell a Copper Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'bone shield') and focus == cid then
   item = 2541
   price = 200
   selfSay('Do you want to sell a Bone Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'steel shield') and focus == cid then
   item = 2509
   price = 200
   selfSay('Do you want to sell a Steel Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'sentinel shield') and focus == cid then
   item = 3974
   price = 400
   selfSay('Do you want to sell a Sentinel Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'ornamented shield') and focus == cid then
   item = 2524
   price = 300
   selfSay('Do you want to sell a Ornamented Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'viking shield') and focus == cid then
   item = 2531
   price = 350
   selfSay('Do you want to sell a Viking Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'battle shield') and focus == cid then
   item = 2513
   price = 250
   selfSay('Do you want to sell a Battle Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'scarab shield') and focus == cid then
   item = 2540
   price = 600
   selfSay('Do you want to sell a Scarab Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'dark shield') and focus == cid then
   item = 2521
   price = 350
   selfSay('Do you want to sell a Dark Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'salamander shield') and focus == cid then
   item = 3975
   price = 900
   selfSay('Do you want to sell a Salamander Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'dwarven shield') and focus == cid then
   item = 2525
   price = 100
   selfSay('Do you want to sell a Dwarven Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'tusk shield') and focus == cid then
   item = 3973
   price = 500
   selfSay('Do you want to sell a Tusk Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'ancient shield') and focus == cid then
   item = 2532
   price = 400
   selfSay('Do you want to sell a Ancient Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'rose shield') and focus == cid then
   item = 2527
   price = 1000
   selfSay('Do you want to sell a Rose Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'castle shield') and focus == cid then
   item = 2535
   price = 4000
   selfSay('Do you want to sell a Castle Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'beholder shield') and focus == cid then
   item = 2518
   price = 750
   selfSay('Do you want to sell a Beholder Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'griffin shield') and focus == cid then
   item = 2533
   price = 1000
   selfSay('Do you want to sell a Griffin Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'guardian shield') and focus == cid then
   item = 2515
   price = 1250
   selfSay('Do you want to sell a Guardian Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'dragon shield') and focus == cid then
   item = 2516
   price = 2000
   selfSay('Do you want to sell a Dragon Shield for ' ..price.. ' Gold Coins?')

    talk_start = os.clock()
    end

    if msgcontains(msg, 'tower shield') and focus == cid then
   item = 2528
   price = 3000
   selfSay('Do you want to sell a Tower Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'crown shield') and focus == cid then
   item = 2519
   price = 3500
   selfSay('Do you want to sell a Crown Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'amazon shield') and focus == cid then
   item = 2537
   price = 5000
   selfSay('Do you want to sell a Amazon Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'medusa shield') and focus == cid then
   item = 2536
   price = 5000
   selfSay('Do you want to sell a Medusa Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'shield of honour') and focus == cid then
   item = 2517
   price = 6000
   selfSay('Do you want to sell a Shield of Honour for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'vampire shield') and focus == cid then
   item = 2534
   price = 10000
   selfSay('Do you want to sell a Vampire Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'phoenix shield') and focus == cid then
   item = 2539
   price = 11500
   selfSay('Do you want to sell a Phoenix Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'demon shield') and focus == cid then
   item = 2520
   price = 20000
   selfSay('Do you want to sell a Demon Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'mastermind shield') and focus == cid then
   item = 2514
   price = 75000
   selfSay('Do you want to sell a Mastermind Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'great shield') and focus == cid then
   item = 2522
   price = 150000
   selfSay('Do you want to sell a Great Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'blessed shield') and focus == cid then
   item = 2523
   price = 250000
   selfSay('Do you want to sell a Blessed Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'legs list') and focus == cid then
      selfSay('I buy Bast Skirt, Leather Legs, Studded Legs, Chain Legs, Brass Legs, Plate Legs, Knight Legs, Crown Legs, Demon Legs, Dragon Scale Legs.')
       talk_start = os.clock()
    end

    if msgcontains(msg, 'bast skirt') and focus == cid then
   item = 3983
   price = 250
   selfSay('Do you want to sell a Bast Skirt for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'leather legs') and focus == cid then
   item = 2649
   price = 7
   selfSay('Do you want to sell a Leather Legs for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'studded legs') and focus == cid then
   item = 2468
   price = 50
   selfSay('Do you want to sell a Studded Legs for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'chain legs') and focus == cid then
   item = 2648
   price = 40
   selfSay('Do you want to sell a Chain Legs for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'brass legs') and focus == cid then
   item = 2478
   price = 100
   selfSay('Do you want to sell a Brass Legs for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'plate legs') and focus == cid then
   item = 2647
   price = 500
   selfSay('Do you want to sell a Plate Legs for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'knight legs') and focus == cid then
   item = 2477
   price = 5000
   selfSay('Do you want to sell a Knight Legs for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'crown legs') and focus == cid then
   item = 2488
   price = 12500
   selfSay('Do you want to sell a Crown Legs for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'golden legs') and focus == cid then
   item = 2470
   price = 75000
   selfSay('Do you want to sell a Golden Legs for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'demon legs') and focus == cid then
   item = 2495
   price = 200000
   selfSay('Do you want to sell a Demon Legs for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'dragon scale legs') and focus == cid then
   item = 2469
   price = 400000
   selfSay('Do you want to sell a Dragon Scale Legs for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'helmets list') and focus == cid then
      selfSay('I buy Mystic Turban, Posts Officers Hat, Tribal Mask, Feather Headdress, Magician Hat, Full Helmet of the Ancients, Helmet of the Ancients also Leather, Chain, Studded, Brass, Viking, Legion, Steel, Horseman, Dark, Strange, Lady, Crown, Devil, Warrior, Crusader, Royal, Demon, Winged, Horned and Golden Helmets.')
       talk_start = os.clock()
    end

    if msgcontains(msg, 'mystic turban') and focus == cid then
   item = 2663
   price = 500
   selfSay('Do you want to sell a Mystic Turban for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'post officers hat') and focus == cid then
   item = 2665
   price = 1000
   selfSay('Do you want to sell a Post officers hat for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'magician hat') and focus == cid then
   item = 2323
   price = 500
   selfSay('Do you want to sell a Magician Hat for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'leather helmet') and focus == cid then
   item = 2461
   price = 2
   selfSay('Do you want to sell a Leather Helmet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'tribal mask') and focus == cid then
   item = 3967
   price = 1500
   selfSay('Do you want to sell a Tribal Mask for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'feather headdress') and focus == cid then
   item = 3970
   price = 1500
   selfSay('Do you want to sell a Feather Headdress for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'chain helmet') and focus == cid then
   item = 2458
   price = 12
   selfSay('Do you want to sell a Chain Helmet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'studded helmet') and focus == cid then
   item = 2482
   price = 20
   selfSay('Do you want to sell a Studded Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'brass helmet') and focus == cid then
   item = 2460
   price = 22
   selfSay('Do you want to sell a Brass Helmet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'viking helmet') and focus == cid then
   item = 2473
   price = 30
   selfSay('Do you want to sell a Viking Helmet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'legion helmet') and focus == cid then
   item = 2480
   price = 50
   selfSay('Do you want to sell a Legion Helmet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'steel helmet') and focus == cid then
   item = 2457
   price = 100
   selfSay('Do you want to sell a Steel Helmet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'horseman helmet') and focus == cid then
   item = 3969
   price = 500
   selfSay('Do you want to sell a Horseman Helmet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'dark helmet') and focus == cid then
   item = 2490
   price = 100
   selfSay('Do you want to sell a Dark Helmet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'strange helmet') and focus == cid then
   item = 2479
   price = 150
   selfSay('Do you want to sell a Strange Helmet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'lady helmet') and focus == cid then
   item = 2499
   price = 2000
   selfSay('Do you want to sell a Lady Helmet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'crown helmet') and focus == cid then
   item = 2491
   price = 1500
   selfSay('Do you want to sell a Crown Helmet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'devil helmet') and focus == cid then
   item = 2462
   price = 1000
   selfSay('Do you want to sell a Devil Helmet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'warrior helmet') and focus == cid then
   item = 2475
   price = 3000
   selfSay('Do you want to sell a Warrior Helmet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'crusader helmet') and focus == cid then
   item = 2497
   price = 5000
   selfSay('Do you want to sell a Crusader Helmet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'helmet of the ancients') and focus == cid then
   item = 2342
   price = 25000
   selfSay('Do you want to sell a Helmet of the Ancients for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'royal helmet') and focus == cid then
   item = 2498
   price = 40000
   selfSay('Do you want to sell a Royal Helmet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'demon helmet') and focus == cid then
   item = 2493
   price = 150000
   selfSay('Do you want to sell a Demon Helmet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'winged helmet') and focus == cid then
   item = 2474
   price = 175000
   selfSay('Do you want to sell a Winged Helmet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'horned helmet') and focus == cid then
   item = 2496
   price = 225000
   selfSay('Do you want to sell a Horned Helmet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'full helmet of the ancients') and focus == cid then
   item = 2343
   price = 300000
   selfSay('Do you want to sell a Full Helmet of the Ancients for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'golden helmet') and focus == cid then
   item = 2471
   price = 500000
   selfSay('Do you want to sell a Golden Helmet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end


    if msgcontains(msg, 'boots list') and focus == cid then
      selfSay('I buy Boots of Haste, Soft Boots, Sandals, Leather Boots, Crocodile Boots, Steel Boots, Golden Boots.')
       talk_start = os.clock()
    end

    if msgcontains(msg, 'boots of haste') and focus == cid then
   item = 2195
   price = 20000
   selfSay('Do you want to sell a Boots of Haste for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'soft boots') and focus == cid then
   item = 2358
   price = 30000
   selfSay('Do you want to sell a Soft Boots for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'sandals') and focus == cid then
   item = 2642
   price = 200
   selfSay('Do you want to sell a Sandals for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'leather boots') and focus == cid then
   item = 2643
   price = 5
   selfSay('Do you want to sell a Leather Boots for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'crocodile boots') and focus == cid then
   item = 3982
   price = 1000
   selfSay('Do you want to sell a Crocodile Boots for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'steel boots') and focus == cid then
   item = 2645
   price = 50000
   selfSay('Do you want to sell a Steel Boots for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'golden boots') and focus == cid then
   item = 2646
   price = 300000
   selfSay('Do you want to sell a Golden Boots for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'amulets list') and focus == cid then
      selfSay('I buy Bronze Amulet, Crystal Necklace, Dragon Necklace, Elven Amulet, Garlic Necklace, Golden Amulet, Platinum Amulet, Ruby Necklace, Protection Amulet, Silver Amulet, Silver Necklace, Stone Skin Amulet, Strange Symbol, Strange Talisman, Scarab Amulet, Egipcian Amulet and Eagle Amulet.')
       talk_start = os.clock()
    end

    if msgcontains(msg, 'bronze amulet') and focus == cid then
   item = 2172
   price = 100
   selfSay('Do you want to sell a Bronze Amulet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'crystal necklace') and focus == cid then
   item = 2125
   price = 150
   selfSay('Do you want to sell a Crystal Necklace for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'dragon necklace') and focus == cid then
   item = 2201
   price = 250
   selfSay('Do you want to sell a Dragon Necklace for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'elven amulet') and focus == cid then
   item = 2198
   price = 500
   selfSay('Do you want to sell a Elven Amulet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'garlic necklace') and focus == cid then
   item = 2199
   price = 250
   selfSay('Do you want to sell a Garlic Necklace for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'golden amulet') and focus == cid then
   item = 2130
   price = 3500
   selfSay('Do you want to sell a Golden Amulet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'platinum amulet') and focus == cid then
   item = 2171
   price = 2500
   selfSay('Do you want to sell a Platinum Amulet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'ruby necklace') and focus == cid then
   item = 2133
   price = 1000
   selfSay('Do you want to sell a Ruby Necklace for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'protection amulet') and focus == cid then
   item = 2200
   price = 350
   selfSay('Do you want to sell a Protection Amulet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'silver amulet') and focus == cid then
   item = 2170
   price = 50
   selfSay('Do you want to sell a Silver Amulet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'silver necklace') and focus == cid then
   item = 2132
   price = 250
   selfSay('Do you want to sell a Silver Necklace for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'stone skin amulet') and focus == cid then
   item = 2197
   price = 1500
   selfSay('Do you want to sell a Stone Skin Amulet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'strange symbol') and focus == cid then
   item = 2319
   price = 500
   selfSay('Do you want to sell a Strange Symbol for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'strange talisman') and focus == cid then
   item = 2161
   price = 400
   selfSay('Do you want to sell a Strange Talisman for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'scarab amulet') and focus == cid then
   item = 2135
   price = 1000
   selfSay('Do you want to sell a Scarab Amulet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'egipcian amulet') and focus == cid then
   item = 2139
   price = 1000
   selfSay('Do you want to sell a Egipcian Amulet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'eagle amulet') and focus == cid then
   item = 2141
   price = 500
   selfSay('Do you want to sell a Eagle Amulet for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'rings list') and focus == cid then
      selfSay('I buy Axe Ring, Club Ring, Sword Ring, Crystal Ring, Dwarven Ring, Energy Ring, Gold Ring, Life Ring, Might Ring, Power Ring, Ring of Healing, Ring of the Skies, Stealth Ring, Time Ring and Wedding Ring.')
       talk_start = os.clock()
    end

    if msgcontains(msg, 'axe ring') and focus == cid then
   item = 2208
   price = 100
   selfSay('Do you want to sell a Axe Ring for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'club ring') and focus == cid then
   item = 2209
   price = 100
   selfSay('Do you want to sell a Club Ring for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'sword ring') and focus == cid then
   item = 2207
   price = 100
   selfSay('Do you want to sell a Sword Ring for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'crystal ring') and focus == cid then
   item = 2124
   price = 500
   selfSay('Do you want to sell a Crystal Ring for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'dwarven ring') and focus == cid then
   item = 2213
   price = 25
   selfSay('Do you want to sell a Dwarven Shield for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'energy ring') and focus == cid then
   item = 2167
   price = 400
   selfSay('Do you want to sell a Energy Ring for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'gold ring') and focus == cid then
   item = 2179
   price = 4000
   selfSay('Do you want to sell a Gold Ring for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'life ring') and focus == cid then
   item = 2205
   price = 400
   selfSay('Do you want to sell a Life Ring for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'might ring') and focus == cid then
   item = 2164
   price = 400
   selfSay('Do you want to sell a Might Ring for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'power ring') and focus == cid then
   item = 2166
   price = 50
   selfSay('Do you want to sell a Power Ring for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'ring of healing') and focus == cid then
   item = 2214
   price = 400
   selfSay('Do you want to sell a Ring of Healing for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'ring of the skies') and focus == cid then
   item = 2357
   price = 25000
   selfSay('Do you want to sell a Ring of the Skies for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'stealth ring') and focus == cid then
   item = 2165
   price = 400
   selfSay('Do you want to sell a Stealth Ring for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'time ring') and focus == cid then
   item = 2169
   price = 1000
   selfSay('Do you want to sell a Time Ring for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'wedding ring') and focus == cid then
   item = 2121
   price = 500
   selfSay('Do you want to sell a Wedding Ring for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'pearls list') and focus == cid then
      selfSay('I buy Scarab Coin, Blue Gem, Big Ruby, Big Emerald, Yellow Gem, Violet Gem, Talon, Small Amethyst, Small Emerald, Small Ruby, Small Sapphire, Small Diamond, Black Pearl and White Pearl.')
       talk_start = os.clock()
    end

    if msgcontains(msg, 'scarab coin') and focus == cid then
   item = 2159
   price = 50
   selfSay('Do you want to sell a Scarab Coin for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'blue gem') and focus == cid then
   item = 2158
   price = 250
   selfSay('Do you want to sell a Blue Gem for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'big ruby') and focus == cid then
   item = 2156
   price = 500
   selfSay('Do you want to sell a Big Ruby for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'big emerald') and focus == cid then
   item = 2155
   price = 500
   selfSay('Do you want to sell a Big Emerald for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'yellow gem') and focus == cid then
   item = 2154
   price = 150
   selfSay('Do you want to sell a Yellow Gem for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'violet gem') and focus == cid then
   item = 2153
   price = 150
   selfSay('Do you want to sell a Violet Gem for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'talon') and focus == cid then
   item = 2151
   price = 100
   selfSay('Do you want to sell a Talon for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'small amethyst') and focus == cid then
   item = 2150
   price = 25
   selfSay('Do you want to sell a Small Amethyst for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'small emerald') and focus == cid then
   item = 2149
   price = 50
   selfSay('Do you want to sell a Small Emerald for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'small ruby') and focus == cid then
   item = 2147
   price = 75
   selfSay('Do you want to sell a Small Ruby for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'small sapphire') and focus == cid then
   item = 2146
   price = 50
   selfSay('Do you want to sell a Small Sapphire for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'small diamond') and focus == cid then
   item = 2145
   price = 100
   selfSay('Do you want to sell a Small Diamond for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'black pearl') and focus == cid then
   item = 2144
   price = 250
   selfSay('Do you want to sell a Black Pearl for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end

    if msgcontains(msg, 'white pearl') and focus == cid then
   item = 2143
   price = 150
   selfSay('Do you want to sell a White Pearl for ' ..price.. ' Gold Coins?')
    talk_start = os.clock()
    end
 
    if string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 3 then
       selfSay('See ya ' .. creatureGetName(cid) .. '.')
       focus = 0
       talk_start = 0
    end

   if string.find(msg, '(%a*)yes(%a*)') and focus == cid then
   sell(cid,item,1,price)
   talk_star = os.clock()

   elseif string.find(msg, '(%a*)no(%a*)') and focus == cid then
   selfSay('Sell for me please!')
   talk_star = os.clock()

    end

 end
 
 
 function onCreatureChangeOutfit(creature)
 
 end
 
 
 function onThink()
    if (os.clock() - talk_start) > 30 then
       if focus > 0 then
          selfSay('Next now!!')
       end
          focus = 0
    end

if focus == 0 then
cx, cy, cz = selfGetPosition()
randmove = math.random(1,20)
if randmove == 1 then
nx = cx + 1
end
if randmove == 2 then
nx = cx - 1
end
if randmove == 3 then
ny = cy + 1
end
if randmove == 4 then
ny = cy - 1
end
if randmove >= 5 then
nx = cx
ny = cy
end
moveToPosition(nx, ny, cz)
end
 end