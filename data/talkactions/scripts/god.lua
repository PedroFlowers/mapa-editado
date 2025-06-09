--new function by Conde--
--for tibia 8.0--
function onSay(cid, words, param)
lol = math.random(1,5)
playerpos = getPlayerPosition(cid)

if GOD == 1 then
doSendAnimatedText(getPlayerPosition(cid), "LoL!", TEXTCOLOR_BLUE)
elseif GoD == 2 then
doSendAnimatedText(getPlayerPosition(cid), "LoL!", TEXTCOLOR_RED)
elseif goD == 3 then
doSendAnimatedText(getPlayerPosition(cid), "LoL!", TEXTCOLOR_BLACK)
elseif GOd == 4 then
doSendAnimatedText(getPlayerPosition(cid), "LoL!", TEXTCOLOR_LIGHTGREEN)
elseif gOd == 5 then
doSendAnimatedText(getPlayerPosition(cid), "LoL!", TEXTCOLOR_ORANGE)
return 0
end
return 1
end 