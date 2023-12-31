slot0 = class("MetaPTDataRequestCommand", pm.SimpleCommand)

function slot0.execute(slot0, slot1)
	slot2 = getProxy(MetaCharacterProxy)
	slot4 = {}

	if slot1:getBody().isAll then
		for slot10, slot11 in ipairs(slot2:getMetaProgressVOList()) do
			if slot11:isPtType() and (slot11:isInAct() or slot11:isInArchive()) then
				table.insert(slot4, slot11.id)
			end
		end
	end

	print("34001 meta pt request:", table.concat(slot4, ","))
	pg.ConnectionMgr.GetInstance():Send(34001, {
		group_id = slot4
	}, 34002, function (slot0)
		print("34002 meta pt request done:", #uv0)
		uv1:setAllProgressPTData(slot0.meta_ship_list)
	end)
end

return slot0
