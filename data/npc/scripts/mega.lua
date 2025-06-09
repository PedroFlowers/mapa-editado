focus = 0
talk_start = 0
target = 0
following = false
attacking = false
vez = 0
nome = ''
numer = ''
nonum = ''
winner = ''
ganhou = ''



function onThingMove(creature, thing, oldpos, oldstackpos)

end


function onCreatureAppear(creature)

end


function onCreatureDisappear(cid, pos)
if focus == cid then
selfSay('Flw mal educado.')
focus = 0
talk_start = 0
end
end


function onCreatureTurn(creature)

end
function msgcontains(txt, str)
return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end


function onCreatureSay(cid, type, msg)
nonum = msg
msg = string.lower(msg)



if (msgcontains(msg, 'hi') and focus == 0) and getDistanceToCreature(cid) < 3 then

selfSay('Ae vei, qué aposta na mega cena pra jogar fale sim? ou saber quem foi o ultimo ganhador fale ganhador? sao 500 gp e vc pode ganhar 1 milhão de gps!!')

vez = 0
nome = ''
numer = ''
myaccnumber = 0
seksik = 0
focus = cid
talk_start = os.clock()


elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 3 then
selfSay('Please wait')


elseif focus == cid then
talk_start = os.clock()





if msgcontains(msg, 'sim') or msgcontains(msg, 'jogar') then
if pay(cid,500) then

selfSay('Fale seu nome igual nome do seu char, por favor.')
vez = 1

else

selfSay('Sem dinhero né vagabundo, VAZAA!')
focus = 0
vez = 0
nome = ''
numer = ''
myaccnumber = 0
seksik = ''
talk_start = 0


end


elseif msgcontains(msg, 'fuck') then
 
selfSay('/kick ' .. creatureGetName(cid) .. '')


elseif string.find(msg, '(%a*)bye(%a*)') and getDistanceToCreature(cid) < 3 then
selfSay('Flw, ' .. creatureGetName(cid) .. '!')
focus = 0
vez = 0
nome = ''
numer = ''
myaccnumber = 0
seksik = ''
talk_start = 0








elseif (msgcontains(msg, 'ganhador')  and focus == cid) then


file = io.open("data/megacena/ganhador.lua" , "r")
winner = file:read()


selfSay('O ganhador foi '..winner..', Se voce quer jogar tambem custa 1500gp, para jogar fale jogar.')


file:close()






vez = 0
nome = ''
numer = ''
myaccnumber = 0
seksik = 0
focus = cid
talk_start = os.clock()







elseif vez == 1 then
nome = nonum
vez = 2

selfSay('blz manda um numero de 1 a 2000.')






elseif vez == 2 then

numer = nonum





if io.open("./data/megacena/"..numer..".xml", "r") == nil then


selfSay('Certinho veio, o sorteio é a cada 3 horas apos o ultimo sorteio. Boa Sorte!')
num = io.open("./data/megacena/"..numer..".xml", "w")
num:write(""..nome.."")
num:close()
focus = 0
vez = 0
nome = ''
numer = ''
myaccnumber = 0
seksik = ''
talk_start = 0

else
selfSay('Esse numero ja tem veiu... fala outro numero de 1 a 2000.')
end


end
end
end


function onCreatureChangeOutfit(creature)

end


function onThink()
   
if (os.clock() - talk_start) > 30 then
       if focus > 0 then
          selfSay('Proximo plxx...')
       end
      focus = 0
    end
   if focus ~= 0 then
      if getDistanceToCreature(focus) > 3 then
         selfSay('flw mal educado.')
         focus = 0
end
   end
end 