local focus = 0
local talk_start = 0
local target = 0
local following = false
local attacking = false

stime = 20 -- Tempo entre as falas do npc (em segundos)
time = os.clock()
function onThink()
if (time + stime) < os.clock() then
time = os.clock()
var = math.random(1,5)
if var == 1 then
selfSay("/bc white Exemplo")
end
end