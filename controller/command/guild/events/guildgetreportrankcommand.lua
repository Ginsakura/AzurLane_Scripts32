slot0 = class("GuildGetReportRankCommand", pm.SimpleCommand)

function slot0.execute(slot0, slot1)
	if getProxy(GuildProxy):GetReportRankList(slot1:getBody().id) then
		slot0:sendNotification(GAME.GET_GUILD_REPORT_RANK_DONE, {
			ranks = slot5
		})
	else
		pg.ConnectionMgr.GetInstance():Send(61037, {
			id = slot3
		}, 61038, function (slot0)
			slot2 = {}

			for slot6, slot7 in ipairs(slot0.list) do
				if uv0:getRawData():getMemberById(slot7.user_id) then
					table.insert(slot2, {
						name = slot8.name,
						damage = slot7.damage
					})
				end
			end

			table.sort(slot2, function (slot0, slot1)
				return slot1.damage < slot0.damage
			end)
			uv0:SetReportRankList(uv1, slot2)
			uv2:sendNotification(GAME.GET_GUILD_REPORT_RANK_DONE, {
				ranks = slot2
			})
		end)
	end
end

return slot0
