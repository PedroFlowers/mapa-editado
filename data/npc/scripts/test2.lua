stime = 40 -- Tempo entre os anúncios (em segundos).
time = os.clock()
function onThink()
if (time + stime) < os.clock() then
time = os.clock()
selfSay("/bc green Quest Imformation: (Valan level 500 todas as vocation passa), (Deus level 1200 apenas valans passam), (Ultimate level 2300 apenas deuses passam), (Final level 3500 apenas ultimates passam) Bom Jogo!")
end
end