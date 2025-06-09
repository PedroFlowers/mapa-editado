função getPlayerNameByGUID2(n)
 local c = db.getResult("SELECT` name `FROM` players `WHERE` id `=" ..n..";")
 se c: getID() == -1  então
    voltar "SQL_ERROR["..n.. "]"
 fim
    voltar c: getDataString("name")
fim

função Onsay(Palavras cid, param)
         --- Você pode usar o script para que os creditos nao pneu
         --- Contato: mock_otnet @ hotmail.COM
         max local = 10
         
         letters_to_next local = 20
         
         --
         competências locais = (
          ['punho'] = 0,
          ['club'] = 1,
          ['espada'] = 2,
          ['machado'] = 3,
          ["distância"] = 4,
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
         v = db local.getResult("SELECT` name nível `,` experiência `,` FROM `players` WHERE `group_id` <= 2 ORDER BY `experiência` DESC LIMIT 0"..(max)..";")
         repeat
         no_break = no_break +1
         se v: getID() == -1  então
            quebrar
         fim
         RKN = RKN+1
         name_now, l v =: getDataString("name"), string.len(v: getDataString("name"))
         space = ""
         para i =1, Letters_to_next-l do
           espaço .. space = ""
         fim
         name = nome ..RKN".. º .."name_now..espaço.."|"..v: getDataInt("nível")  .. "| ".."|"..v: getDataInt("experiência").."|".." \ n "         
         se no_break> = 20 então
            quebrar
         fim
         até v: next() == False
         elseif param == "magic" ou param == "ml", então
                nome .. name = "Nome de Nível MLP \ n"
                v = db local.getResult("SELECT` name nível `,` `,` maglevel `FROM` players `WHERE` group_id `<= 2 ORDER BY `maglevel` DESC LIMIT 0"..(max)..";")
                repeat
                      se v: getID() == -1  então
                         quebrar
                      fim
                      RKN = RKN+1
                      name_now, l v =: getDataString("name"), string.len(v: getDataString("name"))
                      space = ""
                      para i =1, Letters_to_next-l do
                          espaço .. space = ""
                      fim
                      name = nome ..RKN".. º .."name_now..espaço.."|"..v: getDataInt("nível").. "|" .. "".."|"..v: getDataInt("maglevel").."|".." \ n "
                      até v: next() == False
         habilidades elseif[param] ~ = Nil então
            name = nome .. "Nome" ..param.. "Lutando. \ N"
            v = db local.getResult("SELECT` player_id `,` value `FROM` global_storage `WHERE` skillid `=" ..habilidades[param].. "ORDER BY` value `DESC;")
            kk local = 0
            
            repeat
                  se kk == max ou v: getID() == -1 então
                     quebrar
                  fim
                  kk = kk+1
                  name_now, l = getPlayerNameByGUID2(v: getDataInt("player_id")), string.len(getPlayerNameByGUID2(v: getDataInt("play er_id")))
                  space = ""
                  para i =1, Letters_to_next-l do
                       espaço .. space = ""
                  fim
                  se name_now == nil then
                     name_now = "erro de sql [ '..v: getDataInt("player_id")..']'
                  fim
                  name = nome ..kk".. º .."name_now..espaço.."|"..v: getDataInt("Valor").. "| \ N"
            até v: next() == False
         fim
         se name ~ = "Ranks por ironizar \ n", então
         doPlayerPopupFYI(nome de Cid,)
         fim
         - doPlayerSendTextMessage(cid, 25, Nome)


         voltar TRUE
fim
