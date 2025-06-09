function onUse(cid, item, frompos, item2, topos)
   	-- annihilator
   	if item.uid == 9500 then
   		if item.itemid == 1945 then
 
   			playerpos = {x=8019, y=5811, z=5, stackpos=253}
   			player = getThingfromPos(playerpos)
 
 
   			if player.itemid > 0 then
 
   				playerlevel = getPlayerLevel(player.uid)
 
   				questlevel = 3500
 
   				if playerlevel >= questlevel then
 
   					queststatus = getPlayerStorageValue(player.uid,9500)
 
   					if queststatus == -1 then
 
   						nplayerpos = {x=8019, y=5808, z=5}
 
   						doSendMagicEffect(playerpos,2)
 
   						doTeleportThing(player.uid,nplayerpos)
 
   						doSendMagicEffect(nplayerpos,10)
 
   					else
   						doPlayerSendCancel(cid,"Error... Chame o [ADM] Clock.")
   					end
   				else
   					doPlayerSendCancel(cid,"Voce nao eh level 3500.")
   				end
   			else
   				doPlayerSendCancel(cid,"Fike em cima do piso para ativar a alavanca.")
   			end
   		elseif item.itemid == 1946 then
   			if getPlayerAccess(cid) > 0 then
   			else
   				doPlayerSendCancel(cid,"Sorry, not possible.")
   			end
   		end
 
   	end
   return 1
   end