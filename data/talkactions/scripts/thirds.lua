function onSay(cid)

voc = getPlayerVocation(cid)

if voc == 0 then
doPlayerSendTextMessage(cid,22,"")

else
doPlayerSendTextMessage(cid,22,"Para Adquirir 3� Aol Vc compra o colar no npc Isolda vc pode trocar pelo 3 Aol no npc que h� la nos White Balrog no final da cave vc faz a Fus�o dos itens..")
end

return 1

end