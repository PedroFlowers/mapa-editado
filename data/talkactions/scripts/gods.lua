local colors =
{
TEXTCOLOR_BLUE,
TEXTCOLOR_LIGHTBLUE,
TEXTCOLOR_LIGHTGREEN,
TEXTCOLOR_ORANGE,
TEXTCOLOR_YELLOW,
TEXTCOLOR_WHITE_EXP
}
function onSay(cid, words, param)
local playerpos = getPlayerPosition(cid)
local random = math.random(1, #colors)

if math.max(math.abs(playerpos.x-23), math.abs(playerpos.y-30)) < 9999 then
doSendAnimatedText(playerpos, "CICI", colors[random])
return 0
end
return 1
end
