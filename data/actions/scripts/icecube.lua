function onUse(cid, item, frompos, item2, topos)

if item2.itemid == 7441 then
doTransformItem(item2.uid,7442)
doSendMagicEffect(topos,2)

end

if item2.itemid == 7442 then
doTransformItem(item2.uid,7444)
doSendMagicEffect(topos,2)

end

if item2.itemid == 7444 then
doTransformItem(item2.uid,7445)
doSendMagicEffect(topos,2)

end

if item2.itemid == 7445 then
doTransformItem(item2.uid,7446)
doSendMagicEffect(topos,2)

end

if item2.itemid == 7446 then
doRemoveItem(item2.uid,1)
doSendMagicEffect(topos,2)

end
end 