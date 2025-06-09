stime = 55 -- Tempo entre os anúncios (em segundos).
time = os.clock()
function onThink()
if (time + stime) < os.clock() then
time = os.clock()
selfSay("/bc green  FALEM /xsp PARA SABER OS ITEMS PARA INICIANTES FALEM /ancient ITEMS EDITADO E /titan PARA SABER OS ITEMS MAIS FODA DO OT By:Diorgenes And Cici")
end
end