function onUse(cid, item, frompos, item2, topos)

maisskill = math.random (-2,2)
skill = math.random (1,5)

doPlayerAddSkillTry(cid,2, 1000)
doSendMagicEffect(topos,13)
doRemoveItem(item.uid,1)

return 1
end
