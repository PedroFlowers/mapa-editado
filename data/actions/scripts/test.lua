function onUse(cid, item, frompos, item2, topos)
if item.uid == 2160 then
  queststatus = getPlayerStorageValue(cid,2160)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a crystal coin.")
   item_uid = doPlayerAddItem(cid,2160,1)
   setPlayerStorageValue(cid,2160,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end