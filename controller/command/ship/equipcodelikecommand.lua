slot0 = class("EquipCodeLikeCommand", pm.SimpleCommand)

function slot0.execute(slot0, slot1)
	slot2 = slot1:getBody()
	slot3 = slot2.groupId
	slot7 = underscore.detect(getProxy(CollectionProxy):getShipGroup(slot3):getEquipCodes(), function (slot0)
		return slot0.id == uv0
	end)

	pg.ConnectionMgr.GetInstance():Send(17605, {
		shipgroup = slot3,
		shareid = slot2.shareId
	}, 17606, function (slot0)
		if slot0.result == 0 then
			uv0.afterLike = true
			uv0.like = uv0.like + 1

			uv1:updateShipGroup(uv2)
			uv3:sendNotification(GAME.EQUIP_CODE_LIKE_DONE, {
				like = true,
				shareId = uv4
			})
			pg.TipsMgr.GetInstance():ShowTips(i18n("equipcode_like_success"))
		elseif slot0.result == 7 then
			uv0.afterLike = true

			uv1:updateShipGroup(uv2)
			uv3:sendNotification(GAME.EQUIP_CODE_LIKE_DONE, {
				shareId = uv4
			})
			pg.TipsMgr.GetInstance():ShowTips(i18n("equipcode_like_limited"))
		else
			pg.TipsMgr.GetInstance():ShowTips(errorTip("", slot0.result))
		end
	end)
end

return slot0
