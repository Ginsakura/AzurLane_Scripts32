slot0 = class("FetchVoteRankCommand", pm.SimpleCommand)

function slot0.execute(slot0, slot1)
	slot2 = slot1:getBody()

	if getProxy(VoteProxy):RawGetTempVoteGroup(slot2.voteId) and slot5.id == slot3 then
		slot2.callback()

		return
	end

	pg.ConnectionMgr.GetInstance():Send(17203, {
		type = slot3
	}, 17204, function (slot0)
		getProxy(VoteProxy):AddTempVoteGroup(slot0, uv0)
		uv1()
	end)
end

return slot0
