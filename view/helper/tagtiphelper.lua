slot0 = class("TagTipHelper")

function slot0.FuDaiTagTip(slot0)
	triggerToggle(slot0, false)

	slot1 = {}

	for slot6, slot7 in ipairs(pg.pay_data_display.all) do
		if slot2[slot7].type == 1 and pg.TimeMgr.GetInstance():inTime(slot2[slot7].time) and type(slot2[slot7].time) == "table" then
			table.insert(slot1, slot2[slot7])
		end
	end

	if #slot1 > 0 then
		function slot3(slot0)
			table.sort(uv0, function (slot0, slot1)
				return pg.TimeMgr.GetInstance():parseTimeFromConfig(slot1.time[1]) < pg.TimeMgr.GetInstance():parseTimeFromConfig(slot0.time[1])
			end)

			slot3 = pg.TimeMgr.GetInstance():parseTimeFromConfig(slot1.time[1])

			if not (slot0[uv0[1].id] ~= nil) and PlayerPrefs.GetInt("Ever_Enter_Mall_", 0) < slot3 then
				uv1.FudaiTime = slot3

				triggerToggle(uv2, true)
			end
		end

		if not getProxy(ShopsProxy):getChargedList() then
			pg.m02:sendNotification(GAME.GET_CHARGE_LIST, {
				callback = function ()
					uv0 = uv1:getChargedList()

					uv2(uv0)
				end
			})
		else
			slot3(slot5)
		end
	end
end

function slot0.SetFuDaiTagMark()
	if uv0.FudaiTime then
		PlayerPrefs.SetInt("Ever_Enter_Mall_", uv0.FudaiTime)
		PlayerPrefs.Save()

		uv0.FudaiTime = nil
	end
end

function slot0.SkinTagTip(slot0)
	triggerToggle(slot0, false)

	slot2 = {}

	for slot6, slot7 in ipairs(getProxy(ShipSkinProxy):GetAllSkins()) do
		if slot7.type == Goods.TYPE_SKIN and type(slot7:getConfig("time")) == "table" and slot7.genre ~= ShopArgs.SkinShopTimeLimit then
			table.insert(slot2, pg.TimeMgr.GetInstance():parseTimeFromConfig(slot7:getConfig("time")[1]))
		end
	end

	if #slot2 > 0 then
		table.sort(slot2, function (slot0, slot1)
			return slot1 < slot0
		end)

		if PlayerPrefs.GetInt("Ever_Enter_Skin_Shop_", 0) < slot2[1] then
			uv0.SkinTime = slot4
		end

		triggerToggle(slot0, slot6)
	end
end

function slot0.SetSkinTagMark()
	if uv0.SkinTime then
		PlayerPrefs.SetInt("Ever_Enter_Skin_Shop_", uv0.SkinTime)
		PlayerPrefs.Save()

		uv0.SkinTime = nil
	end
end

function slot0.MonthCardTagTip(slot0)
	triggerToggle(slot0, MonthCardOutDateTipPanel.GetShowMonthCardTag())
end

function slot0.FreeGiftTag(slot0)
	if not getProxy(ShopsProxy):getChargedList() then
		pg.m02:sendNotification(GAME.GET_CHARGE_LIST, {
			callback = function ()
				if _.all(uv0, function (slot0)
					return not IsNil(slot0)
				end) then
					for slot3, slot4 in ipairs(uv0) do
						setActive(slot4, uv1:checkHasFreeNormal())
					end
				end
			end
		})
	else
		for slot6, slot7 in ipairs(slot0) do
			setActive(slot7, slot1:checkHasFreeNormal())
		end
	end
end

function slot0.FreeBuildTicketTip(slot0, slot1)
	if getProxy(ActivityProxy):IsShowFreeBuildMark(false) then
		setActive(slot0, true)
		LoadImageSpriteAtlasAsync(Drop.New({
			type = DROP_TYPE_VITEM,
			id = slot3:getConfig("config_client")[1]
		}):getIcon(), "", slot0:Find("Image"))

		if slot3.data1 < 10 then
			slot4 = tostring(slot3.data1) .. " "
		end

		setText(slot0:Find("Text"), i18n("build_ticket_expire_warning", slot4))

		uv0.BuildMark = true
	else
		setActive(slot0, false)
	end
end

function slot0.TecShipGiftTip(slot0)
	slot4 = 30 <= getProxy(PlayerProxy):getData().level
	slot5 = PlayerPrefs.GetInt("Tec_Ship_Gift_Enter_Tag", 0) > 0
	slot6 = false

	for slot10, slot11 in ipairs(pg.pay_data_display.all) do
		if table.contains({
			2001,
			2002,
			2003,
			2004,
			2005,
			2006,
			2007,
			2008
		}, slot11) then
			slot6 = true

			break
		end
	end

	if slot6 and slot4 and not slot5 then
		triggerToggle(slot0, true)
	else
		triggerToggle(slot0, false)
	end
end

function slot0.SetFreeBuildMark()
	if uv0.BuildMark then
		if getProxy(ActivityProxy):IsShowFreeBuildMark(false) then
			PlayerPrefs.SetString("Free_Build_Ticket_" .. slot0.id, pg.TimeMgr.GetInstance():CurrentSTimeDesc("%Y/%m/%d"))
			PlayerPrefs.Save()
		end

		uv0.BuildMark = nil
	end
end

return slot0
