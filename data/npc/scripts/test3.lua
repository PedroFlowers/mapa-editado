stime = 47 -- Tempo entre os anúncios (em segundos).
time = os.clock()
function onThink()
if (time + stime) < os.clock() then
time = os.clock()
selfSay("/bc green NOVAS VOC RYOTO LVL 20K, DARK RYOTO LVL 30K, POWER SAYDEN LVL 40K, RYDEN LVL 50K ANCIENT 60K HERO ANCIENT 70 E A ULTIMA E 80K ZEUS, BOM UP BY: Diorgenes And CICI :)!")
end
end