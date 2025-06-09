stime = 45 -- Tempo entre os anúncios (em segundos).
time = os.clock()
function onThink()
if (time + stime) < os.clock() then
time = os.clock()
selfSay("/bc green QUEM FIZER AS QUEST DE NOVAS VOC CRIE WYZARD E USSE O SPIRIT PARA N OCORRE BUGS BY:Diorgenes And CICI")
end
end