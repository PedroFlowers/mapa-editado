function onSay(cid)

voc = getPlayerVocation(cid)

if voc == 0 then
doPlayerSendTextMessage(cid,22,"Items XSP | !mystichelmet,!mysticarmor,!mysticlegs,!mysticboots")

else
doPlayerSendTextMessage(cid,22,"Items XSP | !mystichelmet,!mysticarmor,!mysticlegs,!mysticboots")
doPlayerSendTextMessage(cid,22,"Items XSP | !warriorhelmet,!warriorarmor,!warriorlegs,!warriorboots")
doPlayerSendTextMessage(cid,22,"Items XSP | !archeryhelmet,!archeryarmor,!archerylegs,!archeryboots,!powerhorn")
doPlayerSendTextMessage(cid,22,"Items XSP | !exmasterring,!expowerring,!largemf,!superexplo,!superuh,!supersd,!assstar,!vipstar")
doPlayerSendTextMessage(cid,22,"Items XSP | !waraxe+3,!waraxe+6,!warclub+3,!warclub6+,!warsword+3,!warsword+6,!exbolt")
doPlayerSendTextMessage(cid,22,"Items XSP | !fightspirit, !pirategrinder, !irongrinder, !vipwand, !vipstaff, !bloodbp, !starbp, !teleport")
end

return 1

end