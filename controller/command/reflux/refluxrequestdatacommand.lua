slot0 = class("RefluxRequestDataCommand", pm.SimpleCommand)

function slot0.execute(slot0)
	pg.ConnectionMgr.GetInstance():Send(11751, {
		type = 0
	}, 11752, function (slot0)
		getProxy(RefluxProxy):setData(slot0)
	end)
end

return slot0
