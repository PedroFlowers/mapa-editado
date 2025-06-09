function onStepIn(cid, item, pos)if item.itemid =
= 6580 or item.itemid =
= 6581 or item.itemid =
= 6582 or item.itemid =
= 6583 or item.itemid =
= 6584 or item.itemid =
= 6585 or item.itemid =
= 6586 or item.itemid =
= 6587 or item.itemid =
= 6588 or item.itemid =
= 6589 or item.itemid =
= 6590 or item.itemid =
= 6591 or item.itemid =
= 6592 or item.itemid =
= 6593 thendoTransformItem(item.uid, item.itemid+15)elseif item.itemid =
= 670 thendoTransformItem(item.uid, 6594)endendfunction onStepOut(cid, item, pos)if item.itemid =
= 6595 or item.itemid =
= 6596 or item.itemid =
= 6597 or item.itemid =
= 6598 or item.itemid =
= 6599 or item.itemid =
= 6600 or item.itemid =
= 6601 or item.itemid =
= 6602 or item.itemid =
= 6603 or item.itemid =
= 6604 or item.itemid == 6605 or item.itemid == 6606 or item.itemid == 6607 or item.itemid == 6608 thendoTransformItem(item.uid, item.itemid-15)elseif item.itemid == 6594 thendoTransformItem(item.uid, 670)
endend