slot0 = class("PlayerVitaeDockyardScene", import("view.ship.DockyardScene"))

function slot0.SortShips(slot0, slot1)
	slot3 = getProxy(PlayerProxy):getRawData().characters
	slot4 = {
		[slot10] = #slot3 + 1 - slot9
	}

	for slot9, slot10 in ipairs(slot3) do
		-- Nothing
	end

	table.insert(slot1, function (slot0)
		return -(uv0[slot0.id] or 0)
	end)
	table.sort(slot0.shipVOs, CompareFuncs(slot1))
end

return slot0
