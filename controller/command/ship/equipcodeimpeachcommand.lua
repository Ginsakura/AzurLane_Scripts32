slot0 = class("EquipCodeImpeachCommand", pm.SimpleCommand)

function slot0.execute(slot0, slot1)
	slot2 = slot1:getBody()

	pg.ConnectionMgr.GetInstance():Send(17607, {
		shipgroup = slot2.groupId,
		shareid = slot2.shareId,
		report_type = slot2.type
	}, 17608, function (slot0)
		if slot0.result == 0 then
			pg.m02:sendNotification(GAME.EQUIP_CODE_IMPEACH_DONE)
			pg.TipsMgr.GetInstance():ShowTips(i18n("equipcode_dislike_success"))
		elseif slot0.result == -1 then
			pg.TipsMgr.GetInstance():ShowTips(i18n("equipcode_report_warning"))
		else
			pg.TipsMgr.GetInstance():ShowTips(errorTip("", slot0.result))
		end
	end)
end

return slot0
