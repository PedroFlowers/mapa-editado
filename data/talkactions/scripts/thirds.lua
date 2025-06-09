function onSay(cid)

voc = getPlayerVocation(cid)

if voc == 0 then
doPlayerSendTextMessage(cid,22,"")

else
doPlayerSendTextMessage(cid,22,"Para Adquirir 3º Aol Vc compra o colar no npc Isolda vc pode trocar pelo 3 Aol no npc que há la nos White Balrog no final da cave vc faz a Fusão dos itens..")
end

return 1

end