fun��o getPlayerNameByGUID2(n)
 local c = db.getResult("SELECT` name `FROM` players `WHERE` id `=" ..n..";")
 se c: getID() == -1  ent�o
    voltar "SQL_ERROR["..n.. "]"
 fim
    voltar c: getDataString("name")
fim

fun��o Onsay(Palavras cid, param)
         --- Voc� pode usar o script para que os creditos nao pneu
         --- Contato: mock_otnet @ hotmail.COM
         max local = 10
         
         letters_to_next local = 20
         
         --
         compet�ncias locais = (
          ['punho'] = 0,
          ['club'] = 1,
          ['espada'] = 2,
          ['machado'] = 3,
          ["dist�ncia"] = 4,
          ['blindagem'] = 5,
          ['pescar'] = 6,
          - Outros nomes
          ['dist'] = 4,
          ['escudo'] = 5,
          ['peixe'] = 6,
         )
         name_now local
         nome local = "Ranks por ironizar \ n"
         RKN local = 0
         no_break local = 0
         param = string.menor(param)
         dofile("config.lua")
         se param == "" ou param == "level" e ( param ~ = "magia" e param == "ml") e habilidades[param] == Nil then
         nome .. name = "Nome Level Exp \ n"
         v = db local.getResult("SELECT` name n�vel `,` experi�ncia `,` FROM `players` WHERE `group_id` <= 2 ORDER BY `experi�ncia` DESC LIMIT 0"..(max)..";")
         repeat
         no_break = no_break +1
         se v: getID() == -1  ent�o
            quebrar
         fim
         RKN = RKN+1
         name_now, l v =: getDataString("name"), string.len(v: getDataString("name"))
         space = ""
         para i =1, Letters_to_next-l do
           espa�o .. space = ""
         fim
         name = nome ..RKN".. � .."name_now..espa�o.."|"..v: getDataInt("n�vel")  .. "| ".."|"..v: getDataInt("experi�ncia").."|".." \ n "         
         se no_break> = 20 ent�o
            quebrar
         fim
         at� v: next() == False
         elseif param == "magic" ou param == "ml", ent�o
                nome .. name = "Nome de N�vel MLP \ n"
                v = db local.getResult("SELECT` name n�vel `,` `,` maglevel `FROM` players `WHERE` group_id `<= 2 ORDER BY `maglevel` DESC LIMIT 0"..(max)..";")
                repeat
                      se v: getID() == -1  ent�o
                         quebrar
                      fim
                      RKN = RKN+1
                      name_now, l v =: getDataString("name"), string.len(v: getDataString("name"))
                      space = ""
                      para i =1, Letters_to_next-l do
                          espa�o .. space = ""
                      fim
                      name = nome ..RKN".. � .."name_now..espa�o.."|"..v: getDataInt("n�vel").. "|" .. "".."|"..v: getDataInt("maglevel").."|".." \ n "
                      at� v: next() == False
         habilidades elseif[param] ~ = Nil ent�o
            name = nome .. "Nome" ..param.. "Lutando. \ N"
            v = db local.getResult("SELECT` player_id `,` value `FROM` global_storage `WHERE` skillid `=" ..habilidades[param].. "ORDER BY` value `DESC;")
            kk local = 0
            
            repeat
                  se kk == max ou v: getID() == -1 ent�o
                     quebrar
                  fim
                  kk = kk+1
                  name_now, l = getPlayerNameByGUID2(v: getDataInt("player_id")), string.len(getPlayerNameByGUID2(v: getDataInt("play er_id")))
                  space = ""
                  para i =1, Letters_to_next-l do
                       espa�o .. space = ""
                  fim
                  se name_now == nil then
                     name_now = "erro de sql [ '..v: getDataInt("player_id")..']'
                  fim
                  name = nome ..kk".. � .."name_now..espa�o.."|"..v: getDataInt("Valor").. "| \ N"
            at� v: next() == False
         fim
         se name ~ = "Ranks por ironizar \ n", ent�o
         doPlayerPopupFYI(nome de Cid,)
         fim
         - doPlayerSendTextMessage(cid, 25, Nome)


         voltar TRUE
fim
