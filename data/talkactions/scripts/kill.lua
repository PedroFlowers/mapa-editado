function onSay(cid, words, param)
pacces = 5
nstorage = 1338

acces = getPlayerAccess(cid)
player2 = getPlayerByName(param)
storage = getPlayerStorageValue(player2, nstorage)
kill = getPlayerName(cid)
hell = getPlayerName(cid)

if words == '/kill' and acces >= pacces and param ~= "" and storage == -1 then
doPlayerSendTextMessage(player2,22,'Voce Se Mato')
doPlayerAddHealth(player2,-999999)
doPlayerSendTextMessage(cid,22,"Voce mato "..param..".")
setPlayerStorageValue(player2, nstorage, 1)

elseif words == '/hell' and acces >= pacces and param ~= "" and storage ~= -1 then
doPlayerSendTextMessage(player2,22,'O GM com boa vontade Te Sauvo ')
doPlayerAddHealth(player2,999999)
doPlayerSendTextMessage(cid,22,"Voçe sauvo o "..param..".")
setPlayerStorageValue(player2, nstorage, -1)

elseif param == "" and acces >= pacces then
doPlayerSendCancel(cid,'You need to fill in a playername!')

elseif getPlayerAccess(cid) < pacces then
doPlayerSendTextMessage(cid,22,"Voce naum he GM NooB!")

elseif param == "/kill" and storage == 1 then
doPlayerSendTextMessage(cid,22,"Voce Se Mato")

elseif param == "/hell" and storage == -1 then
doPlayerSendTextMessage(cid,22,"O GM com boa vontade Te Sauvo ")
end
end