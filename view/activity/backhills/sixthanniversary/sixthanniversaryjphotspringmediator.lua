slot0 = class("SixthAnniversaryJPHotSpringMediator", import("view.activity.BackHills.NewYearFestival.NewYearHotSpringMediator"))

function slot0.register(slot0)
	slot0:bind(uv0.UNLOCK_SLOT, function (slot0, slot1)
		slot2, slot3 = uv0.activity:GetUpgradeCost()

		MsgboxMediator.ShowMsgBox({
			type = MSGBOX_TYPE_NORMAL,
			content = i18n("jp6th_spring_tip1", slot3),
			contextSprites = {
				{
					name = "wenquanshoupai",
					path = "props/wenquanshoupai"
				}
			},
			onYes = function ()
				if uv0.activity:GetCoins() < uv1 then
					pg.TipsMgr.GetInstance():ShowTips(i18n("jp6th_spring_tip2"))

					return
				end

				uv0:sendNotification(GAME.ACTIVITY_OPERATION, {
					activity_id = uv2,
					cmd = SpringActivity.OPERATION_UNLOCK
				})
			end
		})
	end)
	slot0:bind(uv0.OPEN_CHUANWU, function (slot0, slot1, slot2)
		uv0:OnSelShips(slot1, slot2)
	end)

	slot1 = getProxy(ActivityProxy):getActivityByType(ActivityConst.ACTIVITY_TYPE_HOTSPRING)
	slot0.activity = slot1

	slot0.viewComponent:SetActivity(slot1)
	slot0:bind(uv0.OPEN_INFO, function ()
		uv0:addSubLayers(Context.New({
			mediator = NewYearHotSpringShipSelectMediator,
			viewComponent = NewYearHotSpringShipSelectLayer,
			data = {
				actId = uv1.id
			}
		}))
	end)
end

return slot0
